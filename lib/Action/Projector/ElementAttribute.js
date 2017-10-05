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
  var Constants, Document, ElementAttribute, Utility, exports, _ref,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  Constants = require('goatee/Core/Constants').Constants;

  Utility = require('goatee/Core/Utility').Utility;

  Document = require('goatee/Dom/Document').Document;

  exports = (_ref = typeof module !== "undefined" && module !== null ? module.exports : void 0) != null ? _ref : this;

  exports.ElementAttribute = ElementAttribute = (function(_super) {
    __extends(ElementAttribute, _super);

    function ElementAttribute() {
      return ElementAttribute.__super__.constructor.apply(this, arguments);
    }

    return ElementAttribute;

  })(Processor);

}).call(this);

//# sourceMappingURL=ElementAttribute.map