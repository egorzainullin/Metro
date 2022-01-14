//
//  LineView.swift
//  Metro
//
//  Created by Егор Зайнуллин on 13.01.2022.
//

import UIKit

class LineView: UIView {

    @IBInspectable
    var firstNode: String = ""
    
    @IBInspectable
    var secondNode: String = ""
    
    @IBInspectable
    var width: CGFloat = 20.0
    { didSet { updateSize (width: width, height: height) } }
    
    @IBInspectable
    var height: CGFloat = 20.0
    { didSet { updateSize(width: width, height: height) } }
    
    @IBInspectable
    var color: UIColor = .blue
    { didSet { updateColor(color) } }
    
    // TODO: Доделать
    @IBInspectable
    var angle: CGFloat = 0.0
    
    @IBInspectable
    var id: String = ""
    
    override func layoutSubviews() {
        super.layoutSubviews()
        updateColor(color)
        updateSize(width: width, height: height)
    }
    
    func updateColor(_ color: UIColor) {
        backgroundColor = color
        layoutIfNeeded()
    }
    
    func updateSize(width: CGFloat, height: CGFloat) {
        frame.size = CGSize(width: width, height: height)
    }
}


