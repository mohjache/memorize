//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Anaru Herbert on 17/9/20.
//  Copyright © 2020 Anaru Herbert. All rights reserved.
//

import SwiftUI
func createCardContent(pairIndex: Int) -> String {
    return "😀"
}
class EmojiMemoryGame {
    private var model: MemoryGame<String> = createMemoryGame()
        
    static func createMemoryGame() -> MemoryGame<String>{
        let emojis: Array<String> = ["👻", "🎃", "🕷"]
        
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count)  { pairIndex in
            return emojis[pairIndex]
        }
    }
        
    
    var cards: Array<MemoryGame<String>.Card>{
        model.cards
    }
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
}
