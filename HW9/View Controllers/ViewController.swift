//
//  ViewController.swift
//  HW9
//
//  Created by Карина Чадаева on 23.03.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageViewMainScreen: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageViewMainScreen.image = UIImage(named: "img")
    }


}

