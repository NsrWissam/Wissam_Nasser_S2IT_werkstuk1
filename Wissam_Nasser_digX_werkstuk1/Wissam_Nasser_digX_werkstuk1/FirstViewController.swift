//
//  FirstViewController.swift
//  Wissam_Nasser_digX_werkstuk1
//
//  Created by student on 31/07/2018.
//  Copyright © 2018 student. All rights reserved.
//
//  Deze tutorial gevolgd voor de tableview controller : https://www.youtube.com/watch?v=fFpMiSsynXM

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tablecells = PersonenData.data.getVips()
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(tablecells.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "vipCell")
        cell.textLabel?.text = tablecells[indexPath.row].naam + " " + tablecells[indexPath.row].voornaam
        cell.imageView?.image = tablecells[indexPath.row].foto
        
        return(cell)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

