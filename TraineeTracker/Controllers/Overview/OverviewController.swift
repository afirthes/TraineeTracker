//
//  OverviewController.swift
//  TraineeTracker
//
//  Created by Afir Thes on 08.02.2023.
//

import UIKit

class OverviewController: BaseController {
    private let navBar = OverviewNavBar()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Today"
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .overview)
    }
}

extension OverviewController {
    override func addViews() {
        super.addViews()

        view.addSubview(navBar)
    }

    override func layoutViews() {
        super.layoutViews()

        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),

        ])
    }

    override func configure() {
        super.configure()

        navBar.translatesAutoresizingMaskIntoConstraints = false
        navigationController?.navigationBar.isHidden = true
    }
}
