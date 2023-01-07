//
//  TipsCollectionViewCell.swift
//  1WindowNoStoryboardApp
//
//  Created by Полищук Александр on 20.08.2022.
//

import UIKit

class TipsCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Parameters
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                layer.borderWidth = 3
                layer.borderColor = #colorLiteral(red: 1, green: 0.6451706371, blue: 0.2167396055, alpha: 1)
            } else {
                layer.borderWidth = 0
            }
        }
    }
    
    let procentLabel: UILabel = {
        let label = UILabel()
        label.text = "10%"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Bold", size: 24)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Lifetime cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - setupView and setContraints
    
    func setupView() {
        backgroundColor = #colorLiteral(red: 0.9561659694, green: 0.9591339231, blue: 0.9530903697, alpha: 1)
        layer.cornerRadius = 10
        addSubview(procentLabel)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            procentLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 2),
            procentLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -2),
            procentLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
}
