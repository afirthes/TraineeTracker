//
//  BaseInfoView.swift
//  TraineeTracker
//
//  Created by Afir Thes on 09.02.2023.
//

import UIKit

class BaseInfoView: BaseView {
    
    
    init(with title: String? = nil, alignment: NSTextAlignment = .left) {
        titleLabel.text = title?.uppercased()
        titleLabel.textAlignment = alignment
        super.init(frame: .zero)
    }
    
    private let titleLabel:UILabel = {
        let lable = UILabel()
        lable.font = R.Fonts.helveticaRegular(with: 13)
        lable.textColor = R.Colors.inActive
        lable.text = "Test".uppercased()
        return lable
    }()
    
    private let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.borderColor = R.Colors.separator.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
        return view
    }()
    
}

@objc extension BaseInfoView {
    override func setupViews() {
        super.setupViews()
        
        setupView(titleLabel)
        setupView(contentView)
    }

    override func constraintViews() {
        super.constraintViews()
        
        let contentTopAnchor: NSLayoutAnchor = titleLabel.text == nil ? topAnchor : titleLabel.bottomAnchor
        let contentOffset: CGFloat  = titleLabel.text == nil ? 0 : 10
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
        
            contentView.topAnchor.constraint(equalTo: contentTopAnchor, constant: contentOffset),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

    override func configureAppearance() {
        super.configureAppearance()
        
        backgroundColor = .clear
    }
}
