//
//  CGFloat+extensions.swift
//  MarkdownTest
//
//  Created by Helio Tejedor on 1/26/21.
//  Copyright © 2021 Heliodoro Tejedor Navarro. All rights reserved.
//

import Foundation

extension Comparable {
    
    func clamp(to: ClosedRange<Self>) -> Self {
        if self <= to.lowerBound {
            return to.lowerBound
        } else if self >= to.upperBound {
            return to.upperBound
        }
        return self
    }

}
