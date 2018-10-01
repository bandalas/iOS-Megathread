//
//  SixthViewController.swift
//  TabBarApp
//
//  Created by bandala on 10/1/18.
//  Copyright © 2018 mx.itesm. All rights reserved.
//

import UIKit

class SixthViewController: UIViewController {
    
    @IBOutlet weak var tfLogin: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func bttnOnLogin(_ sender: Any) {
        
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let navigationControllerView = segue.destination as! UINavigationController
        let tableViewController = navigationControllerView.topViewController as! FourthTableViewController
        
        tableViewController.datoLogin = tfLogin.text
    }
    

}
