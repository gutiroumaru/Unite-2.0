//
//  ContentView.swift
//  UniTe 2.0
//
//  Created by  on 2023/02/23.
//

import SwiftUI
import SafariServices

extension Color {
    static let backgroundColor = Color("background")
    static let accentOrange = Color("accentOrange")
}

struct Lecture: Identifiable {
    var id: Int
    var name: String
    var room: String
    var yougen: String
    var professor: String
    var semester: String
    var category: String
}

struct syllabus: Codable, Identifiable {
    var id: Int
    var name: String
    var room: String
    var yougen: String
    var professor: String
    var semester: String
    var category: String
    var subcategory: String?
}


struct ContentView: View {
    @State private var lecturewikiid: LectureWikiIDs? = nil

    
    @State private var lectures = [syllabus]()
    @State private var lectures22a = [syllabus]()
    @State private var lectures23s = [syllabus]()
    
    @State var showingCreditBoardView = false
    
    @AppStorage("selectionKey") var selection = 1
    @AppStorage("EyearKey") var Eyear = 1
    
    @AppStorage("Fs1mon1Key") var Fs1mon1 = 0
    @AppStorage("Fs1mon2Key") var Fs1mon2 = 0
    @AppStorage("Fs1mon3Key") var Fs1mon3 = 0
    @AppStorage("Fs1mon4Key") var Fs1mon4 = 0
    @AppStorage("Fs1mon5Key") var Fs1mon5 = 0
    @AppStorage("Fs1mon6Key") var Fs1mon6 = 0
    @AppStorage("Fs1tue1Key") var Fs1tue1 = 0
    @AppStorage("Fs1tue2Key") var Fs1tue2 = 0
    @AppStorage("Fs1tue3Key") var Fs1tue3 = 0
    @AppStorage("Fs1tue4Key") var Fs1tue4 = 0
    @AppStorage("Fs1tue5Key") var Fs1tue5 = 0
    @AppStorage("Fs1tue6Key") var Fs1tue6 = 0
    @AppStorage("Fs1wed1Key") var Fs1wed1 = 0
    @AppStorage("Fs1wed2Key") var Fs1wed2 = 0
    @AppStorage("Fs1wed3Key") var Fs1wed3 = 0
    @AppStorage("Fs1wed4Key") var Fs1wed4 = 0
    @AppStorage("Fs1wed5Key") var Fs1wed5 = 0
    @AppStorage("Fs1wed6Key") var Fs1wed6 = 0
    @AppStorage("Fs1thu1Key") var Fs1thu1 = 0
    @AppStorage("Fs1thu2Key") var Fs1thu2 = 0
    @AppStorage("Fs1thu3Key") var Fs1thu3 = 0
    @AppStorage("Fs1thu4Key") var Fs1thu4 = 0
    @AppStorage("Fs1thu5Key") var Fs1thu5 = 0
    @AppStorage("Fs1thu6Key") var Fs1thu6 = 0
    @AppStorage("Fs1fri1Key") var Fs1fri1 = 0
    @AppStorage("Fs1fri2Key") var Fs1fri2 = 0
    @AppStorage("Fs1fri3Key") var Fs1fri3 = 0
    @AppStorage("Fs1fri4Key") var Fs1fri4 = 0
    @AppStorage("Fs1fri5Key") var Fs1fri5 = 0
    @AppStorage("Fs1fri6Key") var Fs1fri6 = 0
    
    @AppStorage("Fs2mon1Key") var Fs2mon1 = 0
    @AppStorage("Fs2mon2Key") var Fs2mon2 = 0
    @AppStorage("Fs2mon3Key") var Fs2mon3 = 0
    @AppStorage("Fs2mon4Key") var Fs2mon4 = 0
    @AppStorage("Fs2mon5Key") var Fs2mon5 = 0
    @AppStorage("Fs2mon6Key") var Fs2mon6 = 0
    @AppStorage("Fs2tue1Key") var Fs2tue1 = 0
    @AppStorage("Fs2tue2Key") var Fs2tue2 = 0
    @AppStorage("Fs2tue3Key") var Fs2tue3 = 0
    @AppStorage("Fs2tue4Key") var Fs2tue4 = 0
    @AppStorage("Fs2tue5Key") var Fs2tue5 = 0
    @AppStorage("Fs2tue6Key") var Fs2tue6 = 0
    @AppStorage("Fs2wed1Key") var Fs2wed1 = 0
    @AppStorage("Fs2wed2Key") var Fs2wed2 = 0
    @AppStorage("Fs2wed3Key") var Fs2wed3 = 0
    @AppStorage("Fs2wed4Key") var Fs2wed4 = 0
    @AppStorage("Fs2wed5Key") var Fs2wed5 = 0
    @AppStorage("Fs2wed6Key") var Fs2wed6 = 0
    @AppStorage("Fs2thu1Key") var Fs2thu1 = 0
    @AppStorage("Fs2thu2Key") var Fs2thu2 = 0
    @AppStorage("Fs2thu3Key") var Fs2thu3 = 0
    @AppStorage("Fs2thu4Key") var Fs2thu4 = 0
    @AppStorage("Fs2thu5Key") var Fs2thu5 = 0
    @AppStorage("Fs2thu6Key") var Fs2thu6 = 0
    @AppStorage("Fs2fri1Key") var Fs2fri1 = 0
    @AppStorage("Fs2fri2Key") var Fs2fri2 = 0
    @AppStorage("Fs2fri3Key") var Fs2fri3 = 0
    @AppStorage("Fs2fri4Key") var Fs2fri4 = 0
    @AppStorage("Fs2fri5Key") var Fs2fri5 = 0
    @AppStorage("Fs2fri6Key") var Fs2fri6 = 0
    
    @AppStorage("Fa1mon1Key") var Fa1mon1 = 0
    @AppStorage("Fa1mon2Key") var Fa1mon2 = 0
    @AppStorage("Fa1mon3Key") var Fa1mon3 = 0
    @AppStorage("Fa1mon4Key") var Fa1mon4 = 0
    @AppStorage("Fa1mon5Key") var Fa1mon5 = 0
    @AppStorage("Fa1mon6Key") var Fa1mon6 = 0
    @AppStorage("Fa1tue1Key") var Fa1tue1 = 0
    @AppStorage("Fa1tue2Key") var Fa1tue2 = 0
    @AppStorage("Fa1tue3Key") var Fa1tue3 = 0
    @AppStorage("Fa1tue4Key") var Fa1tue4 = 0
    @AppStorage("Fa1tue5Key") var Fa1tue5 = 0
    @AppStorage("Fa1tue6Key") var Fa1tue6 = 0
    @AppStorage("Fa1wed1Key") var Fa1wed1 = 0
    @AppStorage("Fa1wed2Key") var Fa1wed2 = 0
    @AppStorage("Fa1wed3Key") var Fa1wed3 = 0
    @AppStorage("Fa1wed4Key") var Fa1wed4 = 0
    @AppStorage("Fa1wed5Key") var Fa1wed5 = 0
    @AppStorage("Fa1wed6Key") var Fa1wed6 = 0
    @AppStorage("Fa1thu1Key") var Fa1thu1 = 0
    @AppStorage("Fa1thu2Key") var Fa1thu2 = 0
    @AppStorage("Fa1thu3Key") var Fa1thu3 = 0
    @AppStorage("Fa1thu4Key") var Fa1thu4 = 0
    @AppStorage("Fa1thu5Key") var Fa1thu5 = 0
    @AppStorage("Fa1thu6Key") var Fa1thu6 = 0
    @AppStorage("Fa1fri1Key") var Fa1fri1 = 0
    @AppStorage("Fa1fri2Key") var Fa1fri2 = 0
    @AppStorage("Fa1fri3Key") var Fa1fri3 = 0
    @AppStorage("Fa1fri4Key") var Fa1fri4 = 0
    @AppStorage("Fa1fri5Key") var Fa1fri5 = 0
    @AppStorage("Fa1fri6Key") var Fa1fri6 = 0
    
