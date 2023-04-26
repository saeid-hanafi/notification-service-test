//
//  NotificationManager.swift
//  Notification Service
//
//  Created by Macvps on 4/26/23.
//

import Foundation

class NotificationManager {
    private let observer: AnyObject!
    private let notificationName: Notification.Name?
    
    init(observer: AnyObject!, notificationName: Notification.Name?) {
        self.observer = observer
        self.notificationName = notificationName
    }
    
    func viewNotificationHandler() {
        NotificationCenter.default.addObserver(self.observer!, selector: #selector(self.observer!.notificationObserver(_:)), name: self.notificationName, object: NotificationsObj.shared)
    }
}

extension Notification.Name {
    static let mainView = Notification.Name("mainViewNotification")
}
