//
//  ContentView.swift
//  Simple Dice Roller (SwiftUI)
//
//  Created by Ian Kincaid on 3/22/24.
//

import SwiftUI

struct ContentView: View {
    // Set initial die image to dicegeneral
    @State var die_image:String = "dicegeneral"
    // Set initial results to Waiting...
    @State var dice_result: String = "Waiting..."
    
    var body: some View {
        VStack {
            // Create title text
            Text("Simple Die Roller App")
                .fontWeight(.bold)
                .font(.largeTitle)
            
                .padding(.bottom, 25)
            // Create die image
            Image(self.die_image)
                .resizable().frame(width: 300, height: 300)
            // Create die result text
            Text(self.dice_result)
                .font(.title)
                .padding(.bottom, 25)
            
            Button(action: {
                // Generate random number between 1 and 6
                let randomNumber = arc4random_uniform(6) + 1
                // Set label to randomNumber
                self.dice_result = String(randomNumber)
                // switch statement changes dice_image
                switch randomNumber {
                case 1:
                    self.die_image = "dice1"
                case 2:
                    self.die_image = "dice2"
                case 3:
                    self.die_image = "dice3"
                case 4:
                    self.die_image = "dice4"
                case 5:
                    self.die_image = "dice5"
                case 6:
                    self.die_image = "dice6"
                default:
                    return
                }
            }) {
                Text("Roll!")
                    .font(.title)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
