//
//  ViewController.swift
//  AlertApp
//
//  Created by Dima Dimov on 09.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var resultLabel: UIStackView!
    @IBOutlet weak var buttonStackLabel: UIStackView!
    
    
    @IBOutlet weak var guessButton: UIButton!
    @IBOutlet weak var findeSumButton: UIButton!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guessButton.backgroundColor = .yellow
        findeSumButton.backgroundColor = .brown
        nameLabel.layer.masksToBounds = true
        nameLabel.layer.cornerRadius = 10
        resultLabel.layer.masksToBounds = true
        resultLabel.layer.cornerRadius = 10
        buttonStackLabel.layer.masksToBounds = true
        buttonStackLabel.layer.cornerRadius = 10
        
        
    }


}

