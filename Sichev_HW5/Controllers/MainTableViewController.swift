//
//  MainTableViewController.swift
//  Sichev_HW5
//
//  Created by Евгений on 02/10/2018.
//  Copyright © 2018 Evgeniy. All rights reserved.
//

import UIKit

let url = "https://api.iextrading.com/1.0/stock/market/list/infocus"

class MainTableViewController: UITableViewController {

    var arrayData = [DataApi]()

    override func viewDidLoad() {
        super.viewDidLoad()
      
        tableView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        dataParsing()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return arrayData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MainTableViewCell
        
        cell.backgroundColor  = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        cell.symbolLable.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        cell.priseLable.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        cell.priseChangeLable.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        cell.symbolLable.text = arrayData[indexPath.row].symbol
        cell.priseLable.text = String(arrayData[indexPath.row].latestPrice)
        cell.colorPrice = String(arrayData[indexPath.row].change)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Go" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let dvs = segue.destination as! DetailViewController
                dvs.variable = arrayData[indexPath.row]
            }
        }
    }
    
    func dataParsing() {
        guard let url = URL(string: url) else { return }
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            guard let data = data else { return }
            
            do {
                
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                self.arrayData = try decoder.decode([DataApi].self, from: data)
                DispatchQueue.main.async {
                    
                    self.tableView.reloadData()
                }
            } catch let error {
                print("Error Bro \(error)")
            }
            }.resume()
    }
}

extension MainTableViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
}
