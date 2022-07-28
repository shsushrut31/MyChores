//
//  AddChoreController.swift
//  MyChores
//
//  Created by sushrut on 28/07/22.
//

import UIKit

class AddChoreController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupNavigationbar()
    }
    
    private func setupNavigationbar() {
        self.title = "Add Chore"
        let barButtonAdd = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(addChore))
        barButtonAdd.tintColor = UIColor(named: "AppButtonColor")
        self.navigationItem.setRightBarButton(barButtonAdd, animated: false)
        
        let barButtonCancel = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancel))
        barButtonCancel.tintColor = UIColor(named: "AppButtonColor")
        self.navigationItem.setLeftBarButton(barButtonCancel, animated: false)
    }
    
    @objc private func addChore() {
        
    }
    
    @objc private func cancel() {
        self.dismiss(animated: true, completion: nil)
    }
}
