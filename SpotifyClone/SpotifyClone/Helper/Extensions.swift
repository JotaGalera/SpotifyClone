//
//  Extensions.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 03/02/2021.
//

import Foundation
import SwiftUI

extension UIColor {
    static let backgroundBlack = UIColor(named: "backgroundBlack")
    static let darkGray = UIColor(named: "darkGray")
    static let lightPurple = UIColor(named: "lightPurple")
}

extension UIScreen {
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
}

extension UINavigationController: UIGestureRecognizerDelegate { 
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
