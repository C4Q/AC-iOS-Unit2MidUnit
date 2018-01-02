//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //Polonius
    
    var polonius = PoloniusMonologueModel()
    
    var poloniusStackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.spacing = 15
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.axis = .vertical
        
        return stackView
    }()
    
    var poloniusTitleLabel: UILabel = {
        let label = UILabel()
        
        label.text = "Polonius Monologue"
        label.textColor = UIColor(red: 0.925, green: 0.522, blue: 0.585, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont(name: "Futura-Medium", size: 28)
        
        return label
    }()
    
    lazy var poloniusTextView: UITextView = {
        let textView = UITextView()
        
        textView.text = self.polonius.firstLine
        textView.textColor = UIColor(red: 0.745, green: 0.278, blue: 0.309, alpha: 1)
        textView.backgroundColor = .white
        textView.font = UIFont(name: "Futura-MediumItalic", size: 18)
        textView.textAlignment = .center
        roundEdgesOf(textView)
        
        return textView
    }()
    
    lazy var nextLineButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("Next Line", for: .normal)
        button.titleLabel?.font = UIFont(name: "Futura-Medium", size: 20)
        button.setTitleColor(UIColor(red: 0.745, green: 0.278, blue: 0.309, alpha: 1)
, for: .normal)
        button.titleLabel?.textAlignment = .center
        button.addTarget(self, action: #selector(nextLineButtonPressed), for: .touchUpInside)
        
        return button
    }()
    
    //Romeo and Juliet
    
    var romeoJuliet = RomeoAndJulietModel()
    
    var romeoJulietStackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.spacing = 15
        
        return stackView
    }()
    
    var romeoJulietTitleLabel: UILabel = {
        let label = UILabel()
        
        label.text = "Romeo and Juliet"
        label.textColor = UIColor(red: 0.925, green: 0.522, blue: 0.585, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont(name: "Futura-Medium", size: 28)

        return label
    }()
    
    var romeoJulietTextField: UITextField = {
        let textField = UITextField()
        
        textField.text = ""
        textField.placeholder = "Enter Romeo, Benvolio, or Mercutio"
        textField.textAlignment = .center
        textField.textColor = UIColor(red: 0.745, green: 0.278, blue: 0.309, alpha: 1)
        textField.backgroundColor = .white
        textField.font = UIFont(name: "Futura-Medium", size: 15)
        textField.borderStyle = .roundedRect
        
        return textField
    }()
    
    lazy var romeoJulietTextView: UITextView = {
        let textView = UITextView()
        
        textView.text = ""
        textView.textAlignment = .left
        textView.textColor = UIColor(red: 0.745, green: 0.278, blue: 0.309, alpha: 1)
        textView.font = UIFont(name: "Futura-MediumItalic", size: 18)
        textView.backgroundColor = .white
        roundEdgesOf(textView)
        
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 1, green: 0.877, blue: 0.892, alpha: 1)
        
        poloniusStackView.addArrangedSubview(poloniusTitleLabel)
        poloniusStackView.addArrangedSubview(poloniusTextView)
        poloniusStackView.addArrangedSubview(nextLineButton)
        
        self.view.addSubview(poloniusStackView)
        
        romeoJulietStackView.addArrangedSubview(romeoJulietTitleLabel)
        romeoJulietStackView.addArrangedSubview(romeoJulietTextField)
        romeoJulietTextField.delegate = self
        romeoJulietStackView.addArrangedSubview(romeoJulietTextView)
        
        self.view.addSubview(romeoJulietStackView)
        
        setUpConstraints()
    }
    
    @objc func nextLineButtonPressed() {
        poloniusTextView.text = polonius.nextLine()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let inputName = textField.text else {
            return false
        }
        romeoJulietTextView.text = romeoJuliet.name(of: inputName).lines
        switch romeoJuliet.name(of: inputName).exists {
        case true:
            textField.resignFirstResponder()
            return true
        case false:
            return false
        }
    }
    
    func setUpConstraints() {
       
        poloniusStackView.translatesAutoresizingMaskIntoConstraints = false
        poloniusStackView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        poloniusStackView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        poloniusStackView.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.3).isActive = true
        poloniusStackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        poloniusTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        poloniusTitleLabel.widthAnchor.constraint(equalTo: poloniusStackView.widthAnchor, multiplier: 0.8).isActive = true
        poloniusTitleLabel.heightAnchor.constraint(equalTo: poloniusStackView.heightAnchor, multiplier: 0.25).isActive = true
        poloniusTitleLabel.centerXAnchor.constraint(equalTo: poloniusStackView.centerXAnchor).isActive = true
        
        poloniusTextView.translatesAutoresizingMaskIntoConstraints = false
        poloniusTextView.setContentHuggingPriority(UILayoutPriority(250), for: .horizontal)
        poloniusTextView.setContentHuggingPriority(UILayoutPriority(250), for: .vertical)
        poloniusTextView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        poloniusTextView.widthAnchor.constraint(equalTo: poloniusStackView.widthAnchor, multiplier: 0.6).isActive = true
        
        romeoJulietStackView.translatesAutoresizingMaskIntoConstraints = false
        romeoJulietStackView.topAnchor.constraint(equalTo: poloniusStackView.bottomAnchor, constant: 10).isActive = true
        romeoJulietStackView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -30).isActive = true
        romeoJulietStackView.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        romeoJulietStackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
       romeoJulietTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        romeoJulietTitleLabel.heightAnchor.constraint(equalTo: romeoJulietStackView.heightAnchor, multiplier: 0.1).isActive = true
        romeoJulietTitleLabel.widthAnchor.constraint(equalTo: romeoJulietStackView.widthAnchor, multiplier: 0.7).isActive = true
        
        romeoJulietTextField.translatesAutoresizingMaskIntoConstraints = false
        romeoJulietTextField.heightAnchor.constraint(equalTo: romeoJulietTitleLabel.heightAnchor, multiplier: 1.2).isActive = true
        romeoJulietTextField.widthAnchor.constraint(equalTo: romeoJulietStackView.widthAnchor, multiplier: 0.7).isActive = true
        
        romeoJulietTextView.translatesAutoresizingMaskIntoConstraints = false
        romeoJulietTextView.widthAnchor.constraint(equalTo: romeoJulietStackView.widthAnchor, multiplier: 0.7).isActive = true
    }
    
    func roundEdgesOf(_ textView: UITextView) {
        textView.layer.cornerRadius = 10
        textView.layer.masksToBounds = true
        textView.layer.borderWidth = 1
        textView.layer.borderColor = UIColor.init(red: 0.745, green: 0.278, blue: 0.309, alpha: 1).cgColor
    }
    
}

