//
//  DetailController.swift
//  Wissam_Nasser_digX_werkstuk1
//
//  Created by student on 31/07/2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class DetailController: UIViewController {

    
    @IBOutlet weak var vipImage: UIImageView!
    @IBOutlet weak var vipVoornaam: UILabel!
    @IBOutlet weak var vipNaam: UILabel!
    @IBOutlet weak var vipTelefoonnummer: UILabel!
    @IBOutlet weak var vipAdres: UILabel!
    
    var vip = Persoon()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.vipImage.image = vip.foto
        self.vipVoornaam.text = vip.voornaam
        self.vipNaam.text = vip.naam
        self.vipTelefoonnummer.text = vip.telefoonnummer
        self.vipAdres.text = vip.adres.straat + ", " + vip.adres.huisnummer + "\n" + vip.adres.postcode + " " + vip.adres.gemeente
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
