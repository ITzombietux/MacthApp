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
        
        // Declare an array to store numbers we've already generated
        var generateNumbersArray = [Int]()
        
        // Declare an array to store the generated cards
        var generatedCardsArray = [Card]()
        
        // Randomly generate pairs of cards
        while generateNumbersArray.count < 8 {
            
            // Get a random number
            let randomNumber = arc4random_uniform(13) + 1
            
            // Ensure that the random number isn't one we already have
            if generateNumbersArray.contains(Int(randomNumber)) == false {
                
                // Log the number
                print("generating a random nummber \(randomNumber)")
                
                // Store the number into the generateNumberArray
                generateNumbersArray.append(Int(randomNumber))
                
                // Create the first card object
                let cardOne = Card()
                cardOne.imageName = "card\(randomNumber)"
                
                generatedCardsArray.append(cardOne)
                
                let cardTwo = Card()
                cardTwo.imageName = "card\(randomNumber)"
                
                generatedCardsArray.append(cardTwo)
                
            }
        }
        
        // TRandomize the array
        
        for i in 0...generatedCardsArray.count-1 {
            
            // Find a random index to swap with
            let randomNumber = Int(arc4random_uniform(UInt32(generatedCardsArray.count)))
            
            // Swap the two cards
            let temporaryStorege = generatedCardsArray[0]
            generatedCardsArray[0] = generatedCardsArray[randomNumber]
            generatedCardsArray[randomNumber] = temporaryStorege
            
        }
       
        // Return the array
        return generatedCardsArray
    }
}
