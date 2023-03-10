//
//  ViewController.swift
//  ContactsApp
//
//  Created by Akshay Yendhe on 05/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView : UITableView!
    
    let names = [
        "John Smith",
        "Dan Smith",
        "Jason Smith",
        "Mary Smith"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
}
extension ViewController : UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped here!")
    }
    
}


extension ViewController : UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        
        return cell
    }
}
