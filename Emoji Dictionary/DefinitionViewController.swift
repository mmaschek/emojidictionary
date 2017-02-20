//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Mike Maschek on 2/19/17.
//  Copyright © 2017 Mike Maschek. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!

    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        
        if emoji == "💩" {
            definitionLabel.text = "stinky poo"
        }
        if emoji == "😃" {
            definitionLabel.text = "happy guy"
        }
        if emoji == "🐸" {
            definitionLabel.text = "froggy"
        }
        if emoji == "😺" {
            definitionLabel.text = "kitty face"
        }
        if emoji == "🐵" {
            definitionLabel.text = "monkey"
        }
        if emoji == "😩" {
            definitionLabel.text = "so sad"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
