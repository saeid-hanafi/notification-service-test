//
//  NotificationObj.swift
//  Notification Service
//
//  Created by Macvps on 4/26/23.
//

import Foundation

class NotificationsObj {
    static let shared: NotificationsObj = NotificationsObj()
    
    func postNotification(name: Notification.Name, post: [AnyHashable : Any]) {
        NotificationCenter.default.post(name: name, object: NotificationsObj.shared, userInfo: post)
    }
}
