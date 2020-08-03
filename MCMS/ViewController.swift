//
//  ViewController.swift
//  MCMS
//
//  Created by Student on 7/28/20.
//  Copyright © 2020 Morgan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var creatureTableView: UITableView!
    
    class MagicalCreature {
       let String = "name"
       let Array = "creatures"
       let creatures = ["snake", "tiger", "lion"]
    }
    
    var
    creatures = ["snake", "tiger", "lion"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        creatureTableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return creatures.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = creatures[indexPath.row]
        return cell
    }
    @IBAction func addButtonPressed(_ sender: Any) {
      var textfield = UITextField()
        
        let alert = UIAlertController(title: "Add creature", message: "", preferredStyle:  .alert)
        let action = UIAlertAction(title: "Add New Creature", style:  .default)
        { (action) in
            self.creatures.append(textfield.text!)
            self.creatureTableView.reloadData()
        
    }
    
    alert.addTextField { (alertTextField) in
    alertTextField.placeholder = "Add new creature"
    textfield = alertTextField
    }
    
    alert.addAction(action)
    
    present(alert, animated: true, completion: nil)
    
}
 
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete) {
            creatures.remove(at: indexPath.creature)
            creatureTableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedCell = creatures[sourceIndexPath.creatures]
        creatures.remove(at: sourceIndexPath.creatures)
        creatures.insert(movedCell, at: destinationIndexPath.creature)
    }
    
    @IBAction func editButtonPressed(_ sender: UIBarButtonItem) {
   
        self.creatureTableView.isEditing = !self.creatureTableView.isEditing; sender.title = (self.creatureTableView.isEditing) ? "Done" : "Edit"
    
    
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let indexPath = creatureTableView.indexPathForSelectedRow!
       let creature = creatures[indexPath.row]
       let vc = segue.destination as! ImageViewController
       vc.creature = creature
    
    
}







}
