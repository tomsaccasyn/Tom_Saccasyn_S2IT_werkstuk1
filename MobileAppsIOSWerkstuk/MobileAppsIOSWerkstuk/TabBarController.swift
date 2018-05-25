//
//  TabBarController.swift
//  MobileAppsIOSWerkstuk
//
//  Created by student on 24/05/2018.
//  Copyright © 2018 EHB. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    var PersoneneersteArray = [Persoon]();
    
    var p1 = Persoon(naam: "Hazard", voornaam: "Eden" , foto: "edenhazard" , address: Adress(straat: "Nijverheidskaai" , huisnummer: 170 , postcode: 1070 , gemeente: "Brussel") , telefoonnummer: 04759949 , latitude: 50.841778 , longitude: 4.322869);
    var p2 = Persoon(naam: "Jean-Marie" , voornaam: "Pfaff" , foto: "jeanmarie" , address: Adress(straat: "Avenue Fonsny" , huisnummer: 47 , postcode: 1060 , gemeente: "Brussel") , telefoonnummer: 0411111111 , latitude: 50.836174 , longitude: 4.335685);
    
    override func viewDidLoad() {
        super.viewDidLoad()

        PersoneneersteArray = [p1,p2]
        
        
        
        [self.navigationController .setToolbarHidden(NO, animated: NO)]
        var item1 = UIBarButtonItem(barButtonSystemItem: UITabBarSystemItem.contacts, target: nil, action: nil)
        var item2 = UIBarButtonItem(barButtonSystemItem: UITabBarSystemItem.more, target: nil, action: nil)
        var buttons = NSArray<UIBarButtonItem>()
        buttons.adding(item1)
        [self.setToolbarItems(buttons, animated: NO)]
        // Do any additional setup after loading the view.
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bar = segue.destination as! UITabBarController
        let nav = bar.viewControllers![0] as! UINavigationController
        let nav2 = bar.viewControllers![1] as! UINavigationController
        let destinationPersonen = nav.topViewController as! TableViewController
        let destinationShowAll = nav2.topViewController as! ViewControllerScherm3
        destinationPersonen.Personen = self.PersoneneersteArray
        destinationShowAll.temp3 = self.PersoneneersteArray
        /*if let vc = segue.destination as? NavigationController
         {
            
            vc.PersonenDoorstuurArray = PersoneneersteArray;
            
        }*/
        if let vc = segue.destination as? TableViewController
        {
            
            vc.Personen = PersoneneersteArray;
            
        }
        
        if let vc = segue.destination as? ViewControllerScherm3
        {
            
            vc.temp3 = PersoneneersteArray;
            
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
