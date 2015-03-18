# -*- coding: utf-8 -*-
#/#############################################################################
#
#    Tech-Receptives Solutions Pvt. Ltd.
#    Copyright (C) 2004-TODAY Tech-Receptives(<http://www.tech-receptives.com>).
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
#/#############################################################################
from osv import osv, fields
from datetime import datetime
from openerp import tools
from openerp.tools.translate import _
import time
import pdb

class op_exam(osv.osv):
    _name = 'op.exam'

    _columns = {
            'student_id': fields.many2one('op.student',string='Estudante', required=True),
            'roll_number': fields.related('student_id', 'roll_number', type='char', string='Número'),
            'session_id':fields.many2one('op.exam.session','Exame', required=True, select=True, readonly=True),
            'avaliacao':fields.float('Avaliação'),
            'falta':fields.float('Faltas'),
            'classroom_id':fields.many2one('op.classroom',string='Período'),
    }

    #string='Student',domain="[('ccourse_id','=',course_id)]"), required=True),

    def onchange_student_id(self, cr, uid, ids, student_id, classroom_id, context=None):
        v = {}
        sala = self.pool.get('op.classroom').browse(cr, uid, classroom_id, context=context)
        for alunos in self.pool.get('op.classroom.aluno').search(cr,uid,[('aluno_id', '=', sala.aluno_ids)], context=context):
            v['aluno_id'] = alunos.student_id
        return {'value': v}

    def create(self, cr, uid, vals, context=None):
        class_id = self.pool.get('op.exam.session').browse(cr, uid, vals['session_id'], context=context)
        vals['classroom_id'] = class_id.classroom_id.id
        ex_id = super(op_exam, self).create(cr, uid, vals, context)
        return ex_id

op_exam()

