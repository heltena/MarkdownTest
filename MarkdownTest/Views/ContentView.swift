//
//  ContentView.swift
//  MarkdownTest
//
//  Created by Helio Tejedor on 11/11/21.
//

import MarkdownUI
import SwiftUI

struct ContentView: View {
    @State var showingChallenge = false
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Button {
                    showingChallenge = true
                } label: {
                    Text("Show Challenge")
                }
                Spacer()
            }
            .navigationBarTitle("Test", displayMode: .inline)
        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showingChallenge) {
            NavigationView {
                SimpleChallengeView()
                .toolbar {
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Close") {
                            showingChallenge = false
                        }
                    }
                }
            }
            .navigationViewStyle(.stack)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
