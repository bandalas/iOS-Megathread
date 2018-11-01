//
//  ViewController.swift
//  ScrollView
//
//  Created by bandala on 10/22/18.
//  Copyright © 2018 mx.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var scrollView: UIScrollView!
    var imageView : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        let imagen = UIImage(named: "banff")!
        imageView = UIImageView(image: imagen)
        scrollView.addSubview(imageView)
        scrollView.contentSize = imagen.size
        scrollView.setContentOffset(CGPoint(x: 250, y: 300), animated: true)
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }


}

