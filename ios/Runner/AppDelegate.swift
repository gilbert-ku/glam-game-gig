// ios/Runner/AppDelegate.swift

import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    private let channel = "com.yourcompany.smartmirror"

    override func application(
      _ application: UIApplication,
      didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
      let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
      let methodChannel = FlutterMethodChannel(name: channel, binaryMessenger: controller.binaryMessenger)

      methodChannel.setMethodCallHandler { (call: FlutterMethodCall, result: @escaping FlutterResult) in
          if call.method == "sendCommand" {
              if let args = call.arguments as? [String: Any], let command = args["command"] as? String {
                  // Handle command here
                  result(nil)
              } else {
                  result(FlutterError(code: "INVALID_ARGUMENT", message: "Invalid command", details: nil))
              }
          } else {
              result(FlutterMethodNotImplemented)
          }
      }

      return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
