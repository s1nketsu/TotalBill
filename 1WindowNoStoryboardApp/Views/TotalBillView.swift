//
//  TotalBillView.swift
//  1WindowNoStoryboardApp
//
//  Created by Полищук Александр on 20.08.2022.
//

import UIKit

class TotalBillView: UIView {
    
    // MARK: - Parameters
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Total Bill"
        label.textColor = #colorLiteral(red: 0.2454499006, green: 0.2894837558, blue: 0.3496103287, alpha: 1)
        label.font = UIFont(name: "Avenir Next", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var summTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = #colorLiteral(red: 0.9561659694, green: 0.9591339231, blue: 0.9530903697, alpha: 1)
        textField.layer.cornerRadius = 10
        textField.textColor = .black
        textField.font = UIFont(name: "Avenir Next Bold", size: 48)
        textField.textAlignment = .center
        textField.keyboardType = .numberPad
        textField.tintColor = #colorLiteral(red: 1, green: 0.6451706371, blue: 0.2167396055, alpha: 1)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    // MARK: - Lifetime Cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - setupView and setConstraints
    
    private func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(titleLabel)
        addSubview(summTextField)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            
            summTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 2),
            summTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            summTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            summTextField.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
}
