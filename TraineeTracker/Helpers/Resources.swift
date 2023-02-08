//
//  Resources.swift
//  TraineeTracker
//
//  Created by Afir Thes on 08.02.2023.
//

import UIKit

enum Resources {
    enum Colors {
        static var active = UIColor(hex: "437BFE")
        static var inActive = UIColor(hex: "929DA5")
        static var separator = UIColor(hex: "E8ECEF")
        static var titleGray = UIColor(hex: "545C77")
        static var background = UIColor(hex: "F8F9F9")
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }

    enum Strings {
        enum TabBar {
            static var overview = "Overview"
            static var session = "Session"
            static var progress = "Progress"
            static var settings = "Settings"
        }
    }

    enum Images {
        enum TabBar {
            static var overview = UIImage(systemName: "house")
            static var session = UIImage(systemName: "baseball")
            static var progress = UIImage(systemName: "alarm")
            static var settings = UIImage(systemName: "gear")
        }
    }
}
