xquery version "3.1";

declare namespace ext="http://www.altova.com/xslt-extensions";

<html>
    <body>
		<h2>g. Todos los campos de los empleados que pertenezcan al Departamento cuyo jefe de departamento sea Pedro Gomez y la sede sea Madrid</h2>
        <table border="2">
            <tr>
                <th>Num empleado</th>
                <th>Apellido</th>
                <th>Nombre</th>
                <th>Categoria</th>
                <th>Departamento</th>
            </tr>
			{
			for $empleado in /empleados/empleado
			where $empleado/departamento/id = 011 and $empleado/departamento/jefe = 00012 and $empleado/departamento/sede = "Madrid"
			return
				<tr>
					<td> {data($empleado/@num)} </td>
					<td> {data($empleado/apellido)} </td>
					<td> {data($empleado/nombre)} </td>
					<td> {data($empleado/categoria)} </td>
					<td> {data($empleado/departamento/id)} </td>
				</tr>
			}
        </table>
    </body>
</html>