# DTD
## DTD interno
```xml
<?xml version=”1.0” encoding=”UTF-8”?>
<!DOCTYPE persona [
 <!ELEMENT persona (nombre)>
 <!ELEMENT nombre (#PCDATA)>
]>
<persona>
<nombre>Antonio</nombre>
</persona> 
```
## DTD externo
```xml
<!DOCTYPE elemento_raiz SYSTEM “docs.dtd”>
```
## Elementos
Simple
```xml
<!ELEMENT nombre (tipo)>
// Tipos
<!ELEMENT nombre EMPTY>
<!ELEMENT nombre (#PCDATA)> // No puede contener símbolos prohibidos (<, >, &, etc)
<!ELEMENT nombre (#CDATA)> // Puede contener símbolos prohibidos
<!ELEMENT nombre ANY> // Puede contener cualquier contenido, sin restricciones. Puede tener atributos
```
Complejo
```xml
<!ELEMENT nombre_elemento (hijo1, hijo2, hijo3,...)>
// Ejemplo
<?xml version=”1.0” encoding=”UTF-8”?>
<!DOCTYPE persona [
 <!ELEMENT persona (nombre, apellidos, edad)>
 <!ELEMENT nombre (#PCDATA)>
 <!ELEMENT apellidos (#PCDATA)>
 <!ELEMENT edad (#PCDATA)>
]>
<persona>
 <nombre>Antonio</nombre>
 <apellidos>Pérez</apellidos>
 <edad>35</edad>
</persona>
```
## Atributos
```xml
<!ATTLIST nombre_elemento nombre_atributo tipo presencia valorPorDefecto>
// Casi siempre es CDATA
// Presencia
// #FIXED -> mismo valor
<?xml version=”1.0” encoding=”UTF-8”?>
<!ELEMENT directorio (persona)+>
<!ELEMENT persona (#PCDATA)>
<!ATTLIST persona nacionalidad CDATA #FIXED “Española”>
// #REQUIRED -> obligatorio
<!ATTLIST persona nacionalidad CDATA #REQUIRED>
// #IMPLIED -> optativo
<!ATTLIST persona nacionalidad CDATA #IMPLIED>
// Ejemplo
<!ATTLIST persona nacionalidad CDATA>
<persona nacionalidad=”española”>
// Valor por defecto
<?xml version=”1.0” encoding=”UTF-8”?>
<!ELEMENT directorio (persona)+>
<!ELEMENT persona (#PCDATA)>
<!ATTLIST persona nacionalidad CDATA “Española”>
```
## Ocurrencias elementos

“ “ aparece obligatoriamente una vez  
• “+” Puede aparecer 1 o más veces  
• “*” Puede aparecer 0 o más veces  
• “?” Puede aparecer 0 ó 1 vez  
• “|” Puede aparecer o uno u otro, pero no los dos  

## Opcional
```xml
<!ELEMENT nombre_elemento (opcion1 | opcion2 | ...)>
// Ejemplo
<?xml version=”1.0” encoding=”UTF-8”?>
<!DOCTYPE artículo [
 <!ELEMENT artículo (id | serie)>
 <!ELEMENT id (#PCDATA)>
 <!ELEMENT serie (#PCDATA)>
]>
<artículo>
 <id>16</id>
</artículo>
```
## Cardinalidad
```xml
// ? -> Contenido opcional, puede aparecer (una sola vez) o no aparecer
// * -> Contenido opcional y repetible. Es decir puede no aparecer y puede incluso aparecer varias veces
// + -> Contenido obligatorio y repetible. Tiene que aparecer e incluso puede aparecer varias veces.
// Ejemplo 1
<!ELEMENT película (título, dirección+, argumento?, actor*)>
// Ejemplo 2
<?xml version=”1.0” encoding=”UTF-8”?>
<!ELEMENT polígono ((coordXY)+ | nombre)>
<!ELEMENT coordXY (#PCDATA)>
<!ELEMENT nombre (#PCDATA)>
Con esa DTD sería válido el documento:
<?xml version=”1.0” encoding=”UTF-8”?>
<!DOCTYPE poligono SYSTEM “polígono.dtd”>
<poligono>
 <coordXY>12-12</coordXY>
 <coordXY>17-10</coordXY>
 <coordXY>34-8</coordXY>
 <coordXY>56-8</coordXY>
</poligono>
```
## Entidades
&lt;El símbolo de menor (<)  
&gt; El símbolo de mayor (>)  
&amp;El ampersand: &  
&apos;La comilla simple (‘)ç  
&quot;La comilla doble (“)  

