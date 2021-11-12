//
//  WaveDialView.swift
//  MarkdownTest
//
//  Created by Helio Tejedor on 3/18/21.
//

import SwiftUI

public struct WaveDialView: View {
    var data: WaveDialData
    var x: CGFloat
    var y: CGFloat
    
    public init(data: WaveDialData, parent: GeometryProxy) {
        self.data = data
        let parentFrame = parent.frame(in: .global)
        self.x = data.frame.origin.x - parentFrame.origin.x
        self.y = data.frame.midY - parentFrame.origin.y
    }

    public var body: some View {
        VStack(alignment: .leading) {
            VStack {
                Text("Line 1")
                Text("Line 2")
            }
            .font(.footnote)
            .padding(5)
            .foregroundColor(Color.white)
            .background(Color.accentColor)
            .clipShape(RoundedRectangle(cornerRadius: 5))
            .shadow(radius: 5)
        }
        .position(x: x, y: y)
        .offset(
            x: CGFloat(data.playingPercentage) * data.frame.size.width,
            y: -(data.frame.size.height))
    }
}

struct WaveDialView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { proxy in
            WaveDialView(data: WaveDialData(playingPercentage: 0.5, frame: .zero), parent: proxy)
        }
    }
}
