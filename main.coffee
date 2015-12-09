remote = require 'remote'
dialog = remote.require 'dialog'

document.getElementById("btn").onclick = ->
  console.log "dialog"
  dialog.showOpenDialog (filename) ->
    console.log filename
console.log "read"
