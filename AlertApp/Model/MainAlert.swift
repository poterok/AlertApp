//
//  Alerts.swift
//  AlertApp
//
//  Created by Dima Dimov on 09.06.2022.
//

import Foundation
import UIKit


class MainAlert {
///MARK: Указываем имя
    func mainAlert (title:String, description:String, style: UIAlertController.Style, viewController: UIViewController, completion: @escaping (String) -> Void ) {
        
        let alert = UIAlertController(title: title, message: description, preferredStyle: style)
        
        let action = UIAlertAction(title: "Set your name", style: .default) {(action) in
            let text = alert.textFields?.first?.text ?? ""
            completion(text)
        }
        alert.addTextField()
        alert.addAction(action)
        viewController.present(alert, animated: true)
    }
    
}
///MARK: Ищем сумму
class FindeSumAlert:MainAlert {
    
    func resultAlert (title:String, description:String, style: UIAlertController.Style, viewController:UIViewController, completion: @escaping (String) -> Void ){
        let alert = UIAlertController(title: title, message: description, preferredStyle: style)
        let action2 = UIAlertAction(title: "Укажи 2 числа", style: .default) {(action2) in
            let text = alert.textFields?.first?.text ?? ""
            let text2 = alert.textFields?.last?.text ?? ""
            
            if (Int(text) != nil) && (Int(text2) != nil) {
                print("Прверили")
            } else {
                let error = ErrorAlert()
                error.resultAlert(title: "Ошибка", description: "Введите числа", style: .alert, viewController: viewController)
                return
            }
            var sum  = Int(text)! + Int(text2)!
            completion(String(sum))
        }
        alert.addAction(action2)
        alert.addTextField()
        alert.addTextField()
        viewController.present(alert, animated: true)
           
    }
}


class ErrorAlert {
    func resultAlert (title:String, description:String, style: UIAlertController.Style,viewController:UIViewController) {
        let alert = UIAlertController(title: title, message: description, preferredStyle: style)
        let action = UIAlertAction(title: "ОК", style: .cancel)
        alert.addAction(action)
        viewController.present(alert, animated: true)
        
    }
}

