//
//  ViewController.swift
//  GfyClip
//
//  Created by Marius Mitea on 2018-03-26.
//  Copyright © 2018 Marius Mitea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var urlField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func urlFieldEditingDidChange(_ sender: Any) {
        startButton.isEnabled = urlField.text != nil && !urlField.text!.isEmpty
    }
}
