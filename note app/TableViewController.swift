//
//  TableViewController.swift
//  note app
//
//  Created by Amjad on 23/05/1444 AH.
//

import UIKit
var myNoteLest = [Note]()

class TableViewController: UITableViewController {


    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "noteCell", for: indexPath) as! TableViewCell
        let myNote: Note!
        myNote = myNoteLest[indexPath.row]
        cell.titleLbl.text = myNote.title
        cell.describtionLbl.text = myNote.desc
        
        return cell
    }

  
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myNoteLest.count
    }
   
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
}
