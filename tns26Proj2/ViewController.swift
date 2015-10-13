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
        NameLabel.text = "hello"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadData() {
        // getting path to GameData.plist
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true) as NSArray
        let documentsDirectory = paths[0] as! String
        let path = documentsDirectory.smallestEncoding
        let fileManager = NSFileManager.defaultManager()
        //check if file exists
        if(!fileManager.fileExistsAtPath(path)) {
            // If it doesn't, copy it from the default file in the Bundle
            if let bundlePath = NSBundle.mainBundle().pathForResource("GameData", ofType: "plist") {
                let resultDictionary = NSMutableDictionary(contentsOfFile: bundlePath)
                println("Bundle GameData.plist file is --> \(resultDictionary?.description)")
                fileManager.copyItemAtPath(bundlePath, toPath: path, error: nil)
                println("copy")
            } else {
                println("GameData.plist not found. Please, make sure it is part of the bundle.")
            }
        } else {
            println("GameData.plist already exits at path.")
            // use this to delete file from documents directory
            //fileManager.removeItemAtPath(path, error: nil)
        }
        let resultDictionary = NSMutableDictionary(contentsOfFile: path)
        println("Loaded GameData.plist file is --> \(resultDictionary?.description)")
        var myDict = NSDictionary(contentsOfFile: path)
        if let dict = myDict {
            //loading values
            bedroomFloorID = dict.objectForKey(BedroomFloorKey)!
            bedroomWallID = dict.objectForKey(BedroomWallKey)!
            //...
        } else {
            println("WARNING: Couldn't create dictionary from GameData.plist! Default values will be used!")
        }
    }


}

