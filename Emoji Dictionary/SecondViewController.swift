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
    
    @IBOutlet weak var yearCreatedLabel: UILabel!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.emojiType
        yearCreatedLabel.text = "Origination Year: \(emoji.emojiOriginationYear)"
        categoryLabel.text = "Category: \(emoji.emojiCategory)"
        definitionLabel.text = emoji.emojiDefinition
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
