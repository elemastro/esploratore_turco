
xquery version "3.1";

module namespace pm-config="http://www.tei-c.org/tei-simple/pm-config";

import module namespace pm-prova-web="http://www.tei-c.org/pm/models/prova/web/module" at "../transform/prova-web-module.xql";
import module namespace pm-prova-print="http://www.tei-c.org/pm/models/prova/print/module" at "../transform/prova-print-module.xql";
import module namespace pm-prova-latex="http://www.tei-c.org/pm/models/prova/latex/module" at "../transform/prova-latex-module.xql";
import module namespace pm-prova-epub="http://www.tei-c.org/pm/models/prova/epub/module" at "../transform/prova-epub-module.xql";
import module namespace pm-prova-fo="http://www.tei-c.org/pm/models/prova/fo/module" at "../transform/prova-fo-module.xql";
import module namespace pm-docx-tei="http://www.tei-c.org/pm/models/docx/tei/module" at "../transform/docx-tei-module.xql";

declare variable $pm-config:web-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "prova.odd" return pm-prova-web:transform($xml, $parameters)
    default return pm-prova-web:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:print-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "prova.odd" return pm-prova-print:transform($xml, $parameters)
    default return pm-prova-print:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:latex-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "prova.odd" return pm-prova-latex:transform($xml, $parameters)
    default return pm-prova-latex:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:epub-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "prova.odd" return pm-prova-epub:transform($xml, $parameters)
    default return pm-prova-epub:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:fo-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "prova.odd" return pm-prova-fo:transform($xml, $parameters)
    default return pm-prova-fo:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:tei-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "docx.odd" return pm-docx-tei:transform($xml, $parameters)
    default return error(QName("http://www.tei-c.org/tei-simple/pm-config", "error"), "No default ODD found for output mode tei")
            
    
};
            
    