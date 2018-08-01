//
//  DetailController.swift
//  Wissam_Nasser_digX_werkstuk1
//
//  Created by student on 31/07/2018.
//  Copyright © 2018 student. All rights reserved.
//  Annotatie en implementatie kaart: https://www.youtube.com/watch?v=hRextIKJCnI
//  Vergrote afbeelding weergave : https://stackoverflow.com/questions/34694377/swift-how-can-i-make-an-image-full-screen-when-clicked-and-then-original-size

import UIKit
import MapKit

class DetailController: UIViewController {

    //view elements of detail view
    @IBOutlet weak var vipImage: UIImageView!
    @IBOutlet weak var vipVoornaam: UILabel!
    @IBOutlet weak var vipNaam: UILabel!
    @IBOutlet weak var vipTelefoonnummer: UILabel!
    @IBOutlet weak var vipAdres: UILabel!
    
    @IBOutlet weak var vipMap: MKMapView!
    
    //object waar de segue variabelen worden in opgeslagen
    var vip = Persoon()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Map View configuratie
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.1,0.1)
        let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(vip.breedtegraad, vip.lengtegraad)
        let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        vipMap.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        vipMap.addAnnotation(annotation)
        
        //doorgegeven VIP waardes worden gelinked aan view elements
        self.vipImage.image = vip.foto
        self.vipVoornaam.text = vip.voornaam
        self.vipNaam.text = vip.naam
        self.vipTelefoonnummer.text = vip.telefoonnummer
        self.vipAdres.text = vip.adres.straat + ", " + vip.adres.huisnummer + "\n" + vip.adres.postcode + " " + vip.adres.gemeente
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        let imageView = sender.view as! UIImageView
        let newImageView = UIImageView(image: imageView.image)
        newImageView.frame = UIScreen.main.bounds
        newImageView.backgroundColor = .black
        newImageView.contentMode = .scaleAspectFit
        newImageView.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissFullscreenImage))
        newImageView.addGestureRecognizer(tap)
        self.view.addSubview(newImageView)
        self.navigationController?.isNavigationBarHidden = true
        self.tabBarController?.tabBar.isHidden = true
    }
    
    @objc func dismissFullscreenImage(_ sender: UITapGestureRecognizer) {
        self.navigationController?.isNavigationBarHidden = false
        self.tabBarController?.tabBar.isHidden = false
        sender.view?.removeFromSuperview()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
