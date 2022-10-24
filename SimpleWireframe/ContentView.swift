//
//  ContentView.swift
//  SimpleWireframe
//
//  Created by user223537 on 10/23/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showSuccess = false
    @State private var showFailure = false
    @State private var dealDetails = false
    var body: some View {
        VStack {
            Text("[Placeholder Monster Image]")
            Text("You encounter a monster!").bold()
            
            Divider()
            ControlGroup {
                Button("Stab it!"){
                    showFailure = true
                    showSuccess = false
                    dealDetails = true
                }
                Button("Sneak around!"){
                    showSuccess = true
                    showFailure = false
                    dealDetails = true
                }
                Button("Run away!"){
                    showSuccess = true
                    showFailure = false
                    dealDetails = true
                }
                
            }
            Text("This is a sample encounter, for now, we assume your character possesses adequate agility, but not so much strenght. Therefore...")
            if showSuccess {
                Text("Success! You have enough agility to preform this action...")
            }
            if showFailure {
                Text("Failure...you lacked the strenght to preform this action.")
            }
            if dealDetails {
               Text("In any case, no matter the choice, a next option appears until the player fails to much or reaches a win condition.")
            }
           
            Spacer()
            
                    }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
