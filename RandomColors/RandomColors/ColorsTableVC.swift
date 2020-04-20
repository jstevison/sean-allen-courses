//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Jeffrey Stevison on 4/19/20.
//  Copyright © 2020 Jeffrey Stevison. All rights reserved.
//

import UIKit

class ColorsTableVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var colors: [UIColor] = []
    enum Cells {
        static let colorCell = "ColorCell"
    }
    enum Segues {
        static let toDetail = "ToColorsDetailVC"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
    }
    
    func addRandomColors() {
        for _ in 0..<50 {
            colors.append(.random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailVC
        destVC.color = sender as? UIColor
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else {
            return UITableViewCell()
        }
        
        cell.backgroundColor = colors[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let color = colors[indexPath.row]
        
        performSegue(withIdentifier: Segues.toDetail, sender: color)
    }
}
