xquery version "3.1";

declare namespace ext="http://www.altova.com/xslt-extensions";

<html>
    <body>
        <h2>4. Mostrar el titulo ,y el autor/es de los libros del año 2005. Las celdas correspondientes al autor tendra un fondo de color gris</h2>
        <table border="2">
            <tr>
                <th>Titulo</th>
                <th>Autor</th>
            </tr>
			{
			for $libro in /bookstore/book
			where $libro/year = 2005
			return
				<tr>
					<td> {data($libro/title)} </td>
					<td bgcolor="gray"> {data($libro/author)} </td>
				</tr>
			}
        </table>
    </body>
</html>