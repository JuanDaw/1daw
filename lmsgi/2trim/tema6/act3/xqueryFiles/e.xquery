xquery version "3.1";

declare namespace ext="http://www.altova.com/xslt-extensions";

<html>
    <body>
        <h2>Listar año y tí­tulo de los libros publicados por Addison-Wesley después del año 1992.</h2>
        <br/>
        {
        for $libro in doc("../xmlFiles/Libros.xml")/bib/libro
        where $libro/editorial = "Addison-Wesley" 
            and $libro/@anyo > 1992
        return 
            <ul>
                <li>
                {data($libro/@anyo)}, {data($libro/titulo)}
                </li>
            </ul>
        }
    </body>
</html>