//
//  CollectionViewCell+ReuseIdentifier.swift
//  HSExtensions
//
//  Created by Hovhannes Stepanyan.
//  Copyright © 2018 Hovhannes Stepanyan. All rights reserved.
//

import UIKit

extension UICollectionViewCell {
    static var reuseIdentifier: String {
        return NSStringFromClass(self)
    }
    
    static var nib: UINib? {
        let bundle = Bundle(for: self)
        let name = self.description().components(separatedBy: ".").last ?? ""
        guard let _ = bundle.path(forResource: name, ofType: ".nib") else {
            return nil
        }
        return UINib(nibName: name, bundle: bundle)
    }
}
