//
//  test.swift
//  Unite 2.0
//
//  Created by 野口航汰 on 2023/04/13.
//

import SwiftUI


 
struct test: View {
    @State private var lecturewikiid: LectureWikiIDs? = nil
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Apple") { lecturewikiid = LectureWikiIDs(id: 100) }
            Button("SwiftUI") { lecturewikiid = LectureWikiIDs(id: 101) }
        }
        .sheet(item: $lecturewikiid) { item in
            NextView(lectureID: item)
        }
    }
}
 
struct NextView: View {
    let lectureID: LectureWikiIDs
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello \(lectureID.id)!")
                .fontWeight(.heavy)
                .font(.title)
            Button("画面を閉じる") { dismiss() }
        }
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
