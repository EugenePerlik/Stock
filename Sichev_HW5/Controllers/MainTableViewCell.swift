//
//  MainTableViewCell.swift
//  Sichev_HW5
//
//  Created by Евгений on 02/10/2018.
//  Copyright © 2018 Evgeniy. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var symbolLable: UILabel!
    @IBOutlet weak var priseLable: UILabel!
    @IBOutlet weak var priseChangeLable: UILabel!
    
    var colorPrice: String = "" {
        
        willSet(newValue) {
        }
        
        didSet(oldValue) {
            let zero = "0"
            if colorPrice > oldValue && colorPrice > zero {
                priseChangeLable.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
                priseChangeLable.text = colorPrice
            } else {
                priseChangeLable.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
                priseChangeLable.text = colorPrice
            }
        }
    }

}
