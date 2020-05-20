xquery version "3.1";

<html>
    <body>
		<h2>Muestra el nombre del proveedor y la ciudad en la que se encuentra dicho proveedor</h2>
        <table border="2">
            <tr>
                <th>Nombre</th>
                <th>Ciudad</th>
            </tr>
			{
			for $proveedor in /proveedores/proveedor
			return
				<tr>
          <td> {data($proveedor/nombreprov)} </td>
          <td> {data($proveedor/ciudad)} </td>
				</tr>
			}
        </table>
    </body>
</html>