//
//  WaveView.swift
//  MarkdownTest
//
//  Created by Helio Tejedor on 11/12/21.
//

import SwiftUI

struct WaveView: View {
    @Binding var dial: WaveDialData?   
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Text("Wave Example")
                    Spacer()
                }
                Spacer()
            }
            .contentShape(Rectangle())
            .gesture(
                DragGesture(minimumDistance: 0)
                    .onChanged { value in
                        let percentage = (value.location.x / geometry.size.width).clamp(to: 0...1)
                        self.dial = WaveDialData(playingPercentage: Double(percentage), frame: geometry.frame(in: .global))
                    }
                    .onEnded { _ in
                        self.dial = nil
                    }
            )
        }
        .frame(height: 80)
    }
}

struct WaveView_Previews: PreviewProvider {
    static var previews: some View {
        WaveView(dial: .constant(nil))
    }
}
