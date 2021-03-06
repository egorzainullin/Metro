//
//  ViewController.swift
//  Metro
//
//  Created by Егор Зайнуллин on 10.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mapScrollView: CustomScrollView!
    
    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initMap()
        addStations()
        registerClicksOnStationsAndLabels()
    }

    private func addStations() {
        let stations = Stations.getStations()
        for station in stations {
            debugPrint(station.id)
            view.addSubview(station)
        }
    }
    
    private func addLinesBetweenStations() {
        
    }
    
    private func addTransitions() {
        
    }
    
    private func initMap() {
        mapScrollView.setZooming()
        setTap()
    }
    
    private func setTap() {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(onTap))
        tapGestureRecognizer.numberOfTapsRequired = 2
        mapScrollView.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc private func onTap() {
        if self.mapScrollView.zoomScale == 1.0 {
            UIView.animate(withDuration: 0.1,
                           animations: {
                self.mapScrollView.zoomScale = 2.0
            })
        } else {
            UIView.animate(withDuration: 0.1,
                           animations: {
                self.mapScrollView.zoomScale = 1.0
            })
        }
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

extension ViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return contentView
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

