//
//  TableViewController.swift
//  prova2
//
//  Created by Sebastiano Panico on 19/11/2018.
//  Copyright © 2018 Sebastiano Panico. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
   var libro : [String] = ["MARISA","POPPINA"]
    @IBAction func nino(_ sender: Any) {
        print("OKOK")
    }
    
    @IBAction func bellissimo(_ sender: Any) {
        print("HH")
        libro.append("FUNZIONA")
        tableView.reloadData()
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        //return libro.count
        return libro.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // Configure the cell...
       cell.textLabel?.text = libro[indexPath.row]
       
       
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let quaderno = libro[indexPath.row]
        performSegue(withIdentifier: "seguire", sender: quaderno)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "seguire" {
            let vc = segue.destination as! ViewController
            let nino = sender as! String
            
            vc.stringa = nino
        }
    }
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        print ("NINO")
        return true
    }
 

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            libro.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath],  with: .fade)
            libro.append("CIAO")
     
        //   print ("ELIMINATO")
          //  tableView.reloadData()
        self.tableView.reloadData()
        } else if editingStyle == .insert {
                 libro.append("NINO")
                tableView.reloadData()
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
       /* performSegue(withIdentifier: "seguire", sender: nil)
            func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                if segue.identifier == "seguire" {
                    let vc = segue.destination as! ViewController
                    let nino = sender as! String
                    vc.stringa = "NINOSSSS"
                }
            }
           tableView.reloadData()
        }    
    }
 */
 }
    }
 
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    }

