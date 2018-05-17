//
//  ViewControllerScherm3.swift
//  MobileAppsIOSWerkstuk
//
//  Created by student on 17/05/2018.
//  Copyright © 2018 EHB. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewControllerScherm3: UIViewController,MKMapViewDelegate {
    var locationManager = CLLocationManager()
    var location = CLLocationCoordinate2D()
    var temp3 = [Persoon]();
    var i : Int=0;
    @IBOutlet weak var UIMap2: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIMap2.showsUserLocation = true
        UIMap2.showsBuildings = true
        let locationcenter: CLLocationCoordinate2D = CLLocationCoordinate2DMake(temp3[0].Latitude, temp3[0].Longitude);
        let span: MKCoordinateSpan = MKCoordinateSpanMake(0.10,0.10);
        let region:MKCoordinateRegion = MKCoordinateRegionMake(locationcenter, span);
        UIMap2.setRegion(region, animated: true);
        for items in temp3 {
            var naam = items.Voornaam+items.Naam;
            var itemlocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(items.Latitude, items.Longitude);
            var itemNaamString:String = items.Voornaam + " " + items.Naam;
            var itemAnnotation = AnnotationPersoon(coordinate:itemlocation,title: itemNaamString);
            
            UIMap2.addAnnotation(itemAnnotation);
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
       /* for items in temp3 {
            let annotation = MKPointAnnotation()
            annotation.title = items.Voornaam + " " + items.Naam
            let coordinate = CLLocationCoordinate2D(latitude: Double(items.Latitude), longitude: Double(items.Longitude))
            annotation.coordinate = coordinate
            self.UIMap2.addAnnotation(annotation)
        }*/
        let center = CLLocationCoordinate2D(latitude: (view.annotation?.coordinate.latitude)!, longitude: (view.annotation?.coordinate.longitude)!)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
        
        mapView.setRegion(region, animated: true)
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
