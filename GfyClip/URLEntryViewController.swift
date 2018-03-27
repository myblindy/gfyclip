//
//  ViewController.swift
//  GfyClip
//
//  Created by Marius Mitea on 2018-03-26.
//  Copyright © 2018 Marius Mitea. All rights reserved.
//

import UIKit

class URLEntryViewController: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var urlField: UITextField!
    
    var urlLocation = UrlLocation();
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func urlFieldEditingDidChange(_ sender: Any) {
        startButton.isEnabled = urlLocation.setUrl(urlString: urlField.text) != .Unknown
    }
}
