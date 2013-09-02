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

{Node}                  = require 'goatee/Dom/Node'
{Level1NodeTypeMatcher} = require 'goatee/Dom/Traversal'

exports = module?.exports ? this

## Level4ChildrenIterator

# A class to hold state for a dom traversal.
#
# @class
# @namespace goatee
exports.Level4ChildrenIterator = \
class Level4ChildrenIterator extends Traversal

  ##
  # Collect children of the current node of the traversal
  # @param  {Node}          node  The current node of the traversal.
  # @return {Array.<Node>}        An array of child-nodes.
  collect: (node) ->
    child for child in node.children when `child.nodeType == Node.ELEMENT_NODE`

Level4ChildrenIterator.create = (callback) ->
  new Level4ChildrenIterator callback
