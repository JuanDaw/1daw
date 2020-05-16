xquery version "3.1";

declare namespace ext="http://www.altova.com/xslt-extensions";

<html>
    <body>
        <h2>2. Mostrar el titulo y autor/es de todos los libros cuyo precio sea menor o igual a 30</h2>
        <table border="2">
            <tr>
                <th>Titulo</th>
                <th>Autor</th>
            </tr>
			{
			for $libro in /bookstore/book
			where $libro/price <= 30
			return
				<tr>
					<td> {data($libro/title)} </td>
					<td> {data($libro/author)} </td>
				</tr>
			}
        </table>
    </body>
</html>