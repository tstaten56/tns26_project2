//
//  ViewController.swift
//  tns26Proj2
//
//  Created by Staten,Tera on 10/13/15.
//  Copyright © 2015 Staten,Tera. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var BdayLabel: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var SpouseLabel: UILabel!
    @IBOutlet weak var RolesLabel: UILabel!
    @IBOutlet weak var AwardsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NameLabel.text = "hello"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

