xquery version "3.1";

declare namespace ext="http://www.altova.com/xslt-extensions";

<html>
    <body>
        <h2>10. Mostrar todos los años en los que se ha publicado un libro</h2>
        <table border="2">
            <tr>
                <th>Años de publicacion</th>
            </tr>
			{
			for $year in distinct-values(/bookstore/book/year)
			return
				<tr>
					<td> {$year} </td>
				</tr>
			}
        </table>
    </body>
</html>