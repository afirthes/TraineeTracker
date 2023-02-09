//
//  SettingsController.swift
//  TraineeTracker
//
//  Created by Afir Thes on 08.02.2023.
//

class SettingsController: BaseController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settings"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.settings
    }
}
