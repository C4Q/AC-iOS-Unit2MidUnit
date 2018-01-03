//
//  ViewController.swift
//  AC-iOS-Unit2MidUnit
//
//  Created by C4Q  on 10/18/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    var pModel = PoloniusMonologueModel()
    var rModel = RomeoAndJulietModel()
    
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = label.font.withSize(30)
        label.text = "Polonius Monologue"
        return label
    }()
    
    lazy var textLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        //label.text = pModel(
        return label
        
    }()
    
    lazy var nextLineButton: UIButton = {
        let button = UIButton()
        button.setTitle("Next Line", for: .normal)
        button.addTarget(self, action: #selector(nextLinePressed), for: UIControlEvents.touchUpInside)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(UIColor.black, for: .normal)
        return button
    }()
    
    lazy var romeoLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Romeo And Juliet: Scene IV"
        return label
    }()
    
    lazy var romeoTextField: UITextField = {
        let textfield = UITextField()
        textfield.textAlignment = .center
        textfield.placeholder = "input here"
        //textfield.backgroundColor = .red
        return textfield
    }()
    lazy var romeoTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Text here"
        return textView
    }()
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let text = romeoTextField.text else {
            return false
        }
        switch rModel.charTextCheck(text) {
        case .romeo:
            textbox.text = characterPlayLines

        }
        romeoTextField.resignFirstResponder()
        return true
    }
    
    @objc func nextLinePressed() {
        textLabel.text = pModel.nextLine()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        romeoTextField.delegate = self
        view.backgroundColor = .white
        addSubViews()
        setConstraints()
    }
  
    func addSubViews() {
        self.view.addSubview(titleLabel)
        self.view.addSubview(textLabel)
        self.view.addSubview(nextLineButton)
        self.view.addSubview(romeoLabel)
        self.view.addSubview(romeoTextField)
        self.view.addSubview(romeoTextView)
    }
    
    func setConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
//        titleLabel.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.1).isActive = true
        titleLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        //        titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -(self.view.bounds.height / 2.75)).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
//        textLabel.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.5).isActive = true
        textLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -(self.view.bounds.height / 5)).isActive = true
        textLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    
        nextLineButton.translatesAutoresizingMaskIntoConstraints = false
        nextLineButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        nextLineButton.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 30).isActive = true
    
        romeoLabel.translatesAutoresizingMaskIntoConstraints = false
        romeoLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        romeoLabel.topAnchor.constraint(equalTo: nextLineButton.bottomAnchor).isActive = true
        
        romeoTextField.translatesAutoresizingMaskIntoConstraints = false
        romeoTextField.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.6)
        romeoTextField.topAnchor.constraint(equalTo: romeoLabel.bottomAnchor, constant: 20).isActive = true
        romeoTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        romeoTextView.translatesAutoresizingMaskIntoConstraints = false
        romeoTextView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.8).isActive = true
        romeoTextView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.3).isActive = true
        romeoTextView.topAnchor.constraint(equalTo: romeoTextField.bottomAnchor, constant: 20).isActive = true
        romeoTextView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    }
}

