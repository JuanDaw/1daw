xquery version "3.1";

declare namespace ext="http://www.altova.com/xslt-extensions";

<html>
    <body>
        <h2>Listar año y tí­tulo de todos los libros, ordenados por el año.</h2>
        <br/>
        {
        for $libro in doc("../xmlFiles/Libros.xml")/bib/libro
        order by $libro/@anyo
        return 
            <ul>
                <li>
                {data($libro/@anyo)}, {data($libro/titulo)}
                </li>
            </ul>
        }
    </body>
</html>