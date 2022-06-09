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
    @IBOutlet weak var sumLabel: UILabel!
    @IBOutlet weak var guessLabel: UILabel!
    @IBOutlet weak var buttonStackLabel: UIStackView!
    @IBOutlet weak var guessButton: UIButton!
    @IBOutlet weak var findeSumButton: UIButton!
    let alert = MainAlert()
    let findeSumAlert = FindeSumAlert()
    
///MARK:Алерт после загрузки
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        alert.mainAlert(title: "Привет", description: "Укажи свое имя", style: .alert, viewController: self) {
            text1 in self.nameLabel.text! += text1
        }
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
    @IBAction func findeSum(_ sender: Any) {
        
        findeSumAlert.resultAlert(title: "Cложи 2 числа", description: "Сожи", style: .alert, viewController: self) {  sum in self.sumLabel.text! = "Sum = \(sum)" }
    }
}

