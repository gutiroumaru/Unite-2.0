//
//  InstructionView.swift
//  Unite 2.0
//
//  Created by  on 2023/03/31.
//

import SwiftUI

struct InstructionView: View {
    @AppStorage("isFirstLaunch_Key") var isFirstLaunch = true

    var body: some View {
        ZStack {
            Color.backgroundColor
            
            VStack {
                Spacer()
                
                Image("puzzle")
                    .resizable()
                    .frame(width: 130.0
                           , height: 130.0)
                
                Spacer()
                    .frame(width: 30.0, height: 30.0)
                
                Text("UniTeをインストールしていただきありがとうございます！")
                    .font(.largeTitle)
                    .padding(30.0)
                
                
                Spacer()
                
                 Button("UniTeについて") {
                     if let url = URL(string: "https://sites.google.com/g.ecc.u-tokyo.ac.jp/unite/home") {
                         UIApplication.shared.open(url, options: [.universalLinksOnly: false])
                     }
                 }
                 .frame(width: 300.0, height: 50.0)
                 .buttonStyle(.borderedProminent)
                 
                 Spacer()
                     .frame(width: 300.0, height: 30)

                
                Button("UniTeを始める") {
                    isFirstLaunch = false
                }
                .frame(width: 300.0, height: 50.0)
                .buttonStyle(.borderedProminent)

                
                
                Spacer()
                    .frame(width: 50.0, height: 50.0)
                
            }
        }
        .ignoresSafeArea()
    }
}

struct InstructionView_Previews: PreviewProvider {
    static var previews: some View {
        InstructionView()
    }
}
