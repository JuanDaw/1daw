xquery version "3.1";

declare namespace ext="http://www.altova.com/xslt-extensions";

<html>
    <body>
        <h2>5. Mostrar solo los a�os de publicacion de todos los libros</h2>
        <table border="2">
            <tr>
                <th>A�o publicacion</th>
            </tr>
			{
			for $libro in /bookstore/book
			return
				<tr>
					<td> {data($libro/year)} </td>
				</tr>
			}
        </table>
    </body>
</html>