    @AppStorage("Fa2mon1Key") var Fa2mon1 = 0
    @AppStorage("Fa2mon2Key") var Fa2mon2 = 0
    @AppStorage("Fa2mon3Key") var Fa2mon3 = 0
    @AppStorage("Fa2mon4Key") var Fa2mon4 = 0
    @AppStorage("Fa2mon5Key") var Fa2mon5 = 0
    @AppStorage("Fa2mon6Key") var Fa2mon6 = 0
    @AppStorage("Fa2tue1Key") var Fa2tue1 = 0
    @AppStorage("Fa2tue2Key") var Fa2tue2 = 0
    @AppStorage("Fa2tue3Key") var Fa2tue3 = 0
    @AppStorage("Fa2tue4Key") var Fa2tue4 = 0
    @AppStorage("Fa2tue5Key") var Fa2tue5 = 0
    @AppStorage("Fa2tue6Key") var Fa2tue6 = 0
    @AppStorage("Fa2wed1Key") var Fa2wed1 = 0
    @AppStorage("Fa2wed2Key") var Fa2wed2 = 0
    @AppStorage("Fa2wed3Key") var Fa2wed3 = 0
    @AppStorage("Fa2wed4Key") var Fa2wed4 = 0
    @AppStorage("Fa2wed5Key") var Fa2wed5 = 0
    @AppStorage("Fa2wed6Key") var Fa2wed6 = 0
    @AppStorage("Fa2thu1Key") var Fa2thu1 = 0
    @AppStorage("Fa2thu2Key") var Fa2thu2 = 0
    @AppStorage("Fa2thu3Key") var Fa2thu3 = 0
    @AppStorage("Fa2thu4Key") var Fa2thu4 = 0
    @AppStorage("Fa2thu5Key") var Fa2thu5 = 0
    @AppStorage("Fa2thu6Key") var Fa2thu6 = 0
    @AppStorage("Fa2fri1Key") var Fa2fri1 = 0
    @AppStorage("Fa2fri2Key") var Fa2fri2 = 0
    @AppStorage("Fa2fri3Key") var Fa2fri3 = 0
    @AppStorage("Fa2fri4Key") var Fa2fri4 = 0
    @AppStorage("Fa2fri5Key") var Fa2fri5 = 0
    @AppStorage("Fa2fri6Key") var Fa2fri6 = 0
    
    @AppStorage("Ss1mon1Key") var Ss1mon1 = 0
    @AppStorage("Ss1mon2Key") var Ss1mon2 = 0
    @AppStorage("Ss1mon3Key") var Ss1mon3 = 0
    @AppStorage("Ss1mon4Key") var Ss1mon4 = 0
    @AppStorage("Ss1mon5Key") var Ss1mon5 = 0
    @AppStorage("Ss1mon6Key") var Ss1mon6 = 0
    @AppStorage("Ss1tue1Key") var Ss1tue1 = 0
    @AppStorage("Ss1tue2Key") var Ss1tue2 = 0
    @AppStorage("Ss1tue3Key") var Ss1tue3 = 0
    @AppStorage("Ss1tue4Key") var Ss1tue4 = 0
    @AppStorage("Ss1tue5Key") var Ss1tue5 = 0
    @AppStorage("Ss1tue6Key") var Ss1tue6 = 0
    @AppStorage("Ss1wed1Key") var Ss1wed1 = 0
    @AppStorage("Ss1wed2Key") var Ss1wed2 = 0
    @AppStorage("Ss1wed3Key") var Ss1wed3 = 0
    @AppStorage("Ss1wed4Key") var Ss1wed4 = 0
    @AppStorage("Ss1wed5Key") var Ss1wed5 = 0
    @AppStorage("Ss1wed6Key") var Ss1wed6 = 0
    @AppStorage("Ss1thu1Key") var Ss1thu1 = 0
    @AppStorage("Ss1thu2Key") var Ss1thu2 = 0
    @AppStorage("Ss1thu3Key") var Ss1thu3 = 0
    @AppStorage("Ss1thu4Key") var Ss1thu4 = 0
    @AppStorage("Ss1thu5Key") var Ss1thu5 = 0
    @AppStorage("Ss1thu6Key") var Ss1thu6 = 0
    @AppStorage("Ss1fri1Key") var Ss1fri1 = 0
    @AppStorage("Ss1fri2Key") var Ss1fri2 = 0
    @AppStorage("Ss1fri3Key") var Ss1fri3 = 0
    @AppStorage("Ss1fri4Key") var Ss1fri4 = 0
    @AppStorage("Ss1fri5Key") var Ss1fri5 = 0
    @AppStorage("Ss1fri6Key") var Ss1fri6 = 0
    
    @AppStorage("Ss2mon1Key") var Ss2mon1 = 0
    @AppStorage("Ss2mon2Key") var Ss2mon2 = 0
    @AppStorage("Ss2mon3Key") var Ss2mon3 = 0
    @AppStorage("Ss2mon4Key") var Ss2mon4 = 0
    @AppStorage("Ss2mon5Key") var Ss2mon5 = 0
    @AppStorage("Ss2mon6Key") var Ss2mon6 = 0
    @AppStorage("Ss2tue1Key") var Ss2tue1 = 0
    @AppStorage("Ss2tue2Key") var Ss2tue2 = 0
    @AppStorage("Ss2tue3Key") var Ss2tue3 = 0
    @AppStorage("Ss2tue4Key") var Ss2tue4 = 0
    @AppStorage("Ss2tue5Key") var Ss2tue5 = 0
    @AppStorage("Ss2tue6Key") var Ss2tue6 = 0
    @AppStorage("Ss2wed1Key") var Ss2wed1 = 0
    @AppStorage("Ss2wed2Key") var Ss2wed2 = 0
    @AppStorage("Ss2wed3Key") var Ss2wed3 = 0
    @AppStorage("Ss2wed4Key") var Ss2wed4 = 0
    @AppStorage("Ss2wed5Key") var Ss2wed5 = 0
    @AppStorage("Ss2wed6Key") var Ss2wed6 = 0
    @AppStorage("Ss2thu1Key") var Ss2thu1 = 0
    @AppStorage("Ss2thu2Key") var Ss2thu2 = 0
    @AppStorage("Ss2thu3Key") var Ss2thu3 = 0
    @AppStorage("Ss2thu4Key") var Ss2thu4 = 0
    @AppStorage("Ss2thu5Key") var Ss2thu5 = 0
    @AppStorage("Ss2thu6Key") var Ss2thu6 = 0
    @AppStorage("Ss2fri1Key") var Ss2fri1 = 0
    @AppStorage("Ss2fri2Key") var Ss2fri2 = 0
    @AppStorage("Ss2fri3Key") var Ss2fri3 = 0
    @AppStorage("Ss2fri4Key") var Ss2fri4 = 0
    @AppStorage("Ss2fri5Key") var Ss2fri5 = 0
    @AppStorage("Ss2fri6Key") var Ss2fri6 = 0

