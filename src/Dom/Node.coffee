###
© Copyright 2013 Stephan Jorek <stephan.jorek@gmail.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

<http://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
implied. See the License for the specific language governing
permissions and limitations under the License.
###

exports = module?.exports ? this

# --------------------------------
# Node
# ================================

# Compatibility layer for Window-less environments
#
# @public
# @module     Node
# @namespace  goatee.Dom
# @type       {Object|Function}
# @see        http://www.w3.org/TR/2000/REC-DOM-Level-2-Core-20001113/core.html
exports.Node = Node ? { # uses either an already available Node or
  ELEMENT_NODE                : 1
  ATTRIBUTE_NODE              : 2
  TEXT_NODE                   : 3
  CDATA_SECTION_NODE          : 4
  ENTITY_REFERENCE_NODE       : 5
  ENTITY_NODE                 : 6
  PROCESSING_INSTRUCTION_NODE : 7
  COMMENT_NODE                : 8
  DOCUMENT_NODE               : 9
  DOCUMENT_TYPE_NODE          : 10
  DOCUMENT_FRAGMENT_NODE      : 11
  NOTATION_NODE               : 12
}
