//
//  BaseInfoView.swift
//  TraineeTracker
//
//  Created by Afir Thes on 09.02.2023.
//

import UIKit

class BaseInfoView: BaseView {
    
    
    init(with title: String? = nil, buttonTitle: String? = nil) {
        titleLabel.text = title?.uppercased()
        titleLabel.textAlignment = buttonTitle == nil ? .center : .left
        button.setTitle(buttonTitle, for: .normal)
        button.isHidden = buttonTitle == nil
        super.init(frame: .zero)
    }
    
    private let titleLabel:UILabel = {
        let lable = UILabel()
        lable.font = R.Fonts.helveticaRegular(with: 13)
        lable.textColor = R.Colors.inActive
        lable.text = "Test".uppercased()
        return lable
    }()
    
    private let button:UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        return button
    }()
    
    private let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.borderColor = R.Colors.separator.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
        return view
    }()
    
    func addButtonTarget(target: Any?, action: Selector) {
        button.addTarget(self, action: action, for: .touchUpInside)
    }
}

@objc extension BaseInfoView {
    override func setupViews() {
        super.setupViews()
        
        setupView(titleLabel)
        setupView(contentView)
        setupView(button)
    }

    override func constraintViews() {
        super.constraintViews()
        
        let contentTopAnchor: NSLayoutAnchor = titleLabel.text == nil ? topAnchor : titleLabel.bottomAnchor
        let contentOffset: CGFloat  = titleLabel.text == nil ? 0 : 10
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            button.trailingAnchor.constraint(equalTo: trailingAnchor ),
            button.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 130),
            button.heightAnchor.constraint(equalToConstant: 30),
        
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
