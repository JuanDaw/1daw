xquery version "3.1";

declare namespace ext="http://www.altova.com/xslt-extensions";

<html>
    <body>
        <h2>3. Mostrar solo el ti­tulo de los libros cuyo precio sea menor o igual a 30.</h2>
        <table border="2">
            <tr>
                <th>Titulo</th>
            </tr>
			{
			for $libro in /bookstore/book
			where $libro/price <= 30
			return
				<tr>
					<td> {data($libro/title)} </td>
				</tr>
			}
        </table>
    </body>
</html>