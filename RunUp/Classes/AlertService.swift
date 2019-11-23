//
//  AlertService.swift
//  RunUp
//
//  Created by Ahmed Bazina on 22/11/2019.
//  Copyright © 2019 Ahmed Bazina. All rights reserved.
//

import UIKit

class AlertService {
    
    private init() {}
    static let shared = AlertService()
    
    func successMessage(with code: String) -> UIAlertController {
        let alert = UIAlertController(title: "Success", message: "You have successfully logged in with code: \(code)", preferredStyle: .alert)
        let action = UIAlertAction(title: "Dismiss", style: .cancel)
        alert.addAction(action)
        return alert
    }
}
