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
        self.maximumZoomScale = 5
        let scrollViewFrame = self.frame
        let scaleWidth = scrollViewFrame.size.width / self.contentSize.width
        let scaleHeight = scrollViewFrame.size.height / self.contentSize.height
        let minScale = min(scaleWidth, scaleHeight)
        self.minimumZoomScale = minScale;
    }
    
}
