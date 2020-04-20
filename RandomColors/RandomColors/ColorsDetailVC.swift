//
//  ColorsDetailVC.swift
//  RandomColors
//
//  Created by Jeffrey Stevison on 4/19/20.
//  Copyright © 2020 Jeffrey Stevison. All rights reserved.
//

import UIKit

class ColorsDetailVC: UIViewController {

    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .blue
    }
}
