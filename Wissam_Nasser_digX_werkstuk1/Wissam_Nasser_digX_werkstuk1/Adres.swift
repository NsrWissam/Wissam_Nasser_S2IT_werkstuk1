//
//  Adres.swift
//  Wissam_Nasser_S2IT_werkstuk1
//
//  Created by student on 30/07/2018.
//  Copyright © 2018 EHB. All rights reserved.
//

import UIKit

class Adres {
    let straat: String
    let huisnummer: String
    let postcode: String
    let gemeente: String
    
    init() {
        straat = ""
        huisnummer = "0"
        postcode = "0000"
        gemeente = ""
    }
    
    init(straat: String, huisnummer: String, postcode: String, gemeente: String) {
        self.straat = straat
        self.huisnummer = huisnummer
        self.postcode = postcode
        self.gemeente = gemeente
    }
}
