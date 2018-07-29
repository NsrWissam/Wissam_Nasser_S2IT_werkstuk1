//
//  Persoon.swift
//  werkstuk1
//
//  Created by student on 29/07/2018.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation
import UIKit

class Persoon: NSObject {
    let naam:String
    let voornaam:String
    let foto:UIImage
    let adres:Adres
    let lengtegraad:Double
    let breedtegraad:Double
    let telefoonnummer:String
    
    init(naam:String, voornaam:String, foto:UIImage, adres:Adres, lengtegraad:Double, breedtegraad:Double, telefoonnummer:String) {
        self.naam = naam
        self.voornaam = voornaam
        self.foto = foto
        self.adres = adres
        self.lengtegraad = lengtegraad
        self.breedtegraad = breedtegraad
        self.telefoonnummer = telefoonnummer
    }
}
