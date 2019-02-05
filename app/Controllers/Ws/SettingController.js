'use strict'

const exec = require('child_process').exec
const Setting = use('App/Models/Setting')

class SettingController {
  constructor ({ socket, request }) {
    this.socket = socket
    this.request = request
  }

  onMessage (id) {
    this.socket.broadcastToAll('message', id)
    console.log(id)
    this.show(id)
  }
  async show (id) {
    let setting = await Setting.findOrFail(id)
    exec('mysqldump --user='+[setting.user_db]+' --password='+[setting.password_db]+' -h 127.0.0.1 '+[setting.name_db]+' > '+[setting.name])
  }
}

module.exports = SettingController
