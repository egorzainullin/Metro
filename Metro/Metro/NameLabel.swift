//
//  NameLabel.swift
//  Metro
//
//  Created by Егор Зайнуллин on 14.01.2022.
//

import UIKit

protocol NameLabelDelegate {
    func labelClicked(_ sender: NameLabel, id: String)
}

@IBDesignable
class NameLabel: UILabel {

    var delegate: NameLabelDelegate?
    
    @IBInspectable
    var id: String = ""
    { didSet { updateName(name)} }
    
    @IBInspectable
    var name: String = ""
    { didSet { updateName(name) } }
    
    private func updateName(_ name: String) {
        // if language is Rissian, set also name
        if (name == "") {
            self.text = id
        }
        else {
            self.text = name
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        delegate?.labelClicked(self, id: self.id)
    }
}
