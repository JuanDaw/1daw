xquery version "3.1";

declare namespace ext="http://www.altova.com/xslt-extensions";

<html>
    <body>
		<h2>a. Todos los  campos de la tabla Empleados</h2>
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