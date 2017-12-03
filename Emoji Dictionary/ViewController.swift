//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Richard Bernard on 2017-12-03.
//  Copyright © 2017 Richard Bernard. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiTableView: UITableView!
    
    var emoji = ["🤗","😋","🤓","🦊","🦆","🐳","🐉","⛄️","🍥","🥅"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        emojiTableView.dataSource = self
        emojiTableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emoji.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emoji[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let Emoji = emoji[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "moveSegue", sender: Emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defViewCont = segue.destination as! DefinitionViewController
        defViewCont.emoji = sender as! String
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

