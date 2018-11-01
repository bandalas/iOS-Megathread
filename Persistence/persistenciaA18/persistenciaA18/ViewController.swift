//
//  ViewController.swift
//  persistenciaA18
//
//  Created by bandala on 10/11/18.
//  Copyright © 2018 mx.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var tf2: UITextField!
    @IBOutlet weak var tf3: UITextField!
    @IBOutlet weak var tf4: UITextField!
    
    func dataFilePath() -> String {
        let url = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
        let pathArchivo = url.appendingPathComponent("dataFile.plist")
        return pathArchivo.path
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let app = UIApplication.shared
        NotificationCenter.default.addObserver(self, selector: #selector(aplicacionTerminara(notification:)), name: UIApplication.didEnterBackgroundNotification, object: app)
        
        let filePath = dataFilePath();
        if FileManager.default.fileExists(atPath: filePath) {
            let arreglo = NSArray(contentsOfFile: filePath)!
            tf1.text = arreglo[0] as? String
            tf2.text = arreglo[1] as? String
            tf3.text = arreglo[2] as? String
            tf4.text = arreglo[3] as? String
        }
        
    }
    
    @IBAction func aplicacionTerminara(notification: NSNotification) {
        let arreglo : NSMutableArray = []
        arreglo.add(tf1.text!)
        arreglo.add(tf2.text!)
        arreglo.add(tf3.text!)
        arreglo.add(tf4.text!)
        
        arreglo.write(toFile: dataFilePath(), atomically: true)
        
    }


}

