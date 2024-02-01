//
//  Tab1View.swift
//  howToNavigation
//
//  Created by hua sheng lu on 2024/2/1.
//

import SwiftUI

struct Tab1View: View {
    @StateObject var navigationCoordinator = NavigationCoordinator.Tab1
    var body: some View {
        NavigationStack(path: $navigationCoordinator.path) {
            List {
                ForEach(0...99,id:\.self) { i in
                    NavigationLink(value: MyDetailURL(index: i)) {
                        Text("item \(i)")
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Tab1 List")
            .toolbar(content: {
                ToolbarItem(placement: .primaryAction) {
                    Button("Next") {
                        navigationCoordinator.push(url: NextURL())
                    }
                }
            })
            .myRouter()
        }
        .environmentObject(navigationCoordinator)
    }
}

#Preview {
    Tab1View()
}
