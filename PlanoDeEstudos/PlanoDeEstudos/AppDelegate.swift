//
//  AppDelegate.swift
//  PlanoDeEstudos
//
//  Created by Eric Brito
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let center = UNUserNotificationCenter.current()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window?.tintColor = UIColor(named: "main")
        
        center.delegate = self
        center.getNotificationSettings { settings in
            if settings.authorizationStatus == .notDetermined {
                let options: UNAuthorizationOptions = [.alert, .sound, .badge, .carPlay]
                self.center.requestAuthorization(options: options) { (success, error) in
                    if error == nil {
                        print(success)
                    } else {
                        print(error!.localizedDescription)
                    }
                }
            } else if settings.authorizationStatus == .denied {
                print("Usuário negou a Notificação")
            }
        }
        
        let confirmAction = UNNotificationAction(identifier: "Confirm", title: "Já estudei 👍", options: [.foreground])
        let cancelAction = UNNotificationAction(identifier: "Cancel", title: "Cancelar", options: [])
        let category = UNNotificationCategory(identifier: "Lembrete", actions: [confirmAction, cancelAction], intentIdentifiers: [], hiddenPreviewsBodyPlaceholder: "", options: [.customDismissAction])
        center.setNotificationCategories([category])
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
   }

    func applicationDidBecomeActive(_ application: UIApplication) {
   }

    func applicationWillTerminate(_ application: UIApplication) {
   }

}

extension AppDelegate: UNUserNotificationCenterDelegate {
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.alert, .sound])
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        
        let id = response.notification.request.identifier
        print(id)
        
        switch response.actionIdentifier {
        case "Confirm":
            print("Usuário confirmou que já estudou a matéria")
            
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "Confirmed"), object: nil, userInfo: ["id": id])
            
        case "Cancel":
            print("Usuário cancelou")
        case UNNotificationDefaultActionIdentifier:
            print("Tocou na própria notificação")
        case UNNotificationDismissActionIdentifier:
            print("Dismiss na notificação")
        default:
            break
        }
        completionHandler()
    }
}







