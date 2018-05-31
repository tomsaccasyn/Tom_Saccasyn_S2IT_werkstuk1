//
//  TableViewController.swift
//  MobileAppsIOSWerkstuk
//
//  Created by student on 11/05/2018.
//  Copyright © 2018 EHB. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var Personen = [Persoon]();
    
    var p1 = Persoon(naam: "Hazard", voornaam: "Eden", foto: "edenhazard", address: Adress(straat: "Nijverheidskaai", huisnummer: 170, postcode: 1070, gemeente: "Anderlecht"), telefoonnummer: 041111111111, latitude: 50.842228, longitude: 4.322830)
    
    var p2 = Persoon(naam: "Pfaff", voornaam: "Jean-Marie", foto: "jeanmarie", address: Adress(straat: "Avenue Fosny", huisnummer: 47, postcode: 1060, gemeente: "Brussel"), telefoonnummer: 041111111111, latitude: 50.836787, longitude: 4.335394)
        var p3 = Persoon(naam:"Saccasyn",voornaam:"Tom",foto:"SaccasynTom",address: Adress(straat:"Birminghamstraat", huisnummer: 112, postcode:1070,gemeente:"Anderlecht"),telefoonnummer:043333333333,latitude:50.844525,longitude:4.322712)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Personen.append(p1)
        Personen.append(p2)
        Personen.append(p3)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Personen.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        // Configure the cell...
        let key:String = Personen[indexPath.row].Naam
        
        cell.textLabel?.text = key
        cell.detailTextLabel?.text = Personen[indexPath.row].Voornaam
        cell.imageView?.image = UIImage(named: Personen[indexPath.row].Foto)
        
        
        return cell

        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
        if let vc = segue.destination as? ViewControllerScherm2
        {
            var indexPath = self.tableView.indexPathForSelectedRow
            vc.temp = Personen[(indexPath?.row)!]
            vc.personentemp = Personen;
           
        }
       
        
    }/*
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }*/
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if (segue.identifier == "naarScherm2")
        {
         
            let nextScherm = segue.destination as! ViewControllerScherm2
            let indexPath = self.tableView.indexPathForSelectedRow
            nextScherm.temp = Personen[(indexPath?.row)!]
 
        }
    }*/

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
