# -*- coding: utf-8 -*-
##############################################################################
#
#    Copyright (C) 2011 Enapps LTD (<http://www.enapps.co.uk>).
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as
#    published by the Free Software Foundation, either version 3 of the
#    License, or (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
##############################################################################

from osv import osv
from osv import fields
import base64
import csv
from datetime import datetime, date
from cStringIO import StringIO
import tempfile
import time
import xlrd
import pdb

_TASK_STATE = [('open', 'Novo'),('done', 'Importado'), ('cancelled', 'Cancelado')]

def unicode_csv_reader(unicode_csv_data, dialect=csv.excel, charset='utf-8', **kwargs):
    # csv.py doesn't do Unicode; encode temporarily as UTF-8:
    #csv_reader = csv.reader(utf_8_encoder(unicode_csv_data, charset),
    #                        dialect=dialect, **kwargs)
    #for row in csv_reader:
        # decode UTF-8 back to Unicode, cell by cell:
    #    yield [unicode(cell, charset) for cell in row]
    print 'aqui'


def utf_8_encoder(unicode_csv_data, charset):
    #for line in unicode_csv_data:
    #    yield line
        #yield line.decode(charset).encode('utf-8', 'ignore')
    print 'aqui'


class ea_import_chain(osv.osv):

    _name = 'ea_import.chain'
    _columns = {
        'name': fields.char('Descrição', size=256, required=True),
        'input_file': fields.binary('Arquivo', required=False),
        'user_id': fields.many2one('res.users', 'Inserido por', track_visibility='onchange'),
        'header': fields.boolean('Header'),
        'state': fields.selection(_TASK_STATE, 'Situacao', required=True,),
        'link_ids': fields.one2many('ea_import.chain.link', 'chain_id', 'Links', ),
        'result_ids': fields.one2many('ea_import.chain.result', 'chain_id', 'Import Results', ),
        'separator': fields.selection([
            (",", '<,> - Coma'),
            (";", '<;> - Semicolon'),
            ("\t", '<TAB> - Tab'),
            (" ", '<SPACE> - Space'),
        ], 'Separator', required=True),
        'delimiter': fields.selection([
            ("'", '<\'> - Single quotation mark'),
            ('"', '<"> - Double quotation mark'),
            (None, 'None'),
        ], 'Delimiter', ),
        'charset': fields.selection([
            ('us-ascii', 'US-ASCII'),
            ('utf-7', 'Unicode (UTF-7)'),
            ('utf-8', 'Unicode (UTF-8)'),
            ('utf-16', 'Unicode (UTF-16)'),
            ('windows-1250', 'Central European (Windows 1252)'),
            ('windows-1251', 'Cyrillic (Windows 1251)'),
            ('iso-8859-1', 'Western European (ISO)'),
            ('iso-8859-15', 'Latin 9 (ISO)'),
        ], 'Encoding', required=True)
        }

    _defaults = {
        'separator': ",",
        'charset': 'utf-8',
        'delimiter': None,
        'state': 'open',
        'user_id': lambda obj, cr, uid, context: uid,
        'name':'/',
    }

    def set_done(self, cr, uid, ids, context=None):
        return self.write(cr, uid, ids, {'state':'done'}, context=context)

    def set_open(self, cr, uid, ids, context=None):
        return self.write(cr, uid, ids, {'state':'open'}, context=context)

    def set_cancelled(self, cr, uid, ids, context=None):
        return self.write(cr, uid, ids, {'state':'cancelled'}, context=context)

    def import_to_xls(self, cr, uid, ids, context={}):
        #pdb.set_trace()
        exame = str(uid)
        context['result_ids'] = []
        result_pool = self.pool.get('ea_import.chain.result')
        for chain in self.browse(cr, uid, ids, context=context):
            file_path = tempfile.gettempdir()+'/file.xls'
            data = chain.input_file
            f = open(file_path,'wb')
            f.write(data.decode('base64'))
            f.close()
            #csv_reader=unicode_csv_reader(StringIO(base64.b64decode(chain.input_file)),delimiter=str(";"),quoting=(not
            book = xlrd.open_workbook(file_path)
            # print number of sheets
            #print book.nsheets
            #print book.sheet_names()
            first_sheet = book.sheet_by_index(0)
            #row = first_sheet.row(0)  # 1st row
            #print first_sheet.row_values(0)
            #cell = first_sheet.cell(0,0)
            #print cell
            #print cell.value
            #print first_sheet.row_slice(rowx=0,start_colx=0,end_colx=2)
            apont_obj = self.pool.get('op.exam')
            for rownum in range(first_sheet.nrows):                                                                                                       
                rowValues = first_sheet.row_values(rownum)
                exame = rowValues[0]                                                                                                                     
                aluno = rowValues[1]
                numero = rowValues[2]  
                nota = rowValues[3]  
                falta = rowValues[4]  
                print exame, aluno, numero, nota, falta
                
                if rownum == 1:
                    sql_req= """
                        SELECT c.id, c.course_id, c.classroom_id 
                        FROM op_exam_session c
                        WHERE
                        (c.name = '%s')
                        """ % (exame)

                    cr.execute(sql_req)
                    sql_res = cr.dictfetchone()

                    if sql_res:
                        session_id = sql_res['id']
                        course_id  = sql_res['course_id']
                        classroom_id  = sql_res['classroom_id']
                    if not sql_res:
                        strmsg = 'Exame : %s ' %(exame)
                        raise osv.except_osv(strmsg,' nao localizado no sistema.')
                if rownum > 0:
                    sql_usu= """
                        SELECT u.id, op.id as exam 
                        FROM op_exam op, op_student u
                        WHERE
                        (op.student_id = u.id)
                        AND 
                        (op.session_id = %s)
                        AND
                        (u.roll_number = '%s')
                        AND
                        (u.course_id = '%s')
                        AND 
                        (u.classroom_id = '%s')
                        """ % (session_id, numero, course_id, classroom_id)
                    cr.execute(sql_usu)
                    sql_resusu = cr.dictfetchone()
               
                    #pdb.set_trace()
                    if sql_resusu:
                        user_id = sql_resusu['id']
                        exam_id = sql_resusu['exam']

                    else:
                        strmsg = 'Aluno : %s-%s ' % (numero,aluno,)
                        raise osv.except_osv(strmsg,'nao localizado o aluno com este numero.') 
                        user_id = 0
                    #work = self.pool.get('project.task.work')
                    vals = {'session_id': session_id,
                        'student_id': user_id,
                        'avaliacao': nota,
                        'falta': falta,
                    }
                    #apont_obj.create(cr, uid, vals, context)
                    apont_obj.write(cr, uid, exam_id, vals)
        return self.write(cr, uid, ids, {'name': exame,'state':'done'}, context=context)


    def import_to_db(self, cr, uid, ids, context={}):
        print 'aqui'

    '''    
    def import_to_db(self, cr, uid, ids, context={}):

        context['result_ids'] = []
        result_pool = self.pool.get('ea_import.chain.result')
        for chain in self.browse(cr, uid, ids, context=context):
            csv_reader=unicode_csv_reader(StringIO(base64.b64decode(chain.input_file)),delimiter=str(";"),quoting=(not
chain.delimiter and csv.QUOTE_NONE) or csv.QUOTE_MINIMAL,quotechar=chain.delimiter and str("'") or None, charset=chain.charset)

            strstate = 'normal'
            if chain.state == 'done':
               strstate = 'Importado'

            if chain.state == 'cancelled':
               strstate = 'Suspenso'

            strmsg = 'Situacao do arquivo : %s ' % (strstate,)
            if chain.state in ('done','cancelled'):
                raise osv.except_osv(strmsg,'Ative o novamente para poder importar.')

            #if chain.header:
            #    csv_reader.next()
            result_ids = {}

            #'student_id': fields.many2one('op.student',string='Student', required=True),
            #'session_id':fields.many2one('op.exam.session','Exam Session', required=True, select=True, readonly=True),
            #'avaliacao':fields.float('Avaliação'),
            #'falta':fields.float('Faltas')
            
            #apont_obj = self.pool.get('project.task.work')
            apont_obj = self.pool.get('op.exam')

            #return res
            primeira_linha = 0
            for row in csv_reader:
                if primeira_linha == 0:
                    primeira_linha = 1
                else:
                    if primeira_linha == 1:
                        sql_req= """
                            SELECT c.id, c.course_id, c.classroom_id 
                            FROM op_exam_session c
                            WHERE
                            (c.name = '%s')
                            """ % (row[0])

                        cr.execute(sql_req)
                        sql_res = cr.dictfetchone()

                        if sql_res:
                            session_id = sql_res['id']
                            course_id  = sql_res['course_id']
                            classroom_id  = sql_res['classroom_id']
                        if not sql_res:
                            strmsg = 'Exame : %s '
                            raise osv.except_osv(strmsg,' nao localizado no sistema.')
                        primeira_linha = 2
                
                    #csv_reader.next()
                    # for row in csv_reader:
                    if len(row)>0:
                        sql_usu= """
                            SELECT u.id, op.id as exam 
                            FROM op_exam op, op_student u
                            WHERE
                            (op.student_id = u.id)
                            AND 
                            (op.session_id = %s)
                            AND
                            (u.roll_number = '%s')
                            AND
                            (u.course_id = '%s')
                            AND 
                            (u.classroom_id = '%s')
                            """ % (session_id, row[2], course_id, classroom_id)
                        cr.execute(sql_usu)
                        sql_resusu = cr.dictfetchone()
               
                        #pdb.set_trace()
                        if sql_resusu:
                            user_id = sql_resusu['id']
                            exam_id = sql_resusu['exam']

                        else:
                            strmsg = 'Aluno : %s ' % (row[0],)
                            raise osv.except_osv(strmsg,'nao localizado o aluno com este numero.') 
                            user_id = 0
                    #work = self.pool.get('project.task.work')
                    vals = {'session_id': session_id,
                        'student_id': user_id,
                        'avaliacao': row[3],
                        'falta': row[4],
                    }
                    #apont_obj.create(cr, uid, vals, context)
                    apont_obj.write(cr, uid, exam_id, vals)


                #pdb.set_trace()
                #for [nada,nome,os,categoria] in csv_reader:
                #print 'nada=%s | nome=%s | os=%s | categoria=%s' %(nada,nome,os,categoria)

        #return True:w
        return self.write(cr, uid, ids, {'state':'done'}, context=context)
    '''

ea_import_chain()

# vim:expandtab:smartindent:tabstop=4:softtabstop=4:shiftwidth=4:
