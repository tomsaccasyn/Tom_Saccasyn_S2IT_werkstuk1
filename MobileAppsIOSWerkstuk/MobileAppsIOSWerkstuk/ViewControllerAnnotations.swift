//
//  ViewControllerAnnotations.swift
//  MapViewOplossing
//
//  Created by Johan van den Broek on 27/04/17.
//  Copyright © 2017 Johan van den Broek. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewControllerAnnotations: UIViewController, MKMapViewDelegate {
    
    var locationLongPress = CLLocationCoordinate2D()
    
    @IBOutlet weak var myMapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        // voorbeeld annotation, eentje toevoegen voor we beginnen
        
        let coordinate:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 50.850890, longitude: 4.347503)
        
        
        let annotation:MyAnnotation = MyAnnotation(coordinate: coordinate, title: "De Monk")
        
        self.myMapView.addAnnotation(annotation)
        self.myMapView.selectAnnotation(annotation, animated: true)
    }
    
    
    
    @IBAction func longPressAction(_ sender: UILongPressGestureRecognizer) {
        showAlertWithTextfield()
        
        // we leggen de coordinaten vast voor later gebruik
        let point = sender.location(in: self.myMapView)
        self.locationLongPress = self.myMapView.convert(point, toCoordinateFrom:self.myMapView)
        
        
    }
    func showAlertWithTextfield(){
        let alertController = UIAlertController(title: "Annotation", message: "What is the name of the annotation?", preferredStyle: UIAlertControllerStyle.alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel) { (result : UIAlertAction) -> Void in
            print("Cancel")
        }
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (result : UIAlertAction) -> Void in
            let nameTextField = alertController.textFields![0] as UITextField
            let annotation = MyAnnotation(coordinate: self.locationLongPress, title: nameTextField.text!)
            self.myMapView.addAnnotation(annotation)
            self.myMapView.selectAnnotation(annotation, animated: true)
        }
        
        alertController.addTextField(configurationHandler: { (textField) -> Void in
            textField.placeholder = "Name"
            textField.textAlignment = .center
        })
        
        
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
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
//
//  ViewControllerAnnotations.swift
//  MobileAppsIOSWerkstuk
//
//  Created by student on 17/05/2018.
//  Copyright © 2018 EHB. All rights reserved.
//













import UIKit

class ViewControllerAnnotations: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
