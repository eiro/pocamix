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
# documentHandles = (list) ->
#     document.addEventListener \DOMContentLoaded, !->
#         menus = theMatches '#menu ul'
# 
#         list |> obj-to-pairs |> map ([e,cb]) ->
#             document.addEventListener e, cb, false
# http://davidwalsh.name/event-delegate
# { obj-to-pairs, map } = require 'prelude-ls'

the        = (id      , from=document) -> from.getElementById id
theClass   = (name    , from=document) -> from.getElementsByClass name
theTags    = (name    , from=document) -> from.getElementsByTagName name
theMatch   = (selector, from=document) -> from.querySelector selector
theMatches = (selector, from=document) -> from.querySelectorAll selector

whenever = (eventType,element,f) !->
    element.addEventListener eventType, f, true

xxx           = (el) -> console.log el
hide          = (el) -> el.classList.add('hidden')
show          = (el) -> el.classList.remove('hidden')
toggleDisplay = (el) -> el.classList.toggle('hidden')

whenever \DOMContentLoaded, document, (e) !->

    menu = the \menu
    hide menu
    for el in theTags \dd,menu
        hide el

    listener = new window.keypress.Listener!

    listener.simple_combo "space", !->
        toggleDisplay menu

    whenever \click, document, (e) ->
        t = e.target
        switch t.id
        | \menuButton =>
            show menu
        | otherwise =>
            console.log "suzy classe!"

    whenever \click, (the \menu), (e) ->
        t = e.target

        switch t.tagName
        | \DT =>
            toggleDisplay t.nextSibling
            false
        | otherwise =>
            console.log "suzy maeve"
            true

# this snippet shows that the event goes from document to menu then back
    # (the \main ).addEventListener \click, ((e) -> console.log "menu true"  ; true ), true
    # (the \main ).addEventListener \click, ((e) -> console.log "menu false" ; true ), false
    # document.addEventListener \click, ((e) -> console.log "document true"  ; true ), true
    # document.addEventListener \click, ((e) -> console.log "document false" ; true ), false

    # whenever \click, (the \menu), (e) ->
    #     src = e.target
    #     if src.tagName == "dt"
    #     then
    #         sib = src.nextSibling
    #         if sib
    #         then toggleDisplay src.nextSibling
    #         else
    #             console.log "missing nextSibling for ": sib

    # whenever \click, document, (e) ->
    #     switch e.target.id
    #     | \menuButton =>
    #         the \menu .style.visibility = \visible
    #     | otherwise =>
    #         console.log "never caught": e 

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
