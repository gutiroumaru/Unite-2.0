//
//  TestNavigation1View.swift
//  Unite 2.0
//
//  Created by 野口航汰 on 2023/04/09.
//

import SwiftUI

struct TestNavigation1View: View {
    var body: some View {
        NavigationView {
            VStack {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
                    .overlay(Text("Tap me!").foregroundColor(.white))
                    .padding()
                    .onTapGesture {
                        // Nothing to do here. Just to make the circle tappable.
                    }
                NavigationLink(destination: DestinationView()) {
                    EmptyView()
                }
            }
            .navigationTitle("Home")
        }
    }
}

struct DestinationView: View {
    var body: some View {
        Text("This is the destination view")
            .navigationTitle("Destination")
    }
}


struct TestNavigation1View_Previews: PreviewProvider {
    static var previews: some View {
        TestNavigation1View()
    }
}
