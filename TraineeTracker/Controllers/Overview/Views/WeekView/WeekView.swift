//
//  WeekView.swift
//  TraineeTracker
//
//  Created by Afir Thes on 09.02.2023.
//

import UIKit

final class WeekView: BaseView {
    private let calendar = Calendar.current
    private let stackView = UIStackView()
}

extension WeekView {
    override func setupViews() {
        super.setupViews()
        setupView(stackView)
    }

    override func constraintViews() {
        super.constraintViews()

        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }

    override func configureAppearance() {
        super.configureAppearance()

        stackView.spacing = 7
        stackView.distribution = .fillEqually
        var weeksdays = calendar.shortStandaloneWeekdaySymbols

        if calendar.firstWeekday == 1 {
            let sunday = weeksdays.remove(at: 0)
            weeksdays.append(sunday)
        }

        weeksdays.enumerated().forEach { index, dayName in
            let view = WeekDayView()
            view.configure(with: index, and: dayName)
            stackView.addArrangedSubview(view)
        }
    }
}
