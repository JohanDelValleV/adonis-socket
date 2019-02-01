'use strict'

class SettingController {
  constructor ({ socket, request }) {
    this.socket = socket
    this.request = request
  }
  onMessage (message) {
    //Comando
    this.socket.broadcastToAll('message', message)
    console.log(message)
  }
}

module.exports = SettingController
