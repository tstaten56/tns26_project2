//
//  ViewController.swift
//  tns26Proj2
//
//  Created by Staten,Tera on 10/13/15.
//  Copyright © 2015 Staten,Tera. All rights reserved.
//

import UIKit

let Birthday = "Birthday"
let Name = "Name"
let Spouse = "Spouse"
let Roles = "Roles"
let Awards = "Awards"

class ViewController: UIViewController {

    @IBOutlet weak var BdayLabel: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var SpouseLabel: UILabel!
    @IBOutlet weak var RolesLabel: UILabel!
    @IBOutlet weak var AwardsLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // path to data.plist as part of application
        guard let path = NSBundle.mainBundle().pathForResource("data", ofType: "plist") else {
            print("Invalid path for plist")
            return
        }
        
        // load the dictionary
        var data = NSDictionary(contentsOfFile: path) as? Dictionary<String, String>
        
        // dump the dictionary
        print(data)
        
        // string from the dictionary
        BdayLabel.text = data?["Birthday"]
        NameLabel.text = data?["Name"]
        SpouseLabel.text = data?["Spouse"]
        RolesLabel.text = data?["PopularRoles"]
        AwardsLabel.text = data?["Awards"]
        
        BdayLabel.preferredMaxLayoutWidth = BdayLabel.frame.width
        NameLabel.preferredMaxLayoutWidth = NameLabel.frame.width
        RolesLabel.preferredMaxLayoutWidth = RolesLabel.frame.width
        RolesLabel.lineBreakMode = NSLineBreakMode.ByWordWrapping
        RolesLabel.numberOfLines = 0
        
        AwardsLabel.lineBreakMode = NSLineBreakMode.ByWordWrapping
        AwardsLabel.numberOfLines = 5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadData() {
        
    }
}

extension UILabel {
    func setSizeFont (sizeFont : Double) {
        //self.font = UIFont(name: self.font.fontName, size: sizeFont)!
        self.sizeToFit()
    }
}


