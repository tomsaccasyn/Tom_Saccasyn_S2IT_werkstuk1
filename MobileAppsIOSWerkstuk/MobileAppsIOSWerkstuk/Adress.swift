//
//  Adress.swift
//  MobileAppsIOSWerkstuk
//
//  Created by student on 07/05/2018.
//  Copyright © 2018 EHB. All rights reserved.
//

import Foundation
class Adress{
    var Straat:String
    var Huisnummer:Int;
    var Postcode:Int;
    var Gemeente:String;
 
    init(straat:String,huisnummer:Int,postcode:Int,gemeente:String) {
        Straat=straat;
        Huisnummer=huisnummer;
        Postcode=postcode;
        Gemeente=gemeente;
    }
    
}
