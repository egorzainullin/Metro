//
//  StationCircleView.swift
//  Metro
//
//  Created by Егор Зайнуллин on 12.01.2022.
//

import UIKit

@IBDesignable
class StationCircleView: UIView {

    @IBInspectable
    var width: CGFloat = 20.0
    { didSet { updateSize(width)} }
    
    @IBInspectable
    var color: UIColor = .blue
    { didSet { updateColor(color) } }
    
    @IBInspectable
    var name: String = ""
    
    @IBInspectable
    var id: String = ""
    
    private var borderSize: CGFloat = 1
    
    private var borderColor: UIColor = .white
    
    override func layoutSubviews() {
        super.layoutSubviews()
        updateColor(color)
        updateSize(width)
        layer.borderWidth = borderSize
        layer.borderColor = borderColor.cgColor
        
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
