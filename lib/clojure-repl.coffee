ClojureReplView = require './clojure-repl-view'

module.exports =
  clojureReplView: null

  activate: (state) ->
    @clojureReplView = new ClojureReplView(state.clojureReplViewState)

  deactivate: ->
    @clojureReplView.destroy()

  serialize: ->
    clojureReplViewState: @clojureReplView.serialize()
