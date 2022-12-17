//
//  ViewController.swift
//  note app
//
//  Created by Amjad on 23/05/1444 AH.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var myTitle: UITextField!
    
    @IBOutlet weak var myDescribshon: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func saveBtn(_ sender: Any) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context : NSManagedObjectContext = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Note", in: context)
        let newNote = Note(entity: entity!, insertInto: context)
        newNote.id = myNoteLest.count as NSNumber
        newNote.title = myTitle.text
        newNote.desc = myDescribshon.text
        do{
            try context.save()
            myNoteLest.append(newNote)
            navigationController?.popViewController(animated: true)
        }
        catch{
            print("===== save error =====")
            
        }
    }
    
    
}

