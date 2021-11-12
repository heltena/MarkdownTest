//
//  WaveDialData.swift
//  MarkdownTest
//
//  Created by Helio Tejedor on 3/18/21.
//

import SwiftUI

public struct WaveDialData: Equatable {
    public var playingPercentage: Double
    public var frame: CGRect
    
    public static func==(lhs: WaveDialData, rhs: WaveDialData) -> Bool {
        lhs.playingPercentage == rhs.playingPercentage
            && lhs.frame == rhs.frame
    }
}
