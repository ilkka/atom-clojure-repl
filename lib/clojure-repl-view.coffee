{View} = require 'atom'

module.exports =
class ClojureReplView extends View
  @content: ->
    @div class: 'clojure-repl overlay from-top', =>
      @div "The ClojureRepl package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "clojure-repl:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "ClojureReplView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
