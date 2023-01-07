//
//  PersonsView.swift
//  1WindowNoStoryboardApp
//
//  Created by Полищук Александр on 20.08.2022.
//

import UIKit

class PersonsView: UIView {
    
    // MARK: - Parameters
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Persons"
        label.textColor = #colorLiteral(red: 0.2454499006, green: 0.2894837558, blue: 0.3496103287, alpha: 1)
        label.font = UIFont(name: "Avenir Next", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var backgroundGrayView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9561659694, green: 0.9591339231, blue: 0.9530903697, alpha: 1)
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var minusButton: UIButton = {
        let button = UIButton(type: .system)
        button.isEnabled = false
        button.setTitle("-", for: .normal)
        button.titleLabel?.font = UIFont(name: "Avenir Next", size: 40)
        button.tintColor = #colorLiteral(red: 0.4513477087, green: 0.4857000113, blue: 0.5633345246, alpha: 1)
        button.addTarget(self, action: #selector(minusButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var plusButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("+", for: .normal)
        button.titleLabel?.font = UIFont(name: "Avenir Next", size: 40)
        button.tintColor = #colorLiteral(red: 0.4513477087, green: 0.4857000113, blue: 0.5633345246, alpha: 1)
        button.addTarget(self, action: #selector(plusButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var counterLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Bold", size: 48)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var counter = 0
    
    // MARK: - Lifetime Cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func minusButtonTapped() {
        counter -= 1
        counterLabel.text = "\(counter)"
        
        if counter == 0 {
            minusButton.isEnabled = false
        }
    }
    
    // MARK: -  objc Method
    
    @objc private func plusButtonTapped() {
        counter += 1
        counterLabel.text = "\(counter)"
        minusButton.isEnabled = true
    }
    
    // MARK: - setupView and setContraints
    
    private func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(titleLabel)
        addSubview(backgroundGrayView)
        backgroundGrayView.addSubview(minusButton)
        backgroundGrayView.addSubview(plusButton)
        backgroundGrayView.addSubview(counterLabel)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            
            backgroundGrayView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 2),
            backgroundGrayView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            backgroundGrayView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            backgroundGrayView.heightAnchor.constraint(equalToConstant: 100),
            
            minusButton.topAnchor.constraint(equalTo: backgroundGrayView.topAnchor, constant: 0),
            minusButton.leadingAnchor.constraint(equalTo: backgroundGrayView.leadingAnchor, constant: 0),
            minusButton.heightAnchor.constraint(equalTo: backgroundGrayView.heightAnchor),
            minusButton.widthAnchor.constraint(equalToConstant: 80),
            
            plusButton.topAnchor.constraint(equalTo: backgroundGrayView.topAnchor, constant: 0),
            plusButton.trailingAnchor.constraint(equalTo: backgroundGrayView.trailingAnchor, constant: 0),
            plusButton.heightAnchor.constraint(equalTo: backgroundGrayView.heightAnchor),
            plusButton.widthAnchor.constraint(equalToConstant: 80),
            
            counterLabel.centerYAnchor.constraint(equalTo: backgroundGrayView.centerYAnchor),
            counterLabel.leadingAnchor.constraint(equalTo: minusButton.trailingAnchor, constant: 10),
            counterLabel.trailingAnchor.constraint(equalTo: plusButton.leadingAnchor, constant: 10),
        ])
    }
}
