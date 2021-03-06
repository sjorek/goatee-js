###
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
###

{Processor} = require 'goatee/Action/Processor'

exports = module?.exports ? this

## ActionObjectModel
#
# The Action Object Model provides chips (= Cascading Hierarchical
# Action Projection Sheets) and implements the IOM to complement
# DOM and CSSOM.
#
# @class
# @namespace goatee.Action.Engine
exports.ActionObjectModel = class ActionObjectModel extends Processor

ActionObjectModel.boot = (document) ->
