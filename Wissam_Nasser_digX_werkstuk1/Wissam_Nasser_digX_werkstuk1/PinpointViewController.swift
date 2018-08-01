//
//  PinpointViewController.swift
//  Wissam_Nasser_digX_werkstuk1
//
//  Created by student on 01/08/2018.
//  Copyright © 2018 student. All rights reserved.
//  Annotatie en implementatie kaart: https://www.youtube.com/watch?v=hRextIKJCnI
//  Implementatie huidige locatie: https://www.youtube.com/watch?v=UyiuX8jULF4

import UIKit
import MapKit
import CoreLocation

class PinpointViewController: UIViewController, CLLocationManagerDelegate {
    
    let vips = PersonenData.data.getVips()

    let manager = CLLocationManager()
    
    //Map outlet pinpoint view
    @IBOutlet weak var pinMap: MKMapView!
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location = locations[0]
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(20,20)
        let myLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
        let region:MKCoordinateRegion = MKCoordinateRegionMake(myLocation, span)
        
        pinMap.setRegion(region, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //location manager configurations
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
        //annotaties toevoegen voor elke VIP persoon in VIPs
        for vip in vips{
            let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(vip.breedtegraad, vip.lengtegraad)
            let annotation = MKPointAnnotation()
            annotation.coordinate = location
            annotation.title = "Ik ben het, " + vip.voornaam + " " + vip.naam
            annotation.subtitle = "Dit is mijn locatie"
            pinMap.addAnnotation(annotation)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
