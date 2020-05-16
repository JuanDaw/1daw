xquery version "3.1";

declare namespace ext="http://www.altova.com/xslt-extensions";

<html>
    <body>
        <h2>8. Mostrar el ti­tulo y el precio de todos los libros, ordenados por precio, y al final la suma de los precios.</h2>
        <table border="2">
            <tr>
                <th>Titulo</th>
                <th>Precio</th>
            </tr>
			{
			for $libro in /bookstore/book
			order by $libro/price
			return
				<tr>
					<td> {data($libro/title)} </td>
					<td> {data($libro/price)} </td>
				</tr>
			}
			{
			let $sum := sum(/bookstore/book/price)
			return
				<tr>
					<td>TOTAL</td>
					<td> {$sum} </td>
				</tr>
			}
        </table>
    </body>
</html>