xquery version "3.1";

declare namespace ext="http://www.altova.com/xslt-extensions";

<html>
    <body>
        <h2>Listar el título de todos los libros.</h2>
        <br/>
        {
        for $libro in doc("../xmlFiles/Libros.xml")/bib/libro
        return        
            <ul>
                <li>
                    {data($libro/titulo)}
                </li>
            </ul>
        }
    </body>
</html>