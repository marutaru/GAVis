remote = require 'remote'
dialog = remote.require 'dialog'

fs = require 'fs'






document.getElementById("btn").onclick = ->
  console.log "dialog"
  dialog.showOpenDialog (filepath) ->
    console.log "file path:"+filepath
    stat = fs.statSync("#{filepath}")
    console.log "stat:%O",stat
    if stat.isFile() is true
      console.log "true"
      fs.readFile "#{filepath}",'utf8',(err,data) ->
        throw err if err
        console.log data
    else
      alert "Not a file!"

