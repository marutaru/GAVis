'use strict'

app = require('app')
BrowserWindow = require('browser-window')

require('crash-reporter').start()

mainWindow = null

app.on('window-all-closed', () ->
  if process.platform != 'darwin'
    app.quit()
)

app.on('ready', () ->

  mainWindow = new BrowserWindow {width:800,height:600}
  mainWindow.loadURL('file://' + __dirname + '/index.html')
  mainWindow.webContents.openDevTools()
  mainWindow.on('closed',() ->
    mainWindow = null
  )
)

