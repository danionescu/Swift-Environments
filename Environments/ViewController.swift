//
//  ViewController.swift
//  Environments
//
//  Created by Dan Ionescu on 23/05/16.
//  Copyright © 2016 Alt Tab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.label.text = [
            "App name: \(NSBundle.mainBundle().infoDictionary!["CFBundleName"] as! String)",
            "Bundle identifier: \(NSBundle.mainBundle().infoDictionary!["CFBundleIdentifier"] as! String)",
            "Social App id: \(NSBundle.mainBundle().infoDictionary!["SOCIAL_APP_ID"] as! String)",
            "Base URL: \(Config.BaseURL)"
            ].componentsJoinedByString("\n\n");
    }

}

