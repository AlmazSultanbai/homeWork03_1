//
//  ContactListViewController.swift
//  homeWork03_1
//
//  Created by Sultanbai Almaz on 24/5/23.
//

import UIKit

class ContactListViewController: UIViewController {
    
    private let  idCell = "cell"
    
    private var  contacts: [Contact] = []
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateData()
        tableView.dataSource = self
        
    }
    private func updateData() {
        
        contacts = [Contact(name: "Alik", telNumber: "0555 312567", image: "person"),
                    Contact(name: "Mara", telNumber: "056566565656", image: "star"),
                    Contact(name: "Chika", telNumber: "45345365646", image: "person"),
                    Contact(name: "Kama", telNumber: "36565645656", image: "star")]
        
    }
    
    
}

extension ContactListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /// # MARK : DEFAULT TABLE VIEW CELL
        let cell = UITableViewCell (style: .subtitle , reuseIdentifier: "cell")
        cell.textLabel?.text =  contacts[indexPath.row].name
        cell.imageView?.image = UIImage(systemName: contacts[indexPath.row ].image)  // UIImage(named: "ic_logo")
        cell.detailTextLabel?.text = contacts[indexPath.row ].telNumber
        return cell
        
        //        let cell = tableView.dequeueReusableCell(withIdentifier: idCell, for: indexPath)
        //        cell.textLabel?.text = "it is label : \(indexPath.row)"
        //        cell.imageView?.image = UIImage(systemName: "star")
        //        return cell
        
    }
}
extension ContactListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //        let vc = self.storyboard?.instantiateViewController(withIdentifier: "introViewController") as! introViewController
        //        vc.name = "\(indexPath)"
        //        navigationController?.pushViewController(vc, animated: true)
    }
}

