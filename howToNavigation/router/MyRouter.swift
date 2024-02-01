//
//  MyRouter.swift
//  howToNavigation
//
//  Created by hua sheng lu on 2024/2/1.
//

import Foundation
import SwiftUI

extension View {
    public func myRouter() -> some View {
        self
        .navigationDestination(for: MyDetailURL.self) { url in
            DetailView(index: url.index)
                .toolbar(.hidden, for: .tabBar)
        }
        .navigationDestination(for: MyDetailWithTabURL.self) { url in
            DetailView(index: url.index)
        }
        .navigationDestination(for: NextURL.self) { url in
            NextView()
                .toolbar(.hidden, for: .tabBar)
        }
    }
}
