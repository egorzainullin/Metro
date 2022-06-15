//
//  CustomScrollView.swift
//  Metro
//
//  Created by Егор Зайнуллин on 14.01.2022.
//

import UIKit

class CustomScrollView: UIScrollView {
    
    func setZooming() {
        self.showsVerticalScrollIndicator = false
        self.showsHorizontalScrollIndicator = false
        self.maximumZoomScale = 5.0
        self.minimumZoomScale = 0.5
    }
    
}
