//
//  SimpleChallengeView.swift
//  MarkdownTest
//
//  Created by Helio Tejedor on 11/12/21.
//

import SwiftUI
import MarkdownUI

let MARKDOWN_EXAMPLE = #"""
# Header example

Normal paragraph example, with a list:
- item 1
- item 2
- item 3

Other stuff...

> **Note:** *An a note*, with more info.

## Header 2

Last paragraph.
"""#

struct SimpleChallengeView: View {
    @State var dial: WaveDialData?

    var body: some View {
        GeometryReader { proxy in
            ZStack(alignment: .topLeading) {
                ScrollView {
                    VStack(spacing: 20) {
                        Markdown(Document(MARKDOWN_EXAMPLE))
                            .padding(.vertical)
                                                
                        WaveView(dial: $dial)
                            .background(Color.red)
                    }
                    .padding(.horizontal)
                }
    
                if let dial = dial {
                    WaveDialView(data: dial, parent: proxy)
                }
            }
        }
    }
}

struct SimpleChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleChallengeView()
    }
}
