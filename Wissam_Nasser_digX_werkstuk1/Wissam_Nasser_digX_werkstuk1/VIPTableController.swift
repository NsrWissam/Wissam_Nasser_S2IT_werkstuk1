//
//  VIPTableController.swift
//  Wissam_Nasser_digX_werkstuk1
//
//  Created by student on 31/07/2018.
//  Copyright © 2018 student. All rights reserved.
//
//  Deze tutorial gevolgd voor de tableview controller : https://www.youtube.com/watch?v=fFpMiSsynXM
//  Verder uitgewerkt met tutorial voor detail view aan de hand van selectie table view : https://www.youtube.com/watch?v=A6Wl8ySrOZI
//  Gebruikt voor navigation controller voor mooie navigatie : https://www.youtube.com/watch?v=XARzl84FZW0

import UIKit

class VIPTableController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    var vips = PersonenData.data.getVips()
    
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return vips.count
    }
    
     override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "vipCell", for: indexPath)
        cell.textLabel?.text = vips[indexPath.row].naam + " " + vips[indexPath.row].voornaam
        cell.imageView?.image = vips[indexPath.row].foto
        
        return cell
    }
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "vipDetail"
        {
            let viewcontroller =  segue.destination as! DetailController
            let indexPath = self.tableView.indexPathForSelectedRow
            viewcontroller.vip = vips[(indexPath?.row)!]
        }
    }
}

