//
//  ViewController.swift
//  Aram
//
//  Created by Paulo Neto on 05/10/15.
//  Copyright © 2015 Zafalon. All rights reserved.
//

import UIKit
import SwiftyJSON
public var JSONRecebido:JSON = [:]


class ViewController: UIViewController {



    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet var telainicialStatus: UILabel!
    @IBOutlet var telainicialToken: UITextField!
    @IBAction func telainicialBotaoIr(sender: AnyObject) {
        
        let token = telainicialToken.text!

        JSONRecebido = webAPI.parseJSON(token)
        
    }
    
    
    @IBAction func unwindToViewController (sender: UIStoryboardSegue){
        
     
    }
    

}

