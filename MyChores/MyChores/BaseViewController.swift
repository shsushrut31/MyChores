//
//  BaseViewController.swift
//  MyChores
//
//  Created by sushrut on 28/07/22.
//

import UIKit

class BaseViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = UIColor(named: "AppButtonColor")
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor(named: "AppButtonColor") ?? .purple]
    }
}
