//
//  DetailViewController.swift
//  Sichev_HW5
//
//  Created by Евгений on 02/10/2018.
//  Copyright © 2018 Evgeniy. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var dataAndTimeLable: UILabel!
    @IBOutlet weak var openLable: UILabel!
    @IBOutlet weak var closeLable: UILabel!
    @IBOutlet weak var maxLable: UILabel!
    @IBOutlet weak var minLable: UILabel!
    @IBOutlet weak var changeLable: UILabel!
    @IBOutlet weak var priseLable: UILabel!
    
    var variable: DataApi?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = variable?.companyName
        
        dataAndTimeLable.text = variable?.latestTime
        openLable.text = "Open did: \(String(variable!.open))"
        closeLable.text = "Close did: \(String(variable!.close))"
        maxLable.text = "Max: \(String(variable!.high))"
        minLable.text = "Min: \(String(variable!.low))"
        changeLable.text = "Change: \(String(variable!.change))"
        priseLable.text = "Prise: \(String(variable!.latestPrice))"

        dataAndTimeLable.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        dataAndTimeLable.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        dataAndTimeLable.layer.cornerRadius = 5
        
        openLable.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        openLable.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        openLable.layer.cornerRadius = 5
        
        closeLable.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        closeLable.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        closeLable.layer.cornerRadius = 5
        
        maxLable.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        maxLable.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        maxLable.layer.cornerRadius = 5
        
        minLable.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        minLable.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        minLable.layer.cornerRadius = 5
        
        changeLable.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        changeLable.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        changeLable.layer.cornerRadius = 5
        
        priseLable.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        priseLable.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        priseLable.layer.cornerRadius = 5
        
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
}
