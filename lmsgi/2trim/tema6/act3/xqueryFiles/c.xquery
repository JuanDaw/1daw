xquery version "3.1";

declare namespace ext="http://www.altova.com/xslt-extensions";

<html>
    <body>
        <h2>Listar los libros cuyo precio sea 65.95</h2>
        <br/>
        {
        for $libro in doc("../xmlFiles/Libros.xml")/bib/libro
        where $libro/precio = 65.95
        return 
            <ul>
                <li>
                {data($libro/titulo)}
                </li>
            </ul>
        }
    </body>
</html>