//
//  DefinitionViewController.swift
//  EmojiDictionary2
//
//  Created by Dan Waseen on 12/31/17.
//  Copyright © 2017 RevWon. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var birthyearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var defLabel: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        birthyearLabel.text = "Birthyear: \(emoji.birthyear)"
        categoryLabel.text = "Category:  \(emoji.category)"
        defLabel.text = "Definition: \(emoji.definition)"
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
