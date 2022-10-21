import express from 'express'
import router from './routes/index.routes.js'
import adminRouter from './routes/admin.routes.js'
import morgan from 'morgan'


const app = express()


app.set('views', './src/views')
app.set('view engine', 'ejs')

app.use(router)
app.use('/admin', adminRouter)

app.use(morgan('dev'))

app.use(express.static('./src/public'))

app.listen(process.env.PORT || 3000)
console.log('Server running on port ', process.env.PORT || 3000)