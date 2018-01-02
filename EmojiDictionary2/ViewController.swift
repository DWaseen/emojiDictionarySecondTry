//
//  ViewController.swift
//  EmojiDictionary2
//
//  Created by Dan Waseen on 12/30/17.
//  Copyright © 2017 RevWon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var dacoolTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        dacoolTableView.dataSource = self
        dacoolTableView.delegate = self
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
    
    func makeEmojiArray() -> [Emoji] {
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = "🏈"
        emoji1.birthyear = 2010
        emoji1.category = "ball"
        emoji1.definition = "football"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "⛸"
        emoji2.birthyear = 2011
        emoji2.category = "ice"
        emoji2.definition = "ice skate"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😃"
        emoji3.birthyear = 2012
        emoji3.category = "face"
        emoji3.definition = "happy face"
        
        return [emoji1, emoji2, emoji3]
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

