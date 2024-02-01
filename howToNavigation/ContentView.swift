//
//  ContentView.swift
//  howToNavigation
//
//  Created by hua sheng lu on 2024/2/1.
//

import SwiftUI

enum HomeTab {
    case tab1,tab2,tab3
}

struct ContentView: View {
    @State var currentTab = HomeTab.tab1
    
    var body: some View {
        TabView(selection: $currentTab,
                content:  {
            Tab1View()
                .tabItem { Label("Tab1", systemImage: "face.smiling") }
                .tag(HomeTab.tab1)
            Tab2View()
                .tabItem { Label("Tab2", systemImage: "face.smiling") }
                .tag(HomeTab.tab2)
            Text("Tab Content 3")
                .tabItem { Label("Tab2", systemImage: "face.smiling") }
                .tag(HomeTab.tab3)
        })
    }
    
    private func currRouter() -> NavigationCoordinator {
        switch currentTab {
        case .tab1:
            return NavigationCoordinator.Tab1
        case .tab2:
            return NavigationCoordinator.Tab2
        case .tab3:
            return NavigationCoordinator.Tab3
        }
    }
}

#Preview {
    ContentView()
}
