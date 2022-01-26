//
//  StationCircleView.swift
//  Metro
//
//  Created by Егор Зайнуллин on 12.01.2022.
//

import UIKit

protocol StationCircleViewDelegate {
    func stationClicked(_ sender: StationCircleView, id: String)
}

@IBDesignable
class StationCircleView: UIView {

    var delegate: StationCircleViewDelegate?
    
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
    
    private func updateColor(_ color: UIColor) {
        backgroundColor = color
        layoutIfNeeded()
    }
    
    private func updateSize(_ width: CGFloat) {
        frame.size = CGSize(width: width, height: width)
        layer.cornerRadius = width / 2
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        delegate?.stationClicked(self, id: self.id)
    }
}
