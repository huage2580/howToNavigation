//
//  Tab2View.swift
//  howToNavigation
//
//  Created by hua sheng lu on 2024/2/1.
//

import SwiftUI

struct Tab2View: View {
    @StateObject var navigationCoordinator = NavigationCoordinator.Tab2
    @State var showSheet = false
    var body: some View {
        NavigationStack(path: $navigationCoordinator.path) {
            List {
                ForEach(0...99,id:\.self) { i in
                    HStack{
                        Text("push Item \(i)")
                        Spacer()
                        Image(systemName: "arrow.right")
                    }
                    .contentShape(Rectangle())
                    .onTapGesture {
                        navigationCoordinator.push(url: MyDetailWithTabURL(index: i))
                    }
                }
            }
            .sheet(isPresented: $showSheet, content: {
                Text("sheet content!")
            })
            .navigationTitle("Tab2 List")
            .toolbar(content: {
                ToolbarItem(placement: .primaryAction) {
                    Button("Sheet") {
                        showSheet = true
                    }
                }
            })
            .myRouter()
        }
        .environmentObject(navigationCoordinator)
    }
}

#Preview {
    Tab2View()
}
