//
//  WeekDayView.swift
//  TraineeTracker
//
//  Created by Afir Thes on 09.02.2023.
//

import UIKit

extension WeekView {
    final class WeekDayView: BaseView {
        private let nameLabel = UILabel()
        private let dateLable = UILabel()
        private let stackView = UIStackView()

        func configure(with index: Int, and name: String) {
            let startOfWeek = Date().startOfWeek
            let currentDay = startOfWeek.goForward(to: index)
            let day = Calendar.current.component(.day, from: currentDay)
            let isToday = currentDay.stripTime() == Date().stripTime()

            backgroundColor = isToday ? R.Colors.active : R.Colors.background

            nameLabel.text = name.uppercased()
            nameLabel.textColor = isToday ? .white : R.Colors.inActive
            dateLable.text = "\(day)"
            dateLable.textColor = isToday ? .white : R.Colors.inActive
        }
    }
}

extension WeekView.WeekDayView {
    override func setupViews() {
        super.setupViews()
        setupView(stackView)
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(dateLable)
    }

    override func constraintViews() {
        super.constraintViews()

        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),

        ])
    }

    override func configureAppearance() {
        super.configureAppearance()

        backgroundColor = .red

        layer.cornerRadius = 5
        layer.masksToBounds = true

        nameLabel.font = R.Fonts.helveticaRegular(with: 9)
        dateLable.font = R.Fonts.helveticaRegular(with: 15)

        stackView.spacing = 3
        stackView.axis = .vertical

        nameLabel.textAlignment = .center
        dateLable.textAlignment = .center
    }
}
