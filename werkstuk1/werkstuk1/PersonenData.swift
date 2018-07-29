//
//  PersonenData.swift
//  werkstuk1
//
//  Created by student on 29/07/2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class PersonenData: NSObject {
        class func getPersonenData() -> [Persoon] {
            
            var personen:[Persoon] = []
            
            personen.insert(Persoon(naam: "Obama", voornaam: "Barack", foto: #imageLiteral(resourceName: "Obama"), adres: Adres(straat: "", huisnummer: 0, postcode: 0, gemeente: ""), lengtegraad: 50.0, breedtegraad: 3.0, telefoonnummer: ""),at:0)
            
            personen.append(Persoon(naam: "Putin", voornaam: "Vladimir", foto: #imageLiteral(resourceName: "Putin"), adres: Adres(straat: "", huisnummer: 0, postcode: 0, gemeente: ""), lengtegraad: 50.0, breedtegraad: 3.0, telefoonnummer: ""))
            
            return personen
        }}
