//
//  ViewController.swift
//  MyChores
//
//  Created by sushrut on 28/07/22.
//

import UIKit

class ChoresController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var arrChores: [String] = ["hello world", "second sentence", "how are you doing?", "Roger that!", "Fire in the hall", "This is the longest note to check the multiline feature of the app"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupNavigationbar()
        self.setupTableview()
    }
    
    private func setupNavigationbar() {
        self.title = "My Chores"
        let barBUtton = UIBarButtonItem(title: "Add New", style: .plain, target: self, action: #selector(openAddChoreScreen))
        barBUtton.tintColor = UIColor(named: "AppButtonColor")
        self.navigationItem.setRightBarButton(barBUtton, animated: false)
    }
    
    private func setupTableview() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    @objc private func openAddChoreScreen() {
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "AddChoreController") as? AddChoreController {
            let navController = UINavigationController(rootViewController: vc)
            self.present(navController, animated: true, completion: nil)
        }
    }
}

extension ChoresController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.arrChores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChoresTableCell", for: indexPath) as! ChoresTableCell
        cell.lblChore.text = self.arrChores[indexPath.row]
        return cell
    }
}

