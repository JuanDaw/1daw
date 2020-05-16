xquery version "3.1";

declare namespace ext="http://www.altova.com/xslt-extensions";

<html>
    <body>
		<h2>e. Todos los campos de los Departamentos cuyo Jefe sea “Alejandro López”</h2>
        <table border="2">
            <tr>
                <th>Departamento</th>
                <th>Jefe</th>
                <th>Sede</th>
            </tr>
			{
			for $empleado in /empleados/empleado
			where $empleado/departamento/jefe = $empleado/@num where $empleado/nombre = "Alejandro" and $empleado/apellido = "Lopez"
			return
				<tr>
					<td> {data($empleado/departamento/id)} </td>
					<td> {data($empleado/departamento/jefe)} </td>
					<td> {data($empleado/departamento/sede)} </td>
				</tr>
			}
        </table>
    </body>
</html>