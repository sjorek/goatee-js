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
Class NativeJavascriptExpression

@memberOf goatee
###
class NativeJavascriptExpression

  ###*
  Wrapper for the eval() builtin function to evaluate expressions and
  obtain their value. It wraps the expression in parentheses such
  that object literals are really evaluated to objects. Without the
  wrapping, they are evaluated as block, and create syntax
  errors. Also protects against other syntax errors in the eval()ed
  code and returns null if the eval throws an exception.
  
  @param {String} expression
  @return {Object|null}
  @memberOf goatee.NativeJavascriptExpression
  ###
  evaluate: (expression) ->
    try
      ###
      NOTE(mesch): An alternative idiom would be:
      
        eval('(' + expr + ')');
      
      Note that using the square brackets as below, "" evals to undefined.
      The alternative of using parentheses does not work when evaluating
      function literals in IE.
      e.g. eval("(function() {})") returns undefined, and not a function
      object, in IE.
      
      NOTE(sjorek): Due to the underlying coffescript-specific language
      agnostics we deliberatly fall back to vanilla javascript here.
      ###
      `eval('[' + expression + '][0]')`
    catch e
      console.log "Failed to evaluate “#{expression}”: #{e}"
      null
