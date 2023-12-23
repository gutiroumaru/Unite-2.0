//
//  TestNavigationView.swift
//  Unite 2.0
//
//  Created by 野口航汰 on 2023/04/09.
//

import SwiftUI

struct TestNavigationView: View {
    @State var value: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter a value", text: $value)
                    .padding()
                NavigationLink(destination: DetailView(value: value)) {
                    Text("Next")
                }
            }
        }
    }
}

struct DetailView: View {
    var value = "a"
    
    var body: some View {
        Text("Value: \(value)")
    }
}

struct navigationView: View {
    @State private var destinationText = ""
    @State private var isShowingDestination = false
    
    var body: some View {
        VStack {
            Button("Go to Destination") {
                isShowingDestination = true
            }
            .sheet(isPresented: $isShowingDestination) {
                DestinationView(destinationText: destinationText)
            }
            TextField("Enter text", text: $destinationText)
                .textFieldStyle(.roundedBorder)
                .padding()
        }
    }
}

struct DestinationView: View {
    @Environment(\.presentationMode) var presentationMode
    
    let destinationText: String
    
    var body: some View {
        VStack {
            Text("Destination View")
                .font(.title)
            Text("You entered: \(destinationText)")
                .padding()
            Button("Dismiss") {
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}


struct TestNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        TestNavigationView()
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        navigationView()
    }
}

