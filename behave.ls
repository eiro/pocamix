

document.addEventListener \DOMContentLoaded, !->
    (
        click: (e) >
            console.log "clicked": e.target
        dblclick: (e) ->
            console.log "don't twice": e.target
    ) |> obj-to-pairs |> map (k,v) -> document.addEventListener k, v



# whenDocumentLoaded = (f) ->
#     document.addEventListener \DOMContentLoaded, f
# 
# whenEver = (eventType,selector,f) !->
#     for el in document.querySelectorAll selector
#         el.addEventListener eventType, f, false
# 
# GET = (params) -> console.log {
#     "would be an ajax request some day" : params
# }
# 
# whenDocumentLoaded ->
#     whenEver \c lick
#     , ".tata[checked=checked]:not(.haha)"
#     , (x) ->
#         ( document.getElementsByTagName "body"
#         )[0].classList.add \warning
#         GET {
#           url : \/example
#           data :
#             list : \list
#             order : \order
#           success : (data) ->
#             console.log {"success": data }
#           error : (data) ->
#             console.log {"error": e }
#         }
# 
# // for ... in  => iterate on properties ( so @@iterator and length) 
# // for ... of  => elements ( from .0 to .[.length] )  
#     // (not implemented in lot of js engines)
# 
# // for ( el of document.querySelectorAll('.foo') ) {
# //     alert(el.getAttribute("href"))
# // }   
