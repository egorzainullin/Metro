//
//  StationCircleView.swift
//  Metro
//
//  Created by Егор Зайнуллин on 12.01.2022.
//

import UIKit

@IBDesignable
class StationCircleView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    @IBInspectable
    var width: CGFloat = 20.0
    { didSet { updateSize(width)} }
    
    @IBInspectable
    var color: UIColor = .blue
    { didSet { updateColor(color) } }
    
    @IBInspectable
    var id: String = ""
    
    override func layoutSubviews() {
        super.layoutSubviews()
        updateColor(color);
        updateSize(width);
    }
    
    func updateColor(_ color: UIColor) {
        backgroundColor = color
        layoutIfNeeded()
    }
    
    func updateSize(_ width: CGFloat) {
        frame.size = CGSize(width: width, height: width)
        layer.cornerRadius = width / 2
    }
}
