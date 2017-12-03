//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Richard Bernard on 2017-12-03.
//  Copyright © 2017 Richard Bernard. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiDefinition: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
   
    var emoji = "No emoji"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        if emoji == "🤗"{
            emojiDefinition.text = "Happy face with hugging hands"
        }
        if emoji == "😋"{
            emojiDefinition.text = "Silly face with tongue sticking out"
        }
        if emoji == "🤓"{
            emojiDefinition.text = "Nerdy face"
        }
        if emoji == "🦊"{
            emojiDefinition.text = "Fox"
        }
        if emoji == "🦆"{
            emojiDefinition.text = "Duck"
        }
        if emoji == "🐳"{
            emojiDefinition.text = "Spouting whale"
        }
        if emoji == "🐉"{
            emojiDefinition.text = "Dragon using rasengan"
        }
        if emoji == "⛄️"{
            emojiDefinition.text = "Snowman"
        }
        if emoji == "🍥"{
            emojiDefinition.text = "Naruto fish cake"
        }
        if emoji == "🥅"{
            emojiDefinition.text = "Hockey net"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
