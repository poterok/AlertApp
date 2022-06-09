//
//  Alerts.swift
//  AlertApp
//
//  Created by Dima Dimov on 09.06.2022.
//

import Foundation
import UIKit


class MainAlert {
    
    
    
    func mainAlert (title:String, description:String, style: UIAlertController.Style, viewController:ViewController) {
        let alert = UIAlertController(title: title, message: description, preferredStyle: style)
        
        let action = UIAlertAction(title: "Set your name", style: .default) {(action) in
            let text = alert.textFields?.first?.text ?? ""
                viewController.nameLabel.text! += text
        }
        alert.addTextField()
        alert.addAction(action)
        viewController.present(alert, animated: true)
    }
    
    
    func resultAlert (title:String, description:String, style: UIAlertController.Style, viewController:ViewController){
        let alert = UIAlertController(title: title, message: description, preferredStyle: style)
        let action2 = UIAlertAction(title: "Укажи 2 числа", style: .default) {(action2) in
            let text = alert.textFields?.first?.text ?? ""
            let text2 = alert.textFields?.last?.text ?? ""
            
            let sum  = Int(text)! + Int(text2)!
            viewController.sumLabel.text! += String(sum)
        }
            alert.addAction(action2)
            alert.addTextField()
            alert.addTextField()
            
            viewController.present(alert, animated: true)
            
        
    }
}
