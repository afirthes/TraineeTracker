//
//  OverviewController.swift
//  TraineeTracker
//
//  Created by Afir Thes on 08.02.2023.
//

import UIKit

class OverviewController: BaseController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Today"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.overview
    }
}
