export const ventasRecientes = async (req, res) => {
    const ventasRecientes = await pool.query('SELECT * FROM ventas')
    res.render('ventasRecientes')
}
