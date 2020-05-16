xquery version "3.1";

declare namespace ext="http://www.altova.com/xslt-extensions";

<html>
    <body>
		<h2>b. Todos los campos de la tabla Departamentos</h2>
        <table border="2">
            <tr>
                <th>Departamento</th>
                <th>Jefe</th>
                <th>Sede</th>
            </tr>
			{
			for $depart in /empleados/empleado/departamento
			return
				<tr>
					<td> {data($depart/id)} </td>
					<td> {data($depart/jefe)} </td>
					<td> {data($depart/sede)} </td>
				</tr>
			}
        </table>
    </body>
</html>