    @AppStorage("youbipickerKey") var youbipicker = 0
    @AppStorage("jigenpickerKey") var jigenpicker = 0
    
    func fetchsyllabus() {
        let requrl22s = URL(string: "https://api.sssapi.app/ziQgovV8laVxY8UFG_3Qm")!
        let requrl22a = URL(string: "https://api.sssapi.app/zyfX1_0ISDClSk4cRxX04")!
        let requrl23s = URL(string: "https://api.sssapi.app/7DzUY2JmjoLDy9Zx68H5I")!
        
        URLSession.shared.dataTask(with: requrl22s) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode([syllabus].self, from: data) {
                    DispatchQueue.main.async {
                        self.lectures = decodedResponse
                    }
                    return
                }
            }
            print("Error: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
        
        URLSession.shared.dataTask(with: requrl22a) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode([syllabus].self, from: data) {
                    DispatchQueue.main.async {
                        self.lectures22a = decodedResponse
                    }
                    return
                }
            }
            print("Error: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
        
        URLSession.shared.dataTask(with: requrl23s) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode([syllabus].self, from: data) {
                    DispatchQueue.main.async {
                        self.lectures23s = decodedResponse
                    }
                    return
                }
            }
            print("Error: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()

    }
    
    var body: some View {
        
        TabView{
            // ホーム Viewとして下に新たに書く
            ZStack {
                NavigationStack {
                    ScrollView {
                        VStack {
                            Spacer()
                                .frame(width: 100, height: 60.0)
                            switch selection {
                            case 1:
                                HStack {
                                    
                                    VStack {
                                        Button("") {
                                        }
                                        .frame(width: 25.0, height: 30.0)
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("1")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("2")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("3")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("4")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("5")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("6")))
                                    }
                                    .frame(width: 25.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("月")))
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1mon1)
                                        }) {
                                            VStack{
                                                
                                                if let mon1 = lectures.first(where: { $0.id == Fs1mon1}) {
                                                    
                                                    Text(mon1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1mon1 == 0 ? Color.backgroundColor : Color.accentOrange)


                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1mon2)
                                        }) {
                                            VStack{
                                                if let mon2 = lectures.first(where: { $0.id == Fs1mon2}) {
                                                    
                                                    Text(mon2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1mon2 == 0 ? Color.backgroundColor: Color.accentOrange)

                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1mon3)
                                        }) {
                                            VStack{
                                                if let mon3 = lectures.first(where: { $0.id == Fs1mon3}) {
                                                    
                                                    Text(mon3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1mon3 == 0 ? Color.backgroundColor: Color.accentOrange)

                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1mon4)

                                        }) {
                                            VStack{
                                                if let mon4 = lectures.first(where: { $0.id == Fs1mon4}) {
                                                    
                                                    Text(mon4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1mon4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1mon5)

                                        }) {
                                            VStack{
                                                if let mon5 = lectures.first(where: { $0.id == Fs1mon5}) {
                                                    
                                                    Text(mon5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1mon5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1mon6)

                                        }) {
                                            VStack{
                                                if let mon6 = lectures.first(where: { $0.id == Fs1mon6}) {
                                                    
                                                    Text(mon6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1mon6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("火")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1tue1)

                                        }) {
                                            VStack{
                                                if let tue1 = lectures.first(where: { $0.id == Fs1tue1}) {
                                                    
                                                    Text(tue1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1tue1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1tue2)

                                        }) {
                                            VStack{
                                                if let tue2 = lectures.first(where: { $0.id == Fs1tue2}) {
                                                    
                                                    Text(tue2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1tue2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1tue3)

                                        }) {
                                            VStack{
                                                if let tue3 = lectures.first(where: { $0.id == Fs1tue3}) {
                                                    
                                                    Text(tue3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1tue3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1tue4)

                                        }) {
                                            VStack{
                                                if let tue4 = lectures.first(where: { $0.id == Fs1tue4}) {
                                                    
                                                    Text(tue4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1tue4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1tue5)

                                        }) {
                                            VStack{
                                                if let tue5 = lectures.first(where: { $0.id == Fs1tue5}) {
                                                    
                                                    Text(tue5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1tue5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1tue6)

                                        }) {
                                            VStack{
                                                if let tue6 = lectures.first(where: { $0.id == Fs1tue6}) {
                                                    
                                                    Text(tue6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1tue6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("水")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1wed1)

                                        }) {
                                            VStack{
                                                if let wed1 = lectures.first(where: { $0.id == Fs1wed1}) {
                                                    
                                                    Text(wed1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1wed1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1wed2)

                                        }) {
                                            VStack{
                                                if let wed2 = lectures.first(where: { $0.id == Fs1wed2}) {
                                                    
                                                    Text(wed2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1wed2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1wed3)

                                        }) {
                                            VStack{
                                                if let wed3 = lectures.first(where: { $0.id == Fs1wed3}) {
                                                    
                                                    Text(wed3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1wed3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1wed4)

                                        }) {
                                            VStack{
                                                if let wed4 = lectures.first(where: { $0.id == Fs1wed4}) {
                                                    
                                                    Text(wed4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1wed4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1wed5)

                                        }) {
                                            VStack{
                                                if let wed5 = lectures.first(where: { $0.id == Fs1wed5}) {
                                                    
                                                    Text(wed5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1wed5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1wed6)

                                        }) {
                                            VStack{
                                                if let wed6 = lectures.first(where: { $0.id == Fs1wed6}) {
                                                    
                                                    Text(wed6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1wed6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("木")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1thu1)

                                        }) {
                                            VStack{
                                                if let thu1 = lectures.first(where: { $0.id == Fs1thu1}) {
                                                    
                                                    Text(thu1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1thu1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1thu2)

                                        }) {
                                            VStack{
                                                if let thu2 = lectures.first(where: { $0.id == Fs1thu2}) {
                                                    
                                                    Text(thu2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1thu2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1thu3)

                                        }) {
                                            VStack{
                                                if let thu3 = lectures.first(where: { $0.id == Fs1thu3}) {
                                                    
                                                    Text(thu3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1thu3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1thu4)

                                        }) {
                                            VStack{
                                                if let thu4 = lectures.first(where: { $0.id == Fs1thu4}) {
                                                    
                                                    Text(thu4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1thu4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1thu5)

                                        }) {
                                            VStack{
                                                if let thu5 = lectures.first(where: { $0.id == Fs1thu5}) {
                                                    
                                                    Text(thu5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1thu5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1thu6)

                                        }) {
                                            VStack{
                                                if let thu6 = lectures.first(where: { $0.id == Fs1thu6}) {
                                                    
                                                    Text(thu6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1thu6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("金")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1fri1)

                                        }) {
                                            VStack{
                                                if let fri1 = lectures.first(where: { $0.id == Fs1fri1}) {
                                                    
                                                    Text(fri1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1fri1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1fri2)

                                        }) {
                                        
                                            VStack{
                                                if let fri2 = lectures.first(where: { $0.id == Fs1fri2}) {
                                                    
                                                    Text(fri2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1fri2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1fri3)

                                        }) {
                                            VStack{
                                                if let fri3 = lectures.first(where: { $0.id == Fs1fri3}) {
                                                    
                                                    Text(fri3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1fri3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1fri4)

                                        }) {
                                            VStack{
                                                if let fri4 = lectures.first(where: { $0.id == Fs1fri4}) {
                                                    
                                                    Text(fri4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1fri4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1fri5)

                                        }) {
                                            VStack{
                                                if let fri5 = lectures.first(where: { $0.id == Fs1fri5}) {
                                                    
                                                    Text(fri5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1fri5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs1fri6)

                                        }) {
                                            VStack{
                                                if let fri6 = lectures.first(where: { $0.id == Fs1fri6}) {
                                                    
                                                    Text(fri6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs1fri6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    
                                    
                                }
                            case 2:
                                HStack {
                                    
                                    VStack {
                                        Button("") {
                                        }
                                        .frame(width: 25.0, height: 30.0)
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("1")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("2")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("3")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("4")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("5")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("6")))
                                    }
                                    .frame(width: 25.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("月")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2mon1)

                                        }) {
                                            VStack{
                                                
                                                if let mon1 = lectures.first(where: { $0.id == Fs2mon1}) {
                                                    
                                                    Text(mon1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2mon1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2mon2)

                                        }) {
                                            VStack{
                                                if let mon2 = lectures.first(where: { $0.id == Fs2mon2}) {
                                                    
                                                    Text(mon2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2mon2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2mon3)

                                        }) {
                                            VStack{
                                                if let mon3 = lectures.first(where: { $0.id == Fs2mon3}) {
                                                    
                                                    Text(mon3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2mon3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2mon4)

                                        }) {
                                            VStack{
                                                if let mon4 = lectures.first(where: { $0.id == Fs2mon4}) {
                                                    
                                                    Text(mon4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2mon4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2mon5)

                                        }) {
                                            VStack{
                                                if let mon5 = lectures.first(where: { $0.id == Fs2mon5}) {
                                                    
                                                    Text(mon5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2mon5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2mon6)

                                        }) {
                                            VStack{
                                                if let mon6 = lectures.first(where: { $0.id == Fs2mon6}) {
                                                    
                                                    Text(mon6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2mon6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("火")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2tue1)

                                        }) {
                                            VStack{
                                                if let tue1 = lectures.first(where: { $0.id == Fs2tue1}) {
                                                    
                                                    Text(tue1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2tue1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2mon2)

                                        }) {
                                            VStack{
                                                if let tue2 = lectures.first(where: { $0.id == Fs2tue2}) {
                                                    
                                                    Text(tue2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2tue2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2mon3)

                                        }) {
                                            VStack{
                                                if let tue3 = lectures.first(where: { $0.id == Fs2tue3}) {
                                                    
                                                    Text(tue3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2tue3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2mon4)

                                        }) {
                                            VStack{
                                                if let tue4 = lectures.first(where: { $0.id == Fs2tue4}) {
                                                    
                                                    Text(tue4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2tue4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2mon5)

                                        }) {
                                            VStack{
                                                if let tue5 = lectures.first(where: { $0.id == Fs2tue5}) {
                                                    
                                                    Text(tue5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2tue5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2mon6)

                                        }) {
                                            VStack{
                                                if let tue6 = lectures.first(where: { $0.id == Fs2tue6}) {
                                                    
                                                    Text(tue6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2tue6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("水")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2wed1)

                                        }) {
                                            VStack{
                                                if let wed1 = lectures.first(where: { $0.id == Fs2wed1}) {
                                                    
                                                    Text(wed1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2wed1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2wed2)

                                        }) {
                                            VStack{
                                                if let wed2 = lectures.first(where: { $0.id == Fs2wed2}) {
                                                    
                                                    Text(wed2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2wed2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2wed3)

                                        }) {
                                            VStack{
                                                if let wed3 = lectures.first(where: { $0.id == Fs2wed3}) {
                                                    
                                                    Text(wed3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2wed3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2wed4)

                                        }) {
                                            VStack{
                                                if let wed4 = lectures.first(where: { $0.id == Fs2wed4}) {
                                                    
                                                    Text(wed4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2wed4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2wed5)

                                        }) {
                                            VStack{
                                                if let wed5 = lectures.first(where: { $0.id == Fs2wed5}) {
                                                    
                                                    Text(wed5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2wed5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2wed6)

                                        }) {
                                            VStack{
                                                if let wed6 = lectures.first(where: { $0.id == Fs2wed6}) {
                                                    
                                                    Text(wed6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2wed6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("木")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2thu1)

                                        }) {
                                            VStack{
                                                if let thu1 = lectures.first(where: { $0.id == Fs2thu1}) {
                                                    
                                                    Text(thu1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2thu1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2thu2)

                                        }) {
                                            VStack{
                                                if let thu2 = lectures.first(where: { $0.id == Fs2thu2}) {
                                                    
                                                    Text(thu2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2thu2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2thu3)

                                        }) {
                                            VStack{
                                                if let thu3 = lectures.first(where: { $0.id == Fs2thu3}) {
                                                    
                                                    Text(thu3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2thu3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2thu4)

                                        }) {
                                            VStack{
                                                if let thu4 = lectures.first(where: { $0.id == Fs2thu4}) {
                                                    
                                                    Text(thu4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2thu4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2thu5)

                                        }) {
                                            VStack{
                                                if let thu5 = lectures.first(where: { $0.id == Fs2mon5}) {
                                                    
                                                    Text(thu5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2thu5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2thu6)

                                        }) {
                                            VStack{
                                                if let thu6 = lectures.first(where: { $0.id == Fs2thu6}) {
                                                    
                                                    Text(thu6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2thu6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("金")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2fri1)

                                        }) {
                                            VStack{
                                                if let fri1 = lectures.first(where: { $0.id == Fs2fri1}) {
                                                    
                                                    Text(fri1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2fri1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2fri2)

                                        }) {
                                            VStack{
                                                if let fri2 = lectures.first(where: { $0.id == Fs2fri2}) {
                                                    
                                                    Text(fri2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2fri2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2fri3)

                                        }) {
                                            VStack{
                                                if let fri3 = lectures.first(where: { $0.id == Fs2fri3}) {
                                                    
                                                    Text(fri3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2fri3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2fri4)

                                        }) {
                                            VStack{
                                                if let fri4 = lectures.first(where: { $0.id == Fs2fri4}) {
                                                    
                                                    Text(fri4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2fri4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2fri5)

                                        }) {
                                            VStack{
                                                if let fri5 = lectures.first(where: { $0.id == Fs2fri5}) {
                                                    
                                                    Text(fri5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2fri5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fs2fri6)

                                        }) {
                                            VStack{
                                                if let fri6 = lectures.first(where: { $0.id == Fs2fri6}) {
                                                    
                                                    Text(fri6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fs2fri6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                }
                            case 3:
                                HStack {
                                    
                                    VStack {
                                        Button("") {
                                        }
                                        .frame(width: 25.0, height: 30.0)
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("1")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("2")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("3")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("4")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("5")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("6")))
                                    }
                                    .frame(width: 25.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("月")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1mon1)

                                        }) {
                                            VStack{
                                                
                                                if let mon1 = lectures.first(where: { $0.id == Fa1mon1}) {
                                                    
                                                    Text(mon1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1mon1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1mon2)

                                        }) {
                                            VStack{
                                                if let mon2 = lectures.first(where: { $0.id == Fa1mon2}) {
                                                    
                                                    Text(mon2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1mon2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1mon3)

                                        }) {
                                            VStack{
                                                if let mon3 = lectures.first(where: { $0.id == Fa1mon3}) {
                                                    
                                                    Text(mon3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1mon3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1mon4)

                                        }) {
                                            VStack{
                                                if let mon4 = lectures.first(where: { $0.id == Fa1mon4}) {
                                                    
                                                    Text(mon4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1mon4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1mon5)

                                        }) {
                                            VStack{
                                                if let mon5 = lectures.first(where: { $0.id == Fa1mon5}) {
                                                    
                                                    Text(mon5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1mon5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1mon6)

                                        }) {
                                            VStack{
                                                if let mon6 = lectures.first(where: { $0.id == Fa1mon6}) {
                                                    
                                                    Text(mon6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1mon6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("火")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1tue1)

                                        }) {
                                            VStack{
                                                if let tue1 = lectures.first(where: { $0.id == Fa1tue1}) {
                                                    
                                                    Text(tue1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1tue1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1tue2)

                                        }) {
                                            VStack{
                                                if let tue2 = lectures.first(where: { $0.id == Fa1tue2}) {
                                                    
                                                    Text(tue2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1tue2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1tue3)

                                        }) {
                                            VStack{
                                                if let tue3 = lectures.first(where: { $0.id == Fa1tue3}) {
                                                    
                                                    Text(tue3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1tue3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1tue4)

                                        }) {
                                            VStack{
                                                if let tue4 = lectures.first(where: { $0.id == Fa1tue4}) {
                                                    
                                                    Text(tue4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1tue4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1tue5)

                                        }) {
                                            VStack{
                                                if let tue5 = lectures.first(where: { $0.id == Fa1tue5}) {
                                                    
                                                    Text(tue5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1tue5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1tue6)

                                        }) {
                                            VStack{
                                                if let tue6 = lectures.first(where: { $0.id == Fa1tue6}) {
                                                    
                                                    Text(tue6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1tue6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("水")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1wed1)

                                        }) {
                                            VStack{
                                                if let wed1 = lectures.first(where: { $0.id == Fa1wed1}) {
                                                    
                                                    Text(wed1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1wed1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1wed2)

                                        }) {
                                            VStack{
                                                if let wed2 = lectures.first(where: { $0.id == Fa1wed2}) {
                                                    
                                                    Text(wed2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1wed2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1wed3)

                                        }) {
                                            VStack{
                                                if let wed3 = lectures.first(where: { $0.id == Fa1wed3}) {
                                                    
                                                    Text(wed3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1wed3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1wed4)

                                        }) {
                                            VStack{
                                                if let wed4 = lectures.first(where: { $0.id == Fa1wed4}) {
                                                    
                                                    Text(wed4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1wed4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1wed5)

                                        }) {
                                            VStack{
                                                if let wed5 = lectures.first(where: { $0.id == Fa1wed5}) {
                                                    
                                                    Text(wed5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1wed5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1wed6)

                                        }) {
                                            VStack{
                                                if let wed6 = lectures.first(where: { $0.id == Fa1wed6}) {
                                                    
                                                    Text(wed6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1wed6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("木")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1thu1)

                                        }) {
                                            VStack{
                                                if let thu1 = lectures.first(where: { $0.id == Fa1thu1}) {
                                                    
                                                    Text(thu1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1thu1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1thu2)

                                        }) {
                                            VStack{
                                                if let thu2 = lectures.first(where: { $0.id == Fa1thu2}) {
                                                    
                                                    Text(thu2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1thu2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1thu3)

                                        }) {
                                            VStack{
                                                if let thu3 = lectures.first(where: { $0.id == Fa1thu3}) {
                                                    
                                                    Text(thu3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1thu3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1thu4)

                                        }) {
                                            VStack{
                                                if let thu4 = lectures.first(where: { $0.id == Fa1thu4}) {
                                                    
                                                    Text(thu4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1thu4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1thu5)

                                        }) {
                                            VStack{
                                                if let thu5 = lectures.first(where: { $0.id == Fa1mon5}) {
                                                    
                                                    Text(thu5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1thu5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1thu6)

                                        }) {
                                            VStack{
                                                if let thu6 = lectures.first(where: { $0.id == Fa1thu6}) {
                                                    
                                                    Text(thu6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1thu6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("金")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1fri1)

                                        }) {
                                            VStack{
                                                if let fri1 = lectures.first(where: { $0.id == Fa1fri1}) {
                                                    
                                                    Text(fri1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1fri1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1fri2)

                                        }) {
                                            VStack{
                                                if let fri2 = lectures.first(where: { $0.id == Fa1fri2}) {
                                                    
                                                    Text(fri2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1fri2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1fri3)

                                        }) {
                                            VStack{
                                                if let fri3 = lectures.first(where: { $0.id == Fa1fri3}) {
                                                    
                                                    Text(fri3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1fri3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1fri4)

                                        }) {
                                            VStack{
                                                if let fri4 = lectures.first(where: { $0.id == Fa1fri4}) {
                                                    
                                                    Text(fri4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1fri4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1fri5)

                                        }) {
                                            VStack{
                                                if let fri5 = lectures.first(where: { $0.id == Fa1fri5}) {
                                                    
                                                    Text(fri5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1fri5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa1fri6)

                                        }) {
                                            VStack{
                                                if let fri6 = lectures.first(where: { $0.id == Fa1fri6}) {
                                                    
                                                    Text(fri6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa1fri6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    
                                    
                                }
                            case 4:
                                HStack {
                                    
                                    VStack {
                                        Button("") {
                                        }
                                        .frame(width: 25.0, height: 30.0)
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("1")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("2")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("3")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("4")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("5")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("6")))
                                    }
                                    .frame(width: 25.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("月")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2mon1)

                                        }) {
                                            VStack{
                                                
                                                if let mon1 = lectures.first(where: { $0.id == Fa2mon1}) {
                                                    
                                                    Text(mon1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2mon1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2mon2)

                                        }) {
                                            VStack{
                                                if let mon2 = lectures.first(where: { $0.id == Fa2mon2}) {
                                                    
                                                    Text(mon2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2mon2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2mon3)

                                        }) {
                                            VStack{
                                                if let mon3 = lectures.first(where: { $0.id == Fa2mon3}) {
                                                    
                                                    Text(mon3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2mon3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2mon4)

                                        }) {
                                            VStack{
                                                if let mon4 = lectures.first(where: { $0.id == Fa2mon4}) {
                                                    
                                                    Text(mon4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2mon4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2mon5)

                                        }) {
                                            VStack{
                                                if let mon5 = lectures.first(where: { $0.id == Fa2mon5}) {
                                                    
                                                    Text(mon5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2mon5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2mon6)

                                        }) {
                                            VStack{
                                                if let mon6 = lectures.first(where: { $0.id == Fa2mon6}) {
                                                    
                                                    Text(mon6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2mon6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("火")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2tue1)

                                        }) {
                                            VStack{
                                                if let tue1 = lectures.first(where: { $0.id == Fa2tue1}) {
                                                    
                                                    Text(tue1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2tue1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2tue2)

                                        }) {
                                            VStack{
                                                if let tue2 = lectures.first(where: { $0.id == Fa2tue2}) {
                                                    
                                                    Text(tue2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2tue2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2tue3)

                                        }) {
                                            VStack{
                                                if let tue3 = lectures.first(where: { $0.id == Fa2tue3}) {
                                                    
                                                    Text(tue3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2tue3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2tue4)

                                        }) {
                                            VStack{
                                                if let tue4 = lectures.first(where: { $0.id == Fa2tue4}) {
                                                    
                                                    Text(tue4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2tue4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2tue5)

                                        }) {
                                            VStack{
                                                if let tue5 = lectures.first(where: { $0.id == Fa2tue5}) {
                                                    
                                                    Text(tue5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2tue5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2tue6)

                                        }) {
                                            VStack{
                                                if let tue6 = lectures.first(where: { $0.id == Fa2tue6}) {
                                                    
                                                    Text(tue6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2tue6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("水")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2wed1)

                                        }) {
                                            VStack{
                                                if let wed1 = lectures.first(where: { $0.id == Fa2wed1}) {
                                                    
                                                    Text(wed1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2wed1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2wed2)

                                        }) {
                                            VStack{
                                                if let wed2 = lectures.first(where: { $0.id == Fa2wed2}) {
                                                    
                                                    Text(wed2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2wed2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2wed3)

                                        }) {
                                            VStack{
                                                if let wed3 = lectures.first(where: { $0.id == Fa2wed3}) {
                                                    
                                                    Text(wed3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2wed3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2wed4)

                                        }) {
                                            VStack{
                                                if let wed4 = lectures.first(where: { $0.id == Fa2wed4}) {
                                                    
                                                    Text(wed4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2wed4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2wed5)

                                        }) {
                                            VStack{
                                                if let wed5 = lectures.first(where: { $0.id == Fa2wed5}) {
                                                    
                                                    Text(wed5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2wed5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2wed6)

                                        }) {
                                            VStack{
                                                if let wed6 = lectures.first(where: { $0.id == Fa2wed6}) {
                                                    
                                                    Text(wed6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2wed6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("木")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2thu1)

                                        }) {
                                            VStack{
                                                if let thu1 = lectures.first(where: { $0.id == Fa2thu1}) {
                                                    
                                                    Text(thu1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2thu1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2thu2)

                                        }) {
                                            VStack{
                                                if let thu2 = lectures.first(where: { $0.id == Fa2thu2}) {
                                                    
                                                    Text(thu2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2thu2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2thu3)

                                        }) {
                                            VStack{
                                                if let thu3 = lectures.first(where: { $0.id == Fa2thu3}) {
                                                    
                                                    Text(thu3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2thu3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2thu4)

                                        }) {
                                            VStack{
                                                if let thu4 = lectures.first(where: { $0.id == Fa2thu4}) {
                                                    
                                                    Text(thu4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2thu4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2thu5)

                                        }) {
                                            VStack{
                                                if let thu5 = lectures.first(where: { $0.id == Fa2mon5}) {
                                                    
                                                    Text(thu5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2thu5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2thu6)

                                        }) {
                                            VStack{
                                                if let thu6 = lectures.first(where: { $0.id == Fa2thu6}) {
                                                    
                                                    Text(thu6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2thu6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("金")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2fri1)

                                        }) {
                                            VStack{
                                                if let fri1 = lectures.first(where: { $0.id == Fa2fri1}) {
                                                    
                                                    Text(fri1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2fri1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2fri2)

                                        }) {
                                            VStack{
                                                if let fri2 = lectures.first(where: { $0.id == Fa2fri2}) {
                                                    
                                                    Text(fri2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2fri2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2fri3)

                                        }) {
                                            VStack{
                                                if let fri3 = lectures.first(where: { $0.id == Fa2fri3}) {
                                                    
                                                    Text(fri3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2fri3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2fri4)

                                        }) {
                                            VStack{
                                                if let fri4 = lectures.first(where: { $0.id == Fa2fri4}) {
                                                    
                                                    Text(fri4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2fri4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2fri5)

                                        }) {
                                            VStack{
                                                if let fri5 = lectures.first(where: { $0.id == Fa2fri5}) {
                                                    
                                                    Text(fri5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2fri5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Fa2fri6)

                                        }) {
                                            VStack{
                                                if let fri6 = lectures.first(where: { $0.id == Fa2fri6}) {
                                                    
                                                    Text(fri6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Fa2fri6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    
                                    
                                }
                            case 5:
                                HStack {
                                    
                                    VStack {
                                        Button("") {
                                        }
                                        .frame(width: 25.0, height: 30.0)
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("1")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("2")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("3")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("4")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("5")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("6")))
                                    }
                                    .frame(width: 25.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("月")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1mon1)

                                        }) {
                                            VStack{
                                                
                                                if let mon1 = lectures.first(where: { $0.id == Ss1mon1}) {
                                                    
                                                    Text(mon1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1mon1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1mon2)

                                        }) {
                                            VStack{
                                                if let mon2 = lectures.first(where: { $0.id == Ss1mon2}) {
                                                    
                                                    Text(mon2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1mon2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1mon3)

                                        }) {
                                            VStack{
                                                if let mon3 = lectures.first(where: { $0.id == Ss1mon3}) {
                                                    
                                                    Text(mon3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1mon3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1mon4)

                                        }) {
                                            VStack{
                                                if let mon4 = lectures.first(where: { $0.id == Ss1mon4}) {
                                                    
                                                    Text(mon4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1mon4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1mon5)

                                        }) {
                                            VStack{
                                                if let mon5 = lectures.first(where: { $0.id == Ss1mon5}) {
                                                    
                                                    Text(mon5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1mon5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1mon6)

                                        }) {
                                            VStack{
                                                if let mon6 = lectures.first(where: { $0.id == Ss1mon6}) {
                                                    
                                                    Text(mon6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1mon6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("火")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1tue1)

                                        }) {
                                            VStack{
                                                if let tue1 = lectures.first(where: { $0.id == Ss1tue1}) {
                                                    
                                                    Text(tue1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1tue1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1tue2)

                                        }) {
                                            VStack{
                                                if let tue2 = lectures.first(where: { $0.id == Ss1tue2}) {
                                                    
                                                    Text(tue2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1tue2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1tue3)

                                        }) {
                                            VStack{
                                                if let tue3 = lectures.first(where: { $0.id == Ss1tue3}) {
                                                    
                                                    Text(tue3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1tue3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1tue4)

                                        }) {
                                            VStack{
                                                if let tue4 = lectures.first(where: { $0.id == Ss1tue4}) {
                                                    
                                                    Text(tue4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1tue4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1tue5)

                                        }) {
                                            VStack{
                                                if let tue5 = lectures.first(where: { $0.id == Ss1tue5}) {
                                                    
                                                    Text(tue5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1tue5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1tue6)

                                        }) {
                                            VStack{
                                                if let tue6 = lectures.first(where: { $0.id == Ss1tue6}) {
                                                    
                                                    Text(tue6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1tue6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("水")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1wed1)

                                        }) {
                                            VStack{
                                                if let wed1 = lectures.first(where: { $0.id == Ss1wed1}) {
                                                    
                                                    Text(wed1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1wed1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1wed2)

                                        }) {
                                            VStack{
                                                if let wed2 = lectures.first(where: { $0.id == Ss1wed2}) {
                                                    
                                                    Text(wed2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1wed2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1wed3)

                                        }) {
                                            VStack{
                                                if let wed3 = lectures.first(where: { $0.id == Ss1wed3}) {
                                                    
                                                    Text(wed3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1wed3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1wed4)

                                        }) {
                                            VStack{
                                                if let wed4 = lectures.first(where: { $0.id == Ss1wed4}) {
                                                    
                                                    Text(wed4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1wed4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1wed5)

                                        }) {
                                            VStack{
                                                if let wed5 = lectures.first(where: { $0.id == Ss1wed5}) {
                                                    
                                                    Text(wed5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1wed5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1wed6)

                                        }) {
                                            VStack{
                                                if let wed6 = lectures.first(where: { $0.id == Ss1wed6}) {
                                                    
                                                    Text(wed6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1wed6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("木")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1thu1)

                                        }) {
                                            VStack{
                                                if let thu1 = lectures.first(where: { $0.id == Ss1thu1}) {
                                                    
                                                    Text(thu1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1thu1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1thu2)

                                        }) {
                                            VStack{
                                                if let thu2 = lectures.first(where: { $0.id == Ss1thu2}) {
                                                    
                                                    Text(thu2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1thu2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1thu3)

                                        }) {
                                            VStack{
                                                if let thu3 = lectures.first(where: { $0.id == Ss1thu3}) {
                                                    
                                                    Text(thu3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1thu3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1thu4)

                                        }) {
                                            VStack{
                                                if let thu4 = lectures.first(where: { $0.id == Ss1thu4}) {
                                                    
                                                    Text(thu4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1thu4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1thu5)

                                        }) {
                                            VStack{
                                                if let thu5 = lectures.first(where: { $0.id == Ss1mon5}) {
                                                    
                                                    Text(thu5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1thu5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1thu6)

                                        }) {
                                            VStack{
                                                if let thu6 = lectures.first(where: { $0.id == Ss1thu6}) {
                                                    
                                                    Text(thu6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1thu6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("金")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1fri1)

                                        }) {
                                            VStack{
                                                if let fri1 = lectures.first(where: { $0.id == Ss1fri1}) {
                                                    
                                                    Text(fri1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1fri1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1fri2)

                                        }) {
                                            VStack{
                                                if let fri2 = lectures.first(where: { $0.id == Ss1fri2}) {
                                                    
                                                    Text(fri2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1fri2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1fri3)

                                        }) {
                                            VStack{
                                                if let fri3 = lectures.first(where: { $0.id == Ss1fri3}) {
                                                    
                                                    Text(fri3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1fri3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1fri4)

                                        }) {
                                            VStack{
                                                if let fri4 = lectures.first(where: { $0.id == Ss1fri4}) {
                                                    
                                                    Text(fri4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1fri4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1fri5)

                                        }) {
                                            VStack{
                                                if let fri5 = lectures.first(where: { $0.id == Ss1fri5}) {
                                                    
                                                    Text(fri5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1fri5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss1fri6)

                                        }) {
                                            VStack{
                                                if let fri6 = lectures.first(where: { $0.id == Ss1fri6}) {
                                                    
                                                    Text(fri6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss1fri6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    
                                    
                                }
                            case 6:
                                HStack {
                                    
                                    VStack {
                                        Button("") {
                                        }
                                        .frame(width: 25.0, height: 30.0)
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("1")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("2")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("3")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("4")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("5")))
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 25.0, height: 80.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("6")))
                                    }
                                    .frame(width: 25.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("月")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2mon1)

                                        }) {
                                            VStack{
                                                
                                                if let mon1 = lectures.first(where: { $0.id == Ss2mon1}) {
                                                    
                                                    Text(mon1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2mon1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2mon2)

                                        }) {
                                            VStack{
                                                if let mon2 = lectures.first(where: { $0.id == Ss2mon2}) {
                                                    
                                                    Text(mon2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2mon2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2mon3)

                                        }) {
                                            VStack{
                                                if let mon3 = lectures.first(where: { $0.id == Ss2mon3}) {
                                                    
                                                    Text(mon3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2mon3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2mon4)

                                        }) {
                                            VStack{
                                                if let mon4 = lectures.first(where: { $0.id == Ss2mon4}) {
                                                    
                                                    Text(mon4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2mon4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2mon5)

                                        }) {
                                            VStack{
                                                if let mon5 = lectures.first(where: { $0.id == Ss2mon5}) {
                                                    
                                                    Text(mon5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2mon5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2mon6)

                                        }) {
                                            VStack{
                                                if let mon6 = lectures.first(where: { $0.id == Ss2mon6}) {
                                                    
                                                    Text(mon6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(mon6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2mon6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("火")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2tue1)

                                        }) {
                                            VStack{
                                                if let tue1 = lectures.first(where: { $0.id == Ss2tue1}) {
                                                    
                                                    Text(tue1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2tue1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2tue2)

                                        }) {
                                            VStack{
                                                if let tue2 = lectures.first(where: { $0.id == Ss2tue2}) {
                                                    
                                                    Text(tue2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2tue2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2tue3)

                                        }) {
                                            VStack{
                                                if let tue3 = lectures.first(where: { $0.id == Ss2tue3}) {
                                                    
                                                    Text(tue3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2tue3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2tue4)

                                        }) {
                                            VStack{
                                                if let tue4 = lectures.first(where: { $0.id == Ss2tue4}) {
                                                    
                                                    Text(tue4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2tue4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2tue5)

                                        }) {
                                            VStack{
                                                if let tue5 = lectures.first(where: { $0.id == Ss2tue5}) {
                                                    
                                                    Text(tue5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2tue5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2tue6)

                                        }) {
                                            VStack{
                                                if let tue6 = lectures.first(where: { $0.id == Ss2tue6}) {
                                                    
                                                    Text(tue6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(tue6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2tue6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("水")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2wed1)

                                        }) {
                                            VStack{
                                                if let wed1 = lectures.first(where: { $0.id == Ss2wed1}) {
                                                    
                                                    Text(wed1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2wed1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2wed2)

                                        }) {
                                            VStack{
                                                if let wed2 = lectures.first(where: { $0.id == Ss2wed2}) {
                                                    
                                                    Text(wed2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2wed2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2wed3)

                                        }) {
                                            VStack{
                                                if let wed3 = lectures.first(where: { $0.id == Ss2wed3}) {
                                                    
                                                    Text(wed3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2wed3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2wed4)

                                        }) {
                                            VStack{
                                                if let wed4 = lectures.first(where: { $0.id == Ss2wed4}) {
                                                    
                                                    Text(wed4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2wed4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2wed5)

                                        }) {
                                            VStack{
                                                if let wed5 = lectures.first(where: { $0.id == Ss2wed5}) {
                                                    
                                                    Text(wed5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2wed5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2wed6)

                                        }) {
                                            VStack{
                                                if let wed6 = lectures.first(where: { $0.id == Ss2wed6}) {
                                                    
                                                    Text(wed6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(wed6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2wed6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("木")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2thu1)

                                        }) {
                                            VStack{
                                                if let thu1 = lectures.first(where: { $0.id == Ss2thu1}) {
                                                    
                                                    Text(thu1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2thu1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2thu2)
                                            
                                        }) {
                                            VStack{
                                                if let thu2 = lectures.first(where: { $0.id == Ss2thu2}) {
                                                    
                                                    Text(thu2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2thu2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2thu3)

                                        }) {
                                            VStack{
                                                if let thu3 = lectures.first(where: { $0.id == Ss2thu3}) {
                                                    
                                                    Text(thu3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2thu3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2thu4)

                                        }) {
                                            VStack{
                                                if let thu4 = lectures.first(where: { $0.id == Ss2thu4}) {
                                                    
                                                    Text(thu4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2thu4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2thu5)

                                        }) {
                                            VStack{
                                                if let thu5 = lectures.first(where: { $0.id == Ss2mon5}) {
                                                    
                                                    Text(thu5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2thu5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2thu6)

                                        }) {
                                            VStack{
                                                if let thu6 = lectures.first(where: { $0.id == Ss2thu6}) {
                                                    
                                                    Text(thu6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(thu6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2thu6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    VStack {
                                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                                            .frame(width: 60.0, height: 30.0)
                                            .foregroundColor(Color.backgroundColor)
                                            .overlay((Text("金")))
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2fri1)

                                        }) {
                                            VStack{
                                                if let fri1 = lectures.first(where: { $0.id == Ss2fri1}) {
                                                    
                                                    Text(fri1.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri1.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2fri1 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2fri2)

                                        }) {
                                            VStack{
                                                if let fri2 = lectures.first(where: { $0.id == Ss2fri2}) {
                                                    
                                                    Text(fri2.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri2.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2fri2 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2fri3)

                                        }) {
                                            VStack{
                                                if let fri3 = lectures.first(where: { $0.id == Ss2fri3}) {
                                                    
                                                    Text(fri3.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri3.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2fri3 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2fri4)

                                        }) {
                                            VStack{
                                                if let fri4 = lectures.first(where: { $0.id == Ss2fri4}) {
                                                    
                                                    Text(fri4.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri4.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2fri4 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2fri5)

                                        }) {
                                            VStack{
                                                if let fri5 = lectures.first(where: { $0.id == Ss2fri5}) {
                                                    
                                                    Text(fri5.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri5.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2fri5 == 0 ? Color.backgroundColor: Color.accentOrange)
                                        
                                        Button(action: {
                                            lecturewikiid = LectureWikiIDs(id: Ss2fri6)

                                        }) {
                                            VStack{
                                                if let fri6 = lectures.first(where: { $0.id == Ss2fri6}) {
                                                    
                                                    Text(fri6.name)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.footnote).bold()
                                                    Spacer()
                                                        .frame(height: 10.0)
                                                    Text(fri6.room)
                                                        .lineLimit(2)
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 9))
                                                }
                                            }
                                        }
                                        .frame(width: 60.0, height: 80.0)
                                        .background(Ss2fri6 == 0 ? Color.backgroundColor: Color.accentOrange)
                                    }
                                    .frame(width: 60.0)
                                    
                                    
                                    
                                }
                                
                            default:
                                Text("error")
                                
                            }


                        
                        }
                    }
                    .navigationBarTitle("時間割", displayMode: .inline)
                    .toolbar{
                        
                        ToolbarItem(placement: .navigationBarLeading){
                            Picker(selection: $selection, label: Text("")) {
                                Text("1年 S1").tag(1)
                                Text("1年 S2").tag(2)
                                Text("1年 A1").tag(3)
                                Text("1年 A2").tag(4)
                                Text("2年 S1").tag(5)
                                Text("2年 S2").tag(6)
                            }
                        }
                        
                        
                        
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button(action: {
                                showingCreditBoardView.toggle()
                            }, label: {
                                Image(systemName: "square.on.square")
                            })
                        }
                        
                    }
                }

            }
                .sheet(item: $lecturewikiid) { item in
                    LectureView(lectureID: item)
                }
                .sheet(isPresented: $showingCreditBoardView) {
                    CreditBoardView()
                }
                .onAppear(perform: fetchsyllabus)
                .tabItem {
                    Image(systemName: "house")
                    Text("ホーム")
                }
            
            ListView()
                .tabItem {
                    Image(systemName: "books.vertical")
                    Text("講義リスト")
                }
            
            TopicsView()
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("トピックス")
                }
            
            MypageView()
                .tabItem {
                    Image(systemName: "person")
                    Text("マイページ")
                }
            
        }.background(Color.backgroundColor)
    }
}

