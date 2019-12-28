//
//  ContentView.swift
//  ToyBottomSheet
//
//  Created by Faiz Mokhtar on 28/12/2019.
//  Copyright © 2019 Faiz Mokhtar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var bottomSheetShown = false

    var body: some View {
        GeometryReader { geometry in
            Color.green
            BottomSheetView(
                isOpen: self.$bottomSheetShown,
                maxHeight: geometry.size.height * 0.7
            ) {
                Color.blue
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
