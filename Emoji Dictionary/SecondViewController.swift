//
//  SecondViewController.swift
//  Emoji Dictionary
//
//  Created by Farah Alam on 5/1/17.
//  Copyright © 2017 Farah Alam. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "🙃" {
            definitionLabel.text = "This is an upside-down smiley"
        }
        
        if emoji == "💩" {
            definitionLabel.text = "This is a poo emoji"
        }
        
        if emoji == "👠" {
            definitionLabel.text = "This is a shoe emoji"
        }
        
        if emoji == "🐹" {
            definitionLabel.text = "This is a hamster emoji"
        }
        
        if emoji == "🐬" {
            definitionLabel.text = "This is a dolphin emoji"
        }
        
        if emoji == "😻" {
            definitionLabel.text = "This is a cat-with-heart-eyes emoji"
        }
        
        if emoji == "☂️" {
            definitionLabel.text = "This is an umbrella emoji"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
