//
//  ProgressController.swift
//  TraineeTracker
//
//  Created by Afir Thes on 08.02.2023.
//

import UIKit

class ProgressController: BaseController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Workout Progress"
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .progress)

        addNavBarButton(at: .left, with: "Export")
        addNavBarButton(at: .right, with: "Detaiils")
    }

    override func navBarLeftButtonHandler() {}

    override func navBarRightButtonHandler() {}
}
