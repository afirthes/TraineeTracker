//
//  SessionController.swift
//  TraineeTracker
//
//  Created by Afir Thes on 08.02.2023.
//

import UIKit

class SessionController: BaseController {
    
    private let timerView: BaseInfoView = {
       let view = BaseInfoView()
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .session)

        addNavBarButton(at: .left, with: "Pause")
        addNavBarButton(at: .right, with: "Finish")
    }
}

extension SessionController {
    override func addViews() {
        super.addViews()

        view.setupView(timerView)
    }

    override func layoutViews() {
        super.layoutViews()

        NSLayoutConstraint.activate([
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            timerView.heightAnchor.constraint(equalToConstant: 300)

        ])
    }

    override func configure() {
        super.configure()

    }
}
