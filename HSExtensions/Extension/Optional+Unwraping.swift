//
//  Optional+Unwraping.swift
//  HSExtensions
//
//  Created by Hovhannes Stepanyan.
//  Copyright © 2018 Hovhannes Stepanyan. All rights reserved.
//

import Foundation

extension Optional {
    func isNil() -> Bool {
        return self == nil
    }
    
    func notNil() -> Bool {
        return !isNil()
    }
    
    func valueOr(_ default: Wrapped) -> Wrapped {
        return self ?? `default`
    }
    
    func wrapped() -> Wrapped {
        return self!
    }
}