class op_exam_session(osv.osv):
    _name = 'op.exam.session'
    _description = 'Exam Session'


    _columns = {
            'name': fields.char(size=64, string='Exame', required=True),
            'course_id': fields.many2one('op.course', string='Turma', required=True),
            'state': fields.selection([('n','Novo'),('a', 'Andamento'),('d','Encerrado'),('c','Cancelado')], string='Situação', select=True, readonly=True),
            'classroom_id':fields.many2one('op.classroom',string='Período', required=True),
            'type_id': fields.many2one('op.exam.type', string='Disciplina', required=True),
            'exam_ids':fields.one2many('op.exam','session_id','Exames'),
            'partner_id': fields.many2one('res.users', 'Professor', required=True, select=True),
            'user_id': fields.many2one('res.users', 'Usuário', select=True, track_visibility='onchange'),
            'data_exame': fields.date(string='Data exame', required=True),
            'aulas_dadas':fields.float('Aulas dadas'),
            'bimestre': fields.selection([('01','1. Bim.'),('02','2. Bim.'),('03','3. Bim'),('4','04. Bim.'),('05','Outros')], string='Período', select=True, required=True),
    }

    _defaults = {
                 'user_id': lambda obj, cr, uid, context: uid,
                 'partner_id': lambda obj, cr, uid, context: uid,
                 'state':'n',
                 'name':'/',
                 'data_exame': lambda *a: time.strftime('%Y-%m-%d')
    }
    
    def create(self, cr, uid, vals, context=None):
        #pdb.set_trace()
        #vals['state'] = 'i'
        materia = self.pool.get('op.exam.type').browse(cr, uid, vals['type_id'], context=context)
        mat = materia.name[:3]
        mat = ('%s(%s)') %(mat, vals['partner_id'])
        vals['name'] = ('%s-B%s-%s') %(materia.abrev or mat, vals['bimestre'], time.strftime('%Y-%m-%d'))
        #exam = self.create(cr, uid, vals, context=context)
        exam_id = super(op_exam_session, self).create(cr, uid, vals, context)
        return exam_id

    #def write(self, cr, uid, ids, vals, context=None):
        #exame = self.browse(cr, uid, ids, context=context)
        #exam_pool = self.pool.get('op.exam.session')
        #turma = self.browse(cr, uid, ids)
        #for x in turma:
        #    status = x.state

        #if status in ['d','c']:
        #    raise osv.except_osv(_("Warning!"), _("Exame já finalizado/cancelado não é possível alterar."))
        #return self.write(cr, uid, ids, vals, context=context)
        #exam_pool.write(cr, uid, vals, context)
        #p_id = super(op_exam_session, self).create(cr, uid, ids, vals, context)
        #return p_id

    def set_done(self, cr, uid, ids, context=None):
        return self.write(cr, uid, ids, {'state':'d'}, context=context)

    def set_cancelado(self, cr, uid, ids, context=None):
        return self.write(cr, uid, ids, {'state':'c'}, context=context)

    def set_novo(self, cr, uid, ids, context=None):
        return self.write(cr, uid, ids, {'state':'n'}, context=context)

    def set_andamento(self, cr, uid, ids, context=None):
        return self.write(cr, uid, ids, {'state':'a'}, context=context)

    def generate_turma(self, cr, uid, ids,  context=None):
        #pdb.set_trace()
        #stu_pool = self.pool.get('op.student')
        #res = 
        #turma_ids = self.pool.get('op_student').search(cr, uid,[('classroom_id', '=', classroom_id)], context=context)
        #for aluno_id in turma_ids:
        #    res += [aluno_id.student_id]
        #return {'student_id': res}
        sala_obj = self.pool.get('op.classroom')
        sala_obj = self.browse(cr, uid, ids)
        #aluno_ids = sala_obj.search(cr, uid, ids, context=None)
        for rec in sala_obj:
            #print rec.name
            #print rec.classroom_id
            sala = rec.classroom_id.id
            #print sala           
        #    print rec.aluno_ids.numero
        #    print rec.aluno_ids.student_id
        #    print rec.aluno_ids.student_id.id

        #alunos_obj = self.pool.get('op.classroom')
        #alunos_obj = self.browse(cr, uid, sala, context=context)
        #for alun in alunos_obj:
        #    print alun.numero
        #    print alun.student_id.id

        salaaluno = self.pool.get('op.classroom').search(cr, uid, [('id', '=', sala)], context=context)
        alunos_obj = self.pool.get('op.classroom').browse(cr, uid, salaaluno)
        #exame_alunos = self.pool.get('op.exam.session').browse(cr, uid, ids, context=context)
        alunos_exame = {}
        exame = self.browse(cr, uid, ids, context=context)
        op_exam_pool = self.pool.get('op.exam')
        incluidos_id = 0
        for x in exame:
            exame_id = x.id
        for alunos in alunos_obj:
            #print alunos.name
            #print alunos.aluno_ids
            for alunossala in alunos.aluno_ids:
               #print alunossala.numero
               aluno_id = alunossala.student_id.id
               #print alunossala.student_id.last_name
               #print alunossala.student_id.name
               alunos_exame = {'session_id': exame_id, 'student_id': aluno_id,'avaliacao':0,'falta': 0,}
        
               incluidos_id = op_exam_pool.create(cr, uid, alunos_exame)
        self.write(cr, uid, ids, {'state':'a'}, context=context)
        return incluidos_id

    def tela_exportacao(self, cr, uid, ids, context=None):
        ctx = dict()
        ctx.update({
            'session_id': ids[0],
        })
        view_ref = self.pool.get('ir.model.data').get_object_reference(cr, uid, 'openeducat_erp', 'view_op_exam_tree')
        view_id = view_ref[1] if view_ref else False
        domain = [('session_id','=',ids[0])]
        res = {
            'type': 'ir.actions.act_window',
            'name': _('Exame'),
            'res_model': 'op.exam',
            'view_type': 'form',
            'view_mode': 'tree',
            'view_id': view_id,
            'domain': domain,
        }
        return res

    def importar_planilha(self, cr, uid, ids, context=None):
        ctx = dict(context)
        #pdb.set_trace()
        ctx.update({
            'name': ids[0],
        })
        view_ref = self.pool.get('ir.model.data').get_object_reference(cr, uid, 'ea_import', 'ea_view_event_form')
        view_id = view_ref[1] if view_ref else False
        res = {
            'type': 'ir.actions.act_window',
            'name': _('ImportaPlanilha'),
            'res_model': 'ea_import.chain',
            'view_type': 'form',
            'view_mode': 'form',
            'view_id': view_id,
            'target': 'current',
            'context': ctx,
        }
        return res

