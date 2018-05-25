//
//  NavigationController.swift
//  MobileAppsIOSWerkstuk
//
//  Created by student on 24/05/2018.
//  Copyright © 2018 EHB. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {
    var PersonenDoorstuurArray = [Persoon]();
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? TableViewController
        {
            
            vc.Personen = PersonenDoorstuurArray;
            
        }
        
        
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
