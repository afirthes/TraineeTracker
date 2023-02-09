//
//  SecondaryButton.swift
//  TraineeTracker
//
//  Created by Afir Thes on 09.02.2023.
//

import UIKit

final class SecondaryButton: UIButton {
    private let label = UILabel()
    private let iconView = UIImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        layoutViews()
        configure()
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setTitle(_ title: String) {
        label.text = title
    }
}

private extension SecondaryButton {
    func addViews() {
        addView(label)
        addView(iconView)
    }

    func layoutViews() {
        backgroundColor = R.Colors.secondary
        layer.cornerRadius = 14
        makeSystem(self)

        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),

            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.trailingAnchor.constraint(equalTo: iconView.leadingAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
        ])
    }

    func configure() {
        label.textColor = R.Colors.active
        label.textAlignment = .center
        label.font = R.Fonts.helveticaRegular(with: 14)

        iconView.image = R.Images.Common.downArrow?.withRenderingMode(.alwaysTemplate)
        iconView.tintColor = R.Colors.active
    }
}
