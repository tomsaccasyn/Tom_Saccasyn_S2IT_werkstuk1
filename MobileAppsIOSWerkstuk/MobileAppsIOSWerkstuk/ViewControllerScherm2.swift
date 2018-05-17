//
//  ViewControllerScherm2.swift
//  MobileAppsIOSWerkstuk
//
//  Created by student on 14/05/2018.
//  Copyright © 2018 EHB. All rights reserved.
//

import UIKit
import MapKit


class ViewControllerScherm2: UIViewController,MKMapViewDelegate {
     var locationManager = CLLocationManager()
    var personentemp = [Persoon]();
    @IBOutlet weak var UIFoto: UIImageView!
    @IBOutlet weak var UIVoornaam: UILabel!
    @IBOutlet weak var UINaam: UILabel!
    @IBOutlet weak var UIAdress: UILabel!
    @IBOutlet weak var UITelefoonnummer: UILabel!
    @IBOutlet weak var UIMap: MKMapView!
    var temp : Persoon!
    override func viewDidLoad() {
        super.viewDidLoad()
        UIFoto.image = UIImage(named: temp.Foto)
        UIVoornaam.text = temp.Voornaam
        UINaam.text = temp.Naam
        UIAdress.text = temp.Address.Straat + " " + String(temp.Address.Huisnummer) + " " + String(temp.Address.Postcode) + " " + temp.Address.Gemeente
        UITelefoonnummer.text = String(temp.Telefoonnummer)
        
        // Do any additional setup after loading the view.
        
        locationManager.requestAlwaysAuthorization()
        
        locationManager.startUpdatingLocation()
        let coordinate:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: temp.Latitude, longitude: temp.Longitude)
        
        let annotation:AnnotationPersoon = AnnotationPersoon(coordinate: coordinate, title: temp.Voornaam + " " + temp.Naam)
        self.UIMap.addAnnotation(annotation)
        self.UIMap.selectAnnotation(annotation, animated: true)
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView ) {
        let center = CLLocationCoordinate2D(latitude: (view.annotation?.coordinate.latitude)!, longitude: (view.annotation?.coordinate.longitude)!)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
        
        mapView.setRegion(region, animated: true)
     }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let vc = segue.destination as? ViewControllerScherm3
        {
            vc.temp3 = personentemp;
            
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
