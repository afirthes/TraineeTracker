//
//  SessionController.swift
//  TraineeTracker
//
//  Created by Afir Thes on 08.02.2023.
//

import UIKit

class SessionController: BaseController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .session)

        addNavBarButton(at: .left, with: "Pause")
        addNavBarButton(at: .right, with: "Finish")
    }
}
