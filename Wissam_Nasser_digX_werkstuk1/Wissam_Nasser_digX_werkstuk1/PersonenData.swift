//
//  PersonenData.swift
//  Wissam_Nasser_digX_werkstuk1
//
//  Created by student on 31/07/2018.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation


class PersonenData {
    
    private var vips = [Persoon]()
    static let data = PersonenData()
    
    private init(){
        self.vips = [
            Persoon(naam:"Obama",voornaam:"Barack",foto:#imageLiteral(resourceName: "Obama"),adres:Adres(straat:"Boekenberglei",huisnummer:"60",postcode:"2100",gemeente:"Deurne")
                ,telefoonnummer:"+32475473815",lengtegraad:3.766811299999972, breedtegraad:50.4084886),
            Persoon(naam:"Putin",voornaam:"Vladimir",foto:#imageLiteral(resourceName: "Putin"),adres:Adres(straat:"Zemlyanoy Val Street",huisnummer:"58",postcode:"109004",gemeente:"Moskava")
                ,telefoonnummer:"+32457463815",lengtegraad:3.7406806999999844, breedtegraad:51.0191803),
            Persoon(naam:"Wissam",voornaam:"Nasser",foto:#imageLiteral(resourceName: "Meld"),adres:Adres(straat:"Quai de l'Industrie",huisnummer:"170",postcode:"1070",gemeente:"Anderlecht")
                ,telefoonnummer:"+32447823815",lengtegraad:13.441443100000015, breedtegraad:52.5110751),
            Persoon(naam:"Teresa",voornaam:"De Sock",foto:#imageLiteral(resourceName: "Julia"),adres:Adres(straat:"Mount St",huisnummer:"456",postcode:"LA 70806",gemeente:"Baton Rouge")
                ,telefoonnummer:"+1 225-928-4655",lengtegraad:-119.20301770000003, breedtegraad:40.7886448),
            Persoon(naam:"Monica",voornaam:"Talous",foto:#imageLiteral(resourceName: "Hei"),adres:Adres(straat:"Hoogpoort",huisnummer:"1",postcode:"9000",gemeente:"Gent")
                ,telefoonnummer:"+32477849864",lengtegraad:18.281318499999998, breedtegraad:49.8204139),
        ]
    }
    
    public func getVips() -> [Persoon] {
        return self.vips
    }
}
