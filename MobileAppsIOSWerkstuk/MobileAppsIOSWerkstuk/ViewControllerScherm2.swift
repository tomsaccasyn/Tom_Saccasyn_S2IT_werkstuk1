//
//  ViewControllerScherm2.swift
//  MobileAppsIOSWerkstuk
//
//  Created by student on 14/05/2018.
//  Copyright © 2018 EHB. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class ViewControllerScherm2: UIViewController,MKMapViewDelegate {
     var locationManager = CLLocationManager()
    var temp = Persoon(naam: "", voornaam: "", foto: "", address: Adress(straat:"",huisnummer:0,postcode:0,gemeente:""), telefoonnummer: 0, latitude: 0.0, longitude: 0.0)
    @IBOutlet weak var UIFoto: UIImageView!
    @IBOutlet weak var UIVoornaam: UILabel!
    @IBOutlet weak var UINaam: UILabel!
    @IBOutlet weak var UIAdress: UILabel!
    @IBOutlet weak var UITelefoonnummer: UILabel!
    @IBOutlet weak var UIMap: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        UIFoto.image = UIImage(named:temp.Foto)
        UIVoornaam.text = temp.Voornaam
        UINaam.text = temp.Naam
        UIAdress.text = temp.Address.Straat + " " + String(temp.Address.Huisnummer) + " " + String(temp.Address.Postcode) + " " + temp.Address.Gemeente
        UITelefoonnummer.text = String(temp.Telefoonnummer)
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
        // Do any additional setup after loading the view.
        func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
            let center = CLLocationCoordinate2D(latitude: temp.Latitude,longitude:temp.Longitude)
            let region = MKCoordinateRegion(center:center,span:MKCoordinateSpan(latitudeDelta:0.01,longitudeDelta:0.01))
            
            mapView.setRegion(region, animated: true)
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
