//
//  carLogsApp.swift
//  carLogs
//
//  Created by Shawn on 2022-07-19.
//

import SwiftUI
import FirebaseCore

public var c = GlobalCar()
public var isAuth = false
class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
@main
struct carLogsApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
