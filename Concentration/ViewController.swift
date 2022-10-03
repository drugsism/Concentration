//
//  ViewController.swift
//  Concentration
//
//  Created by James Roh on 2022/09/29.
//

import UIKit

class ViewController: UIViewController {

    lazy var game = Concentration(numberOfPairIdCards: (cardButtons.count + 1)/2)
    
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flip Count: \(flipCount)"
        }
    }
    
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender) {
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        } else {
            print("")
        }
    }
    
    func updateViewFromModel() {
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp {
                button.setTitle(emoji(for: card), for: UIControl.State.normal)
                button.backgroundColor = UIColor.white
            } else {
                button.setTitle("", for: UIControl.State.normal)
                if card.isMatched {
                    button.isHidden = true
                } else {
                    button.backgroundColor = UIColor.orange
                }
            }
        }
    }
    var emojiChoices = ["👻", "🎃", "🦖", "🦕", "🐓", "🐬", "🍄", "🐷", "🐒", "⛄️", "⚽️", "🚗", "🚑", "🚒", "🚁", "✈️", "🎁", "❤️", "🍀"]
    var emoji = [Int:String]()
    
    func emoji(for card: Card) -> String {
        if emoji[card.identifier] == nil, emojiChoices.count > 0 {
            let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
            emoji[card.identifier] = emojiChoices.remove(at: randomIndex)
        }
        
        return emoji[card.identifier] ?? "?"
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton ) {
        flipCount += 1
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = UIColor.systemIndigo
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = UIColor.white
        }
        
        
    }
}

