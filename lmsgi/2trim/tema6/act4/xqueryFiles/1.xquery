xquery version "3.1";

declare namespace ext="http://www.altova.com/xslt-extensions";

<html>
    <body>
        <h2>1. Mostrar  los datos de  los titulos de todos  los libros  ("category" y "title")</h2>
        <table border="2">
            <tr>
                <th>Categoria</th>
                <th>Titulo</th>
            </tr>
			{
			for $libro in /bookstore/book
			return
				<tr>
					<td> {data($libro/@category)} </td>
					<td> {data($libro/title)} </td>
				</tr>
			}
        </table>
    </body>
</html>