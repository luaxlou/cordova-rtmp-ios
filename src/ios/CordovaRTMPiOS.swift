/**
 * Author: Archie, Disono (webmonsph@gmail.com)
 * Website: https://www.webmons.com
 *
 * Created at: 1/11/2019
 */

@objc(CordovaRTMPiOS) class CordovaRTMPiOS : CDVPlugin {
  func echo(_ command: CDVInvokedUrlCommand) {
    
    let rtmpConnection = RTMPConnection()
    let rtmpStream = RTMPStream(connection: rtmpConnection)
    
    var pluginResult = CDVPluginResult(
      status: CDVCommandStatus_ERROR
    )

    

    self.commandDelegate!.send(
      pluginResult, 
      callbackId: command.callbackId
    )
  }

  func streamRTMPAuth(_ command: CDVInvokedUrlCommand) {
    var pluginResult = CDVPluginResult(
      status: CDVCommandStatus_ERROR
    )

    let uri = command.arguments[0] as? String ?? ""
    let username = command.arguments[1] as? String ?? ""
    let password = command.arguments[2] as? String ?? ""

    pluginResult = CDVPluginResult(
        status: CDVCommandStatus_OK,
        messageAs: "Streaming to \(uri)"
    )

    self.commandDelegate!.send(
        pluginResult, 
        callbackId: command.callbackId
    )
  }
}
