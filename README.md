
[goatee-js](http://sjorek.github.io/goatee-js/)
===============================================

         _______  _______  _______  _______  _______  _______
        |    ___||       ||       ||_     _||    ___||    ___|
        |   | __ |   _   ||   _   |  |   |  |   |___ |   |___
        |   ||  ||  |_|  ||  |_|  |  |   |  |    ___||    ___|
        |   |_| ||       ||   _   |  |   |  |   |___ |   |___
        |_______||_______||__| |__|  |___|  |_______||_______|
                                         . ,
                                         (\\
                                      .--, \\__
                                       `-.     *`-.__
                                         |          ')
                                        / \__.-'-, ~;
                                       /     |   { /
                        ._..,-.-"``~"-'      ;    (
                     .;'                    ;'    ´
                ~;,./                      ;'
                   ';                     ;'
                    ';                 /;'|
                     |    .;._.,;';\   |  |
                     \   /  /       \  |\ |
                      \ || |         | )| )
          ___         | || |         | || |            _______
         |   |  ~~~~~ | \| \  ~~~~~~ | \| \  ~~~~~~~  |  _____|
         |   |  "''"' `##`##' "'"''" `##`##' '"''"'"  | |_____
      ___|   |  '"'"''"'"''"''"''"'"'''"'"'''"''"'"'  |_____  |
     |       |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~   _____| |
     |_______|                                        |_______|

A goatee is the perfect complement for handlebar mustaches. :-{>~

## Meaning

For those who like acronyms:

  **G**eneric **O**bject **A**ction **T**emplate **E**xecution **E**nvironment

## Objective

First of all a citation from the originating
“[google-jstemplate](http://code.google.com/p/google-jstemplate/)” project:

> Template processing is the staple pattern for separation of data and
  presentation in web applications. But it usually works on one page at
  a time, which is inadequate for incremental, asynchronous page updates
  typical of Ajax applications.
>
> This system provides templates that allow for:
>
> - **incremental** processing: every processing operation produces valid output
> - **differential** processing: output text is again a template.
>
> It also fixes other undesirable properties of standard template processing:
>
> - **Wellformed** output is guaranteed.
> - **Escaped** by default.
> - Templates are **intelligible**: input template is valid output.
>
> And, of course:
>
> - **Pure javascript**, HTML, browser side processing.

That's what goatee is all about. So what's the difference between “goatee”,
“[google-jstemplate](http://code.google.com/p/google-jstemplate/)” or other
similar projects like “[knockout.js](http://knockoutjs.com)” then ?

The answer: My goals. I promise that “goatee” will have …

- … html4, html5, xhtml 1.1 and xhtml5 flavours,
- … an extremly modular architecture,
- … an interpreter during development-phase, with quick'n'dirty instant updates,
- … small and fast pre-compiled bytecode for production-releases,
- … no external dependencies and no name collisions in browser environments with
  popular frameworks as jquery, underscore and so on,
- … all the features of
  [google-jstemplate](http://code.google.com/p/google-jstemplate/),
- … implementations for the following frameworks:
  - [Express.js](http://expressjs.com) (Node)
  - [Slim](http://www.slimframework.com) (PHP)
  - [Symfony](http://symfony.com) (PHP)
  - [TYPO3 Flow](http://flow.typo3.org) (PHP)
  - [Django](https://www.djangoproject.com) (Python)
  - [Rails](http://rubyonrails.org) (Ruby)
  - [Grails](http://grails.org) (Groovy)
  - [Play](http://www.playframework.com) (Java/Scala)
- … 100% compatiblity for all runtimes in all those different languages,
  producing exactly the same results, no matter if it runs on the client-
  side (browser) or on the server-side,
- … content-management-extensions with the same look and feel as well as
  behaviour, no matter which implementation has been choosen and with
  versioning for all contents and assets,
- … a very low learning curve, because it's just javascript with css-philosophy
  combined. Which means you won't have to learn a new syntax or grammar.

## Installation

Goatee is not yet installable, but some components are …

- [goatee-script.js](http://sjorek.github.io/goatee-script.js)
- [goatee-rules.js](http://sjorek.github.io/goatee-rules.js)

## Usage

Goatee is not yet useable, but some components are … see above.

## Documentation

Read the [annotated sources](http://sjorek.github.io/goatee.js/doc/).

## Development

Install dependencies:

- [git-scm](http://git-scm.com)
- [node.js *(≥ 6.x)*](http://nodejs.org)
- [pygments](http://pygments.org)

Install project:

    $ git clone https://github.com/sjorek/goatee.js
    $ cd goatee-js
    $ npm install

Run build in *nix-like environments:

    $ PATH=$PATH:./node_modules/.bin cake all

Run build in Windows environments (**not tested**):

    $ set path=%PATH%;.\node_modules\.bin
    $ setx path "%PATH%"
    $ cake all

## Credits go to …

- … Steffen Meschkat for meeting me in 2004 and sharing all his passion and
  knowledge about his (sadly proprietary) perl-based content-managment-system,
  which still is my main motivation behind this project.

- … Google Inc. and all contributors
  of [google-jstemplate](http://code.google.com/p/google-jstemplate/)
  (especially Steffen Meschkat) as a source of motivation and inspiration.

- … Jeremy Ashkenas and all contributors of
  [Coffee-Script](http://coffeescript.org/).