# XML SCHEMA
## XML Schema URL
```xml
<?xml version=”1.0” encoding=”UTF-8”?>
<documento xmlns:xs=”http://www.w3.org/2001/XMLSchema-instance”
 xs:schemaLocation=” http://www.jorgesanchez.net/doc esquema.xsd”>
 ....
</documento>
```
## XML Schema DIR
```xml
<?xml version=”1.0” encoding=”UTF-8”?>
<descripción xmlns:xs= ”http://www.w3.org/2001/XMLSchema-instance”
 xs:noNamespaceSchemaLocation=”esquema1.xsd”>
</descripción>
```
## Elementos
```xml
<xs:element
    name=”nombre del elemento”
    type=”tipo global de datos”
    minOccurs=”número mínimo de veces”
    maxOccurs=”máximo número de veces”
    default=”valor por defecto”
    fixed=”valor fijo”
    required
>
// Al menos hay que indicar el nombre; el tipo de datos
// también es necesario indicarle casi siempre;
// el resto de atributos sólo si se necesitan.
```
## Elemento raíz
```xml
<?xml version=”1.0” encoding=”UTF-8”?>
<xs:schema xmlns:xs=”http://www.w3.org/2001/XMLSchema”>
 ...código XML Schema
</xs:schema>
```
## Elementos simples
```xml
// no contienen otros elementos hijos, es decir, solo contienen información
<xs:element name=”nombre_elemento” type=”tipo_dato” />
// “nombre_elemento”: lo elige el usuario
// “tipo_dato”: existen tipos predefinidos y solo se pueden usar esos
```
## Tipos
```xml
// Simples
xs:simpleType
// Complejos
xs:complexType
```
## Atributos
```xml
xs:attribute
<xs:attribute name=”nombre_atributo” type=”tipo_atributo” />
// “nombre_atributo”: lo elige el usuario
// “tipo_atributo”: existen tipos predefinidos y solo se pueden usar esos
```
## Para elementos y atributos
```xml
// Valor por defecto
default=”valor por defecto”
// Valor fijo
fixed=”valor fijo”
// Valor requerido
required
```
## Tipos de datos para elemento o atributos
```xml
<?xml version=”1.0” encoding=”UTF-8”?>
<xs:schema xmlns:xs=”http://www.w3.org/2001/XMLSchema”>
 <xs:element name=”descripción” type=”xs:string”/>
</xs:schema>
```
Predefinidos
- xs:string
- xs:date -> yyyy-mm-dd
- xs:time -> hh:mm:ss
- xs:dateTime -> yyyy-mm-ddThh:mm:ss
- xs:decimal
- xs:integer
- xs:boolean -> 0 o 1
- xs:hexbinary -> hexadecimal

## Elementos simples personales
```xml
<xs:simpleType name=”nombre”>
 ...definición del tipo....
</xs:simpleType>
```
## Elementos complesjos
```xml
// pueden contener otros elementos hijos o atributos propios o ambos a la vez
<xs:element name=“nombreElemento”>
<xs:complexType>
<xs:tipo_indicador>
 lista_de_elementos_simples_complejos_atributos
</xs:tipo_indicador>
</xs:complexType>
</xs:element>
// Tipo indicador puede ser
// <sequence> <all> <choice>
```
## Etiqueta "sequence"
secuencia de elementos
```xml
<xs:element name=”email”>
 <xs:complexType >
 <xs:sequence>
 <xs:element name=”remite” type=”xs:string”/>
 <xs:element name=”para” type=”xs:string” minOccurs=”1” maxOccurs=”unbounded” />
 <xs:element name=”CC” type=”xs:string” minOccurs=”0” maxOccurs=”unbounded” />
 <xs:element name=”CCO” type=”xs:string” minOccurs=”0” maxOccurs=”unbounded” />
 </xs:sequence>
 </xs:complexType>
</xs:element>
```
## Etiqueta "choice"
permitir elegir uno de entre varios elementos
```xml
<xs:element name=”identificación”>
 <xs:complexType>
 <xs:choice>
 <xs:element name=”firma” type=”xs:string” />
 <xs:element name=”código” type=”xs:string” />
 </xs:choice>
 </xs:complexType>
</xs:element>
```
## Etiqueta "all"
los elementos que contiene aparecen una vez
y además en el orden que quieran.
```xml
<xs:element name=”identificación”>
 <xs:complexType>
 <xs:all>
 <xs:element name=”firma” type=”xs:string”/>
 <xs:element name=”código” type=”xs:string” />
 </xs:all>
 </xs:complexType>
</xs:element>
```
