// Generated by CoffeeScript 1.6.3
/*
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
*/


(function() {
  var DomDataAttribute, InMemory, constant, doc, root, _ref,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  constant = require('goatee/Core/Constants');

  doc = require('goatee/Dom/Document');

  InMemory = require('goatee/Core/InstructionCache/InMemory');

  root = typeof exports !== "undefined" && exports !== null ? exports : this;

  root.DomDataAttribute = DomDataAttribute = (function(_super) {
    __extends(DomDataAttribute, _super);

    function DomDataAttribute() {
      _ref = DomDataAttribute.__super__.constructor.apply(this, arguments);
      return _ref;
    }

    DomDataAttribute.prototype.has = function(node) {
      return doc.hasData(node, constant.ATT_jstcache);
    };

    DomDataAttribute.prototype.get = function(node) {
      var id;
      id = doc.getData(node, constant.ATT_jstcache);
      return DomDataAttribute.__super__.get.call(this, id);
    };

    DomDataAttribute.prototype.set = function(node, value) {
      var id;
      id = doc.getData(node, constant.ATT_jstcache);
      DomDataAttribute.__super__.set.call(this, id, value);
    };

    return DomDataAttribute;

  })(InMemory);

}).call(this);