import { Router } from 'express'
import { getInicio } from '../controllers/index.controller.js'

const router = Router()

router.get('/', getInicio)
router.post('/registrarventa', (req, res) => res.render('registrarventa'))
router.put('/actualizarventa', (req, res) => res.render('actualizarventa'))
router.delete('/eliminarventa', (req, res) => res.render('eliminarventa'))

export default router
