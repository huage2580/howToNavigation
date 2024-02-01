//
//  DetailView.swift
//  howToNavigation
//
//  Created by hua sheng lu on 2024/2/1.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var navigationCoordinator:NavigationCoordinator
    var index:Int
    
    var body: some View {
        Text("detail page for:\(index)")
        Button(action: {
            navigationCoordinator.push(url: NextURL())
        }, label: {
            Text("GO TO NEXT")
        })
    }
}

#Preview {
    DetailView(index: 666)
}
