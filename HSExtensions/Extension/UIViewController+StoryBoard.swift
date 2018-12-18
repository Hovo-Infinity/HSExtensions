//
//  UIViewController+StoryBoard.swift
//  HSExtensions
//
//  Created by Hovhannes Stepanyan.
//  Copyright © 2018 Hovhannes Stepanyan. All rights reserved.
//

import UIKit

extension UIViewController {
    static func instantiateViewControllerForStoryBoardId<T>(_ name: String) -> T {
        let type = T.self
        let className = String(describing: type)
        let bundle = Bundle(for: type as! AnyClass)
        let storyBoard = UIStoryboard(name: name, bundle: bundle)
        return storyBoard.instantiateViewController(withIdentifier: className) as! T
    }
}
