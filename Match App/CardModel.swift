//
//  CardModel.swift
//  Match App
//
//  Created by zombietux on 22/01/2019.
//  Copyright © 2019 Christopher Ching. All rights reserved.
//

import Foundation

class CardModel {
    
    func getCards() -> [Card]{
        
        // Declare an array to store the generated cards
        var generatedCardsArray = [Card]()
        
        // Randomly generate pairs of cards
        for _ in 1...8 {
            
            // Get a random number
            let randomNumber = arc4random_uniform(13) + 1
            
            // Log the number
            print("generating a random nummber \(randomNumber)")
            
            // Create the first card object
            let cardOne = Card()
            cardOne.imageName = "card\(randomNumber)"
            
            generatedCardsArray.append(cardOne)
            
            let cardTwo = Card()
            cardTwo.imageName = "card\(randomNumber)"
            
            generatedCardsArray.append(cardTwo)
            
            // OPTIONAL: Make it so we only have unique
        }
        
        // TODO: Randomize the array
        print(generatedCardsArray.count)
        
        // Return the array
        return generatedCardsArray
    }
}
