//
//  Persoon.swift
//  MobileAppsIOSWerkstuk
//
//  Created by student on 07/05/2018.
//  Copyright © 2018 EHB. All rights reserved.
//

import Foundation
import MapKit
import UIKit
import CoreLocation
class Persoon{
    
    var Naam:String;
    var Voornaam:String;
    var Foto:String;
    var Address:Adress;
    var Telefoonnummer:Int;
    var Latitude:Double;
    var Longitude:Double;
    var Altitude:Double;
    var hAccuracy:Double;
    var vAccuracy:Double;
    
    
    init(naam:String,voornaam:String,foto:String,address:Adress,telefoonnummer:Int,latitude:Double,longitude:Double,altitude:Double,haccuracy:Double,vaccuracy:Double) {
        self.Naam=naam;
        self.Voornaam=voornaam;
        self.Foto=foto;
        self.Address=address;
        self.Telefoonnummer=telefoonnummer;
        self.Latitude=latitude;
        self.Longitude=longitude;
        self.Altitude=altitude;
        self.hAccuracy=haccuracy;
        self.vAccuracy=vaccuracy;
    }



}

