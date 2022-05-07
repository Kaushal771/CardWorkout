//
//  CardSelectionVC.swift
//  CardWorkout
//
//  Created by Kaushal Desai on 2022-05-06.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    let cardImageView = UIImageView()
    let stopButton = CWButton(backgroundColor: .systemRed, title: "Stop!")
    let resetButton = CWButton(backgroundColor: .systemBlue, title: "Reset")
    let rulesButton = CWButton(backgroundColor: .systemPurple, title: "Rules")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
        
    }
    
    func configureUI() {
        configureCardImageView()
        configureStopButton()
        configureResetButton()
        configureRulesButton()
    }
    
    func configureCardImageView() {
        // adding Imageview to Main view and giving it a default image as the AS card
        
        view.addSubview(cardImageView)
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        cardImageView.image = UIImage(named: "AS")
        
        // addding the constraints for the imageView
        
        NSLayoutConstraint.activate([
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            cardImageView.heightAnchor.constraint(equalToConstant: 350),
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75)
        ])
        
    }
    
    func configureStopButton() {
        // adding the button to main view and dont need to add TAMIC because we added that during the configuration of CWButton which is what this button is
        view.addSubview(stopButton)
        
        //adding the constraints for Stop Button
        
        NSLayoutConstraint.activate([
            stopButton.widthAnchor.constraint(equalToConstant: 260),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.centerYAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 30)
        ])
        
    }
    
    func configureResetButton() {
        // adding the button to main view and dont need to add TAMIC because we added that during the configuration of CWButton which is what this button is
        view.addSubview(resetButton)

        //adding the constraints for Stop Button

        NSLayoutConstraint.activate([
            resetButton.widthAnchor.constraint(equalToConstant: 115),
            resetButton.heightAnchor.constraint(equalToConstant: 50),
            resetButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor),
            resetButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
        ])

    }

    func configureRulesButton() {
        view.addSubview(rulesButton)

        //adding the constraints for Stop Button

        NSLayoutConstraint.activate([
           rulesButton.widthAnchor.constraint(equalToConstant: 115),
           rulesButton.heightAnchor.constraint(equalToConstant: 50),
           rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor),
           rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
        ])
    }


}
