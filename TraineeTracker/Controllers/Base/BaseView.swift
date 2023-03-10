//
//  BaseView.swift
//  TraineeTracker
//
//  Created by Afir Thes on 09.02.2023.
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)

        setupViews()
        constraintViews()
        configureAppearance()
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@objc extension BaseView {
    func setupViews() {}

    func constraintViews() {}

    func configureAppearance() {}
}
