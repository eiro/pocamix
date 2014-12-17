% Pocamix

# todo

* work on panels, console and selector,
  eventually keyboard driven (keyboard.js?) 

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

* ask `#livescript@freenode.net`: is there an effort to make such a lib? 

# goals

I *hate* web developpement … i always did for a lot of reasons i won't argue
there. One of them is the inefficiency of the web technologies to produce what
i really expect when i code (enlightenment, fun, joy, proud). I always see the
web application developpement as a massive bag of crack and klugdes on the top
of a publication platteform. There are plenty of good^wpragmatic reasons for that 
to happen and a modern UX developper have just no choice but know a little bit
of web.

Pocamix is the weaving i'll use to test everything i expect to enjoy writting
web apps at some points. which are:

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
    * i want to be abble to generate code both from serverside and clientside
    * i want to share code with my pythonists, perl5 and 6 mongers, rubists 

(see SE(xml) experiment)

## transparent fallback 

from the same codebase, i would like to have

* a fully ajax loading of widgets
* a fallback with complete nonjs behavior (the way we did in '90) 

# Inkscape as RAD?

is it possible to use Inkscape SVG layers as elements of a non-html web UI? 

