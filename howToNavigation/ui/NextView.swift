//
//  NextView.swift
//  howToNavigation
//
//  Created by hua sheng lu on 2024/2/1.
//

import SwiftUI

struct NextView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Text("this is NEXT Page")
        Button("BACK") {
            presentationMode.wrappedValue.dismiss()
        }
    }
}

#Preview {
    NextView()
}
