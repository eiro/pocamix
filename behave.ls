# IE compatibility ?
#
# the documented behavior of IE is to *not* pass the event as the argument
# of the function. instead you have to use window.event and its .srcElement
# but ... 
#
# everything works fine with IE 11. so what level of backward compatibility do we need? 
#
# eventSrc = (e) ->
#     if e then  [e, e.target ]
#     else
#         e = window.event
#         [ e, e.srcElement ]
#
# plus: this binding returns "Netscape" as navigator.appName
#     click: (e) ->
#         console.log "no need for IE stuff as #{navigator.appName} detected a click": e
#

{ obj-to-pairs, map } = require 'prelude-ls'

the        = (id      , from=document) -> from.getElementById id
theClass   = (name    , from=document) -> from.getElementsByClass name
theTags    = (name    , from=document) -> from.getElementsByTagName name
theMatch   = (selector, from=document) -> from.querySelector selector
theMatches = (selector, from=document) -> from.querySelectorAll selector

documentHandles = (list) ->
    document.addEventListener \DOMContentLoaded, !->
        list |> obj-to-pairs |> map ([e,cb]) ->
            document.addEventListener e, cb, false

documentHandles {

    click: (e) ->

        switch e.target.id
        | \menuButton =>
            m = the \menu
            [m, theMatch \ul, m ] |>
                map (.style.visibility = \visible)

        | \HAHA => console.log "HAHA"


        | otherwise =>
            console.log "WTF ? click in the middle of nowhere": e
 

}


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
