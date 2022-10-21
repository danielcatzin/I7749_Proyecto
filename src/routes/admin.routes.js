import { Router } from 'express'
import { ventasRecientes } from '../controllers/admin.controller'
const adminRouter = Router()

router.get('/admin/ventas-recientes', ventasRecientes)

export default adminRouter
