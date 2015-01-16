% Pocamix

Pocamix is the weaving experimentation to:

* spot and experiment good javascript/css habits
  * transcripters: livescript, clojurescript, perl6 backend? 
  * practices
    * event delegation
    * strictness
    * library/namespace management
    * tips/tricks
  * libs
    * keyboard handle ([Keypress](https://github.com/dmauro/Keypress/) now
      tested)
    * communications with the outside world (ajax, websocket, sereal, ...)
    * graphing (high-level libraries over D3?)
* serve as a playground to the SExml experient (YA templating approach)
* try to produce UIs that fits the needs of experimented users
  (keyboard driven with class, then mouse user friendly). 

You can see more details in the "Goals" section

# Experiments

## slides system

having a simple slides system 

* by default, everything is a grid of thumbnails (current div is enlightened
  and hjkl to navigate).
* starting presentation is setting
  * a current slide with display fullscreen
  * accessors and animations for next/previous slides 

## keyboard driven fancy menus

* ps menu style: show submenus as panes panes
  overlaping the workspace as deploying.

    ------------------------  W = Workspace
    | W                    | 
    |                      |
    |                      |
    |                      |
    |                      |
    |                      |
    |                      |
    ------------------------  

    ------------------------  A = top level menu
    |A  | B | C | W        |  B = submenu
    |   |   |   |          |  C = sub-submenu
    |   |   |   |          |  W = Workspace
    |   |   |   |          |
    |   |   |   |          |
    |   |   |   |          |
    |   |   |   |          |
    ------------------------

* everything must be keyboard *and* mouse driven

## Many panels

be sure layouts can be nested (just with inline-block?) and navigate between 
them with `<space>w[jhkl]`

    ---------------- 
    | M            |  M = Menu
    ----------------  S = Submenu
    | S | R        |  H = helpers
    |   |          |  R = renderer (content)
    ----|          |  L = Log (console)
    | H |          |
    |   |          |
    |   |          |
    |   |          |
    ---------------- 
    | L            |
    ---------------- 

## remove javascript

(with Geoffroy)

As we have to know how fucked up javascript is
([MDN](https://developer.mozilla.org/fr/) is a very good ressource to learn
about web technologies), we also have loads of reasons and
[solutions](https://github.com/jashkenas/coffeescript/wiki/list-of-languages-that-compile-to-js)
to *not* actually write javascript.

We're experimenting [livescript](http://livescript.net/) over modern
[vanilla js](http://vanilla-js.com/) as replacement of
[jQuery](http://jquery.com/).

## keyboard driven UI

(with Geoffroy) 

if you're using an application with all accessors set through a tiling window
manager (say DWM) or the shell shipped with microsoft Windows, you have a
homonegic little set of keys to know to acces all the functions of the
UI. if you're a vim user, you put the things futher using a grammar to get the
job done so you can combine one letter verbs, nouns and numeral adjectives.

one of the thing that make me so unhappy using the web is you loose all those
decade of common sense and now need to use the super slow pointer to tell the
computer what you want. [vimperator](http://www.vimperator.org/vimperator) fix
some things but your website logic is unrevealed to this "just better UX to
browse the web". not to mention binding your keystrokes at 2 different levels
can have some side-effects.

what i want is to have a set of helpers to setup the layout and drive/browse it
through phrases the way vim does.

## html/xml templating made 'right'

(note the quotes surrounding 'right'). by right, i meant: 

* avoiding the tag-editing inferno
* compile-time coherence checking 
* no extra spaces and comments in the output
* [acmeic](http://acmeism.org) because
    * i want to be able to generate code both from serverside and clientside
    * i want to share code with my pythonists, perl5 and 6 mongers, rubists 

(see SE(xml) experiment)

## transparent fallback 

from the same codebase, i would like to have

* a fully ajax loading of widgets
* a fallback with complete nonjs behavior (the way we did in '90) 

# Inkscape as RAD?

is it possible to use Inkscape SVG layers as elements of a non-html web UI? 

