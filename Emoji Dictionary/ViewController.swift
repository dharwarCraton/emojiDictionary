//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Farah Alam on 5/1/17.
//  Copyright © 2017 Farah Alam. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var daFirstTableView: UITableView!
    
    var emojisArray : [Emoji] = [] //This variable is an array of Emoji objects created from the Emoji class. It is empty and will be populated by function make emoji array below
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        daFirstTableView.dataSource = self
        daFirstTableView.delegate = self
        
        emojisArray = makeEmojiArry() //Populates the Emoji objects array above
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojisArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojisArray[indexPath.row]
        cell.textLabel?.text = emoji.emojiType
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojisArray[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secVC = segue.destination as! SecondViewController
        secVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArry() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.emojiType = "🙃"
        emoji1.emojiCategory = "Smiley"
        emoji1.emojiDefinition = "A smiley with an upside-down face"
        emoji1.emojiOriginationYear = 2001
        
        let emoji2 = Emoji()
        emoji2.emojiType = "💩"
        emoji2.emojiCategory = "Smiley"
        emoji2.emojiDefinition = "A poo face"
        emoji2.emojiOriginationYear = 2009
        
        let emoji3 = Emoji()
        emoji3.emojiType = "👠"
        emoji3.emojiCategory = "Image"
        emoji3.emojiDefinition = "A cartoon shoe image"
        emoji3.emojiOriginationYear = 2012
        
        let emoji4 = Emoji()
        emoji4.emojiType = "🐹"
        emoji4.emojiCategory = "Image"
        emoji4.emojiDefinition = "A hamster face"
        emoji4.emojiOriginationYear = 2010
        
        let emoji5 = Emoji()
        emoji5.emojiType = "🐬"
        emoji5.emojiCategory = "Image"
        emoji5.emojiDefinition = "A dolphin"
        emoji5.emojiOriginationYear = 2009
        
        let emoji6 = Emoji()
        emoji6.emojiType = "😻"
        emoji6.emojiCategory = "Smiley"
        emoji6.emojiDefinition = "A smiley face with heart eyes"
        emoji6.emojiOriginationYear = 2011
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
        
    }


}

