//
//  ViewController.swift
//  Metro
//
//  Created by Егор Зайнуллин on 10.01.2022.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var mapScrollView: CustomScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initMap()
    }

    private func initMap() {
        mapScrollView.setZooming()
    }

}

