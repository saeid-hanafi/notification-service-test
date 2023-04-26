//
//  ViewController.swift
//  Notification Service
//
//  Created by Macvps on 4/26/23.
//

import UIKit

class ViewController: UIViewController {
    private let notificationName = Notification.Name.mainView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let notificationManager: NotificationManager = NotificationManager(observer: self, notificationName: self.notificationName)
        notificationManager.viewNotificationHandler()
    }

    @IBAction func notificationBtn(_ sender: Any) {
        let names: [Int: String] = [1: "saeed", 2: "roz", 3: "ali"]
        NotificationsObj.shared.postNotification(name: self.notificationName, post: names)
    }
    
    @objc func notificationObserver(_ notification: Notification) {
        print("Notification Received!")
        
        let data = notification.userInfo as? [Int: String]
        if data != nil {
            print("Notification Data is : \(String(describing: data))")
        }
    }
    
}

