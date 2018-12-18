//
//  String+Encoding.swift
//  HSExtensions
//
//  Created by Hovhannes Stepanyan.
//  Copyright © 2018 Hovhannes Stepanyan. All rights reserved.
//

import Foundation

public extension String {
    var urlEscaped: String {
        return addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
    }
    
    var utf8Encoded: Data {
        return data(using: .utf8)!
    }
}
