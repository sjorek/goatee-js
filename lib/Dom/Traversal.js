// Generated by CoffeeScript 1.7.1

/*
© Copyright 2013-2014 Stephan Jorek <stephan.jorek@gmail.com>  

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

<http://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
implied. See the License for the specific language governing
permissions and limitations under the License.
 */

(function() {
  var DOCUMENT_FRAGMENT_NODE, Traversal, exports, _ref;

  DOCUMENT_FRAGMENT_NODE = require('goatee/Dom/Node').Node.DOCUMENT_FRAGMENT_NODE;

  exports = (_ref = typeof module !== "undefined" && module !== null ? module.exports : void 0) != null ? _ref : this;

  exports.Traversal = Traversal = (function() {
    function Traversal(callback) {
      this.callback = callback;
    }

    Traversal.prototype.run = function(root) {
      this.queue = this.prepare(root);
      while (this.queue.length > 0) {
        this.queue = this.process(this.queue.shift());
      }
      return this;
    };

    Traversal.prototype.prepare = function(root) {
      if (root.nodeType == DOCUMENT_FRAGMENT_NODE) {
        return this.collect(root);
      }
      return [root];
    };

    Traversal.prototype.process = function(node) {
      this.callback(node);
      return this.queue.concat(this.collect(node));
    };

    Traversal.prototype.collect = function(node) {
      throw new Error('Derivates must override the “collect”-method implementation');
    };

    return Traversal;

  })();

}).call(this);

//# sourceMappingURL=Traversal.map