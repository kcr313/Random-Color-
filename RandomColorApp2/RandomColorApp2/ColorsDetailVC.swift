//
//  ColorsDetailVC.swift
//  RandomColorApp2
//
//  Created by kadir ecer on 21.04.2024.
//

import UIKit

class ColorsDetailVC: UIViewController {

    var color:UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .blue

    }


}
