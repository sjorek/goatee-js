###
© Copyright 2013 Stephan Jorek <stephan.jorek@gmail.com>
© Copyright 2006 Google Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
implied. See the License for the specific language governing
permissions and limitations under the License.
###

###

Order of Evaluation
===================

Goatee instruction attributes and event actions within a single element are
evaluated in the following order:

Outer Processors
-------------------

• render        This action initiates the rendering automatically, after the
                dom is ready. The algorithm uses the given “render”-Data as
                Context. Additionally if “jQuery” is available and the given
                data is a string, “render” may be either an global javascript
                variable reference, or if that fails an url to an external json-
                file. Changes to the render value, will stop any process 
                rendering the same tag and start re-rendering. The rendering-
                process will skip all nested tags which it-self contain a
                “render”-Attribute, since any of those tags will be processed
                automatically in the order of their appearance.

• template      Formerly “transclude”. If a “source” action is present no
                further actions are processed. Additionally if “cheerio” or 
                “jQuery” is available, “source” may be an internal template-
                reference, implemented as
                   `(cheerio||jQuery)( “source eg: '#id .selector'”, this )`
                or if jQuery is available an external reference, implemented as
                   `jQuery(this).load( “source, eg: 'url #element-id'” );`.

• select        Formerly “jsselect”. If “select” is array-valued, remaining
                actions will be copied to each new duplicate element created
                by the “select” and processed when the further dom-traversal
                visits the new elements. If “json:select” is available and
                “select” is a string, it is used as css3-like query onto the
                current context. Therefore the context must be suiteable as 2nd
                argument of “JSONSelect.match”. @see http://jsonselect.org

Inner Processors
-------------------

• show          Formerly “jsdisplay”.

• set           Formerly “jsvars”.

• alter         Formerly “jsvalues”.

• exec(ute)     Formerly “jseval”.

• stop          Formerly “jsskip”.

• markup        This action is present if `(cheerio|jQuery)(…).html()` is
                available.

• content       Formerly “jscontent”. Uses `(cheerio|jQuery)(…).text()` if
                available, otherwise Node.innerHTML will be assigned to given
                content.

• next          This action is present if `(cheerio|jQuery)(…).next()` is
                available.

###
