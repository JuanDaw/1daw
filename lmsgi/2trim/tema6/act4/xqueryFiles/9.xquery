xquery version "3.1";

declare namespace ext="http://www.altova.com/xslt-extensions";

<html>
    <body>
        <h2>9. Mostrar el titulo del libro, su precio y su precio con el IVA incluido. Ordenalos por precio con IVA. Las celdas correspondientes al precio con el IVA incluido tendra un fondo gris. Al final mostrar una ultima fila con la suma de todos los precios con IVA incluido.</h2>
        <table border="2">
            <tr>
                <th>Titulo</th>
                <th>Precio</th>
                <th>Precio con IVA</th>
            </tr>
			{
			for $libro in /bookstore/book
			let $iva := ($libro/price * 1.21)
			order by $iva
			return
				<tr>
					<td> {data($libro/title)} </td>
					<td> {data($libro/price)} </td>
					<td bgcolor="gray"> {$iva} </td>
				</tr>
			}
			{
			let $sumaiva := sum(/bookstore/book/price)
			return
				<tr>
					<td colspan="2">TOTAL</td>
					<td> {sum($sumaiva * 1.21)} </td>
				</tr>
			}
        </table>
    </body>
</html>