op_exam_session()

class op_notas_bimestre_view(osv.osv):
    _name = "op_notas_bimestre_view"
    _description = "Notas Bimestrais"
    _auto = False
    _columns = {
        'ano': fields.integer('Ano'),
        'course_id': fields.many2one('op.course', string='Turma', store=False),
        'classroom_id':fields.many2one('op.classroom',string='Período', store=False),
        'type_id': fields.many2one('op.exam.type', string='Disciplina', store=False),
        'partner_id': fields.many2one('res.partner', u'Professor', store=False),
        'student_id': fields.many2one('op.student',string='Estudante', store=False),
        'numero': fields.integer('Número'),
        'bim1':fields.char('1. Bim.', size=3),
        'bim2':fields.char('2. Bim.', size=3),
        'bim3':fields.char('3. Bim.', size=3),
        'bim4':fields.char('4. Bim.', size=3),
       }

    _order = "numero"

    def init(self, cr):
        tools.drop_view_if_exists(cr, 'op_notas_bimestre_view')
        cr.execute(""" create or replace view op_notas_bimestre_view AS (
                   (select cast((cast(Extract(Year FROM exame.data_exame) as text) || aluno.roll_number || cast(exame.classroom_id as text) || cast(exame.type_id as  text)) as numeric(24,0)) as id, Extract(Year FROM exame.data_exame) as ano, 
            exame.course_id, exame.classroom_id, exame.type_id, exame.partner_id, 
              notas.student_id,  cast(aluno.roll_number as int) as numero
              , (select distinct b1.avaliacao from op_exam_session b1s,  op_exam b1 
                  where b1.session_id = b1s.id and b1s.bimestre = '01' and b1.student_id = notas.student_id  and b1s.course_id = exame.course_id
                    and b1s.classroom_id = exame.classroom_id and b1s.partner_id = exame.partner_id and b1s.type_id = exame.type_id ) as bim1 
              , (select distinct b1.avaliacao from op_exam_session b1s,  op_exam b1 
                  where b1.session_id = b1s.id and b1s.bimestre = '02' and b1.student_id = notas.student_id  and b1s.course_id = exame.course_id
                    and b1s.classroom_id = exame.classroom_id and b1s.partner_id = exame.partner_id and b1s.type_id = exame.type_id ) as bim2
              , (select distinct b1.avaliacao from op_exam_session b1s,  op_exam b1 
                  where b1.session_id = b1s.id and b1s.bimestre = '03' and b1.student_id = notas.student_id  and b1s.course_id = exame.course_id
                    and b1s.classroom_id = exame.classroom_id and b1s.partner_id = exame.partner_id and b1s.type_id = exame.type_id ) as bim3
              , (select distinct b1.avaliacao from op_exam_session b1s,  op_exam b1 
                  where b1.session_id = b1s.id and b1s.bimestre = '04' and b1.student_id = notas.student_id  and b1s.course_id = exame.course_id
                    and b1s.classroom_id = exame.classroom_id and b1s.partner_id = exame.partner_id and b1s.type_id = exame.type_id ) as bim4
                    
              from op_exam_session exame, op_exam notas, op_student aluno  
             where exame.id = notas.session_id
               and aluno.id = notas.student_id 

               group by exame.course_id, exame.classroom_id, exame.partner_id, 
              notas.student_id, ano, aluno.roll_number
              ,exame.type_id 
              order by cast(aluno.roll_number as int)
            ))
        """)

