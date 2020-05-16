xquery version "3.1";

declare namespace ext="http://www.altova.com/xslt-extensions";

<html>
    <body>
        <h2>7. Mostrar el precio minimo y maximo de todos los libros existentes.</h2>
        <table border="2">
            <tr>
                <th>Precio minimo</th>
                <th>Precio maximo</th>
            </tr>
			{
			let $max := max(/bookstore/book/price), 
				$min := min(/bookstore/book/price)
			return
				<tr>
					<td> {$min} </td>
					<td> {$max} </td>
				</tr>
			}
        </table>
    </body>
</html>