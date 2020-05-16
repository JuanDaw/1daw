xquery version "3.1";

declare namespace ext="http://www.altova.com/xslt-extensions";

<html>
    <body>
        <h2>6. Mostrar todos los elementos hijos de los libros ordenados por el campo "category"</h2>
        <table border="2">
            <tr>
                <th>Titulo</th>
                <th>Autor</th>
                <th>Año</th>
                <th>Precio</th>
            </tr>
			{
			for $libro in /bookstore/book
			order by $libro/@category
			return
				<tr>
					<td> {data($libro/title)} </td>
					<td> {data($libro/author)} </td>
					<td> {data($libro/year)} </td>
					<td> {data($libro/price)} </td>
				</tr>
			}
        </table>
    </body>
</html>