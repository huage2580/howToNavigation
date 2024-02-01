//
//  NavigationCoordinator.swift
//  howToNavigation
//
//  Created by hua sheng lu on 2024/2/1.
//

import Foundation

import Foundation
import SwiftUI

class NavigationCoordinator: ObservableObject {
    static let Tab1 = NavigationCoordinator()
    static let Tab2 = NavigationCoordinator()
    static let Tab3 = NavigationCoordinator()
    
    @Published var path = NavigationPath()

    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func push(url: any Hashable){
        path.append(url)
    }
}
