//
//  ViewController.swift
//  Metro
//
//  Created by Егор Зайнуллин on 10.01.2022.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var mapScrollView: CustomScrollView!
    
    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initMap()
        registerClicksOnStationsAndLabels()
    }

    private func initMap() {
        mapScrollView.setZooming()
    }

    private func registerClicksOnStationsAndLabels() {
        let stations = contentView.subviews.compactMap{ $0 as? StationCircleView }
        let labels = contentView.subviews.compactMap{ $0 as? NameLabel }
        for station in stations {
            station.delegate = self
        }
        for label in labels {
            label.delegate = self
        }
    }
}

extension ViewController: StationCircleViewDelegate {
    func stationClicked(_ sender: StationCircleView, id: String) {
        // TODO: handle this event
    }
}

extension ViewController: NameLabelDelegate {
    func labelClicked(_ sender: NameLabel, id: String) {
        // TODO: handle this event
    }
    
    
}

