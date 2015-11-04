//
//  Questionnaire.swift
//  Aram
//
//  Created by Paulo Neto on 29/10/15.
//  Copyright © 2015 Zafalon. All rights reserved.
//

import Foundation
import SwiftyJSON
import UIKit

class Questionnaire: UITableViewController {
    
    var linhasDoJSON = 0
    var namesArray = [String]()
    
    @IBOutlet var NomeDaProva: UINavigationItem!
    override func viewDidLoad() {
        NomeDaProva.title = "oi"
        let cellDisc = UINib(nibName: "QuestionCell", bundle: nil)
        self.tableView.registerNib(cellDisc, forCellReuseIdentifier: "cell")
        
        let celObj = UINib(nibName: "QuestionCellObjetiva", bundle: nil)
        self.tableView.registerNib(celObj, forCellReuseIdentifier: "cell")


    }
    
        
    @IBAction func StartTest(sender: AnyObject) {
        
                linhasDoJSON = JSONRecebido["oi"].count
                        NSLog("\(linhasDoJSON)")
        for i in 1...linhasDoJSON{
            var name = "name"
            name += "\(i)"
            let question = JSONRecebido["oi"][i-1][name].stringValue
            NSLog("\(JSONRecebido["oi"])")
            namesArray.append(question)
                        NSLog("\(namesArray)")
        }
        self.tableView.reloadData()

    }
    
    
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return linhasDoJSON
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
    
        
        let cell :QuestionCellObjetiva = tableView.dequeueReusableCellWithIdentifier("cell") as! QuestionCellObjetiva


//        let cell :QuestionCell = tableView.dequeueReusableCellWithIdentifier("cell") as! QuestionCell
        
        if namesArray.count != 0{
            
//            TODO: IF DISCURSIVA CHAMAR UM TIPO DE CELULA SE NÃO CHAMA A OUTRA
            
//            cell.CellEnunciadoDiscurssiva.text =  namesArray[indexPath.row]
            cell.CellEnunciadoObjetiva.text = namesArray[indexPath.row]

        }
        
        return cell
    }
    


   
}
