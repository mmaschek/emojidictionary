//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Mike Maschek on 2/17/17.
//  Copyright © 2017 Mike Maschek. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojiTableView.dataSource = self
        emojiTableView.delegate = self
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😃"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A smiley face"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "💩"
        emoji2.birthYear = 2009
        emoji2.category = "Smiley"
        emoji2.definition = "A smiley poo"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😺"
        emoji3.birthYear = 2013
        emoji3.category = "Animal"
        emoji3.definition = "A kitty face"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😩"
        emoji4.birthYear = 2010
        emoji4.category = "Smiley"
        emoji4.definition = "A frowny face"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐵"
        emoji5.birthYear = 2008
        emoji5.category = "Animal"
        emoji5.definition = "Monkey"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🐸"
        emoji6.birthYear = 2010
        emoji6.category = "Animal"
        emoji6.definition = "Froggy"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }

}

