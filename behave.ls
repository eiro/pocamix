whenDocumentLoaded = (f) ->
    document.addEventListener \DOMContentLoaded, f

whenEver = (eventType,selector,f) ->
    for el in document.querySelectorAll selector =>
        el.addEventListener eventType, f, false
    true

whenDocumentLoaded ->
    whenEver \click, \label, (x) -> this.classList.add \warning
    whenEver \click, \.foo , (x) -> this.classList.add \bar

# // for ... in  => iterate on properties ( so @@iterator and length) 
# // for ... of  => elements ( from .0 to .[.length] )  
#     // (not implemented in lot of js engines)
# 
# // for ( el of document.querySelectorAll('.foo') ) {
# //     alert(el.getAttribute("href"))
# // }   
