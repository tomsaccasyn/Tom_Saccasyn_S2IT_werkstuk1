
//
//  AnnotationPersoon.swift
//  MobileAppsIOSWerkstuk
//
//  Created by student on 17/05/2018.
//  Copyright © 2018 EHB. All rights reserved.
//

import UIKit
import MapKit

class AnnotationPersoon: NSObject,MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title :String?
    var naam: String?
    var voornaam: String?
    var adres: String?
    var telefoonnummer: Int?
    
    
    override init() {
        coordinate = CLLocationCoordinate2D()
        title = ""
        naam = ""
        voornaam=""
        adres=""
        telefoonnummer=0000000000
    }
    
    init (coordinate:CLLocationCoordinate2D, title:String)
    {
        self.coordinate = coordinate
        self.title = title
        naam = ""
        voornaam=""
        adres=""
        telefoonnummer=0000000000
    }
    init (coordinate:CLLocationCoordinate2D, title:String,naam:String,voornaam:String,adres:String,telefoonnummer:Int)
    {
        self.coordinate = coordinate
        self.title = title
        self.naam = naam
        self.voornaam = voornaam
        self.adres = adres
        self.telefoonnummer = telefoonnummer
    }
    
    
    
}
