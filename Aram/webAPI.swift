//
//  webAPI.swift
//  Aram
//
//  Created by Paulo Neto on 27/10/15.
//  Copyright © 2015 Zafalon. All rights reserved.
//

import Foundation
import SwiftyJSON

public class webAPI {
    
    
    static func parseJSON(tokenDigitado:String)->JSON{
        
        let URL = NSURL(string: "http://dev.aram/getJsonByToken?token="+tokenDigitado)
        let jsonData = NSData(contentsOfURL: URL!) as NSData!//aqui tem um contents of URL acho que seve ser isso pra legar da internet
        let readableJSOON = JSON(data: jsonData, options: NSJSONReadingOptions.MutableContainers, error: nil)
        //TODO: fazer o erro aqui quando não digita nada.
//        let name = readableJSON["name"]
//        return name
//        let prova = readableJSOON["name"]
//               NSLog("\(name)")
       return readableJSOON
        
    }
    
}