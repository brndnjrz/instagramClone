//
//  instagramCloneApp.swift
//  instagramClone
//
//  Created by Brandon Fabian Juarez on 8/13/23.
// go to website to finish setting up authentication https://console.firebase.google.com/project/instagramswiftui-81f8e/overview

import SwiftUI
import FirebaseCore
class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct instagramCloneApp: App {
    //register app delegate for firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
