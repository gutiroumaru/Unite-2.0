//
//  LectureView.swift
//  Unite 2.0
//
//  Created by  on 2023/04/09.
//

import SwiftUI

struct LectureWikiIDs: Identifiable {
    let id: Int
}

struct LecturesWiki: Codable, Identifiable {
    var id: Int
    var name: String
    var review: Float?
    var evaluation1: String?
    var evaluation2: String?
    var evaluation3: String?
    var evaluation4: String?
    var evaluation5: String?
    var overview1: String?
    var overview2: String?
    var overview3: String?
    var overview4: String?
    var overview5: String?
    var character1: String?
    var character2: String?
    var character3: String?
    var character4: String?
    var character5: String?
}

struct LectureView: View {
    
    let lectureID: LectureWikiIDs

    @State private var buttonPressed = false
    
    @State private var lectures = [syllabus]()
    @State private var lectures22a = [syllabus]()
    @State private var lectures23s = [syllabus]()
    
    @State private var lectureswiki = [LecturesWiki]()

    @AppStorage("selectionKey") var selection = 1
    @AppStorage("EyearKey") var Eyear = 1

    
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
    
    func fetchLecturesWiki() {
        let requrl = URL(string: "https://api.sssapi.app/L_hsvxLPCQQQf1CSRYdrB")!

        
        URLSession.shared.dataTask(with: requrl) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode([LecturesWiki].self, from: data) {
                    DispatchQueue.main.async {
                        self.lectureswiki = decodedResponse
                    }
                    return
                }
            }
            print("Error: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
        
    }

    var yearselection: Int {
        switch Eyear {
        case 1:
            return 0
        case 2:
            switch selection {
            case 1:
                return 1
            case 2:
                return 1
            case 3:
                return 2
            case 4:
                return 2
            case 5:
                return 3
            case 6:
                return 3
            default:
                return 10
            }
            
        case 3:
            switch selection {
            case 1:
                return 3
            case 2:
                return 3
            case 3:
                return 4
            case 4:
                return 4
            case 5:
                return 5
            case 6:
                return 5
            default:
                return 10
            }
        default:
            return 10
        }
    }


    
    var body: some View {
        NavigationView {
            switch yearselection {
            case 1:
                
                if let x = lectures.first(where: { $0.id == lectureID.id}) {
                    VStack {
                        List {
                            Section(header: Text("基本情報")
                                .foregroundColor(.accentOrange)
                                .font(.headline)) {
                                    HStack {
                                        Text("時間割コード")
                                        Button ("\(Image(systemName: "doc.on.doc"))"){
                                            UIPasteboard.general.string = "\(lectureID.id)"
                                            buttonPressed.toggle()
                                        }
                                        .foregroundColor(buttonPressed ? .gray: .accentColor)
                                        Spacer()
                                        Text("\(lectureID.id)")
                                    }
                                    HStack {
                                        Text("講師")
                                        Spacer()
                                        Text(x.professor)
                                    }
                                    HStack {
                                        Text("曜限")
                                        Spacer()
                                        Text(x.yougen)
                                    }
                                    HStack {
                                        Text("科目大区分")
                                        Spacer()
                                        Text(x.category)
                                    }
                                    HStack {
                                        Text("科目中区分")
                                        Spacer()
                                        Text(x.subcategory ?? "")
                                    }
                                    HStack {
                                        Text("教室名")
                                        Spacer()
                                        Text(x.room)
                                    }
                                    HStack {
                                        Text("開講期")
                                        Spacer()
                                        Text(x.semester)
                                    }
                                }
                            
                            Section(header:
                                Text("データ")
                                    .foregroundColor(.accentOrange)
                                    .font(.headline)
                            ) {
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.review {
                                        HStack {
                                            Text("評価")
                                            Spacer()
                                            Text("\(String(format: "%.2f", z))")
                                        }
                                    } else {
                                        Text("評価がありません。")
                                            .foregroundColor(.gray)
                                    }
                                } else {
                                    Text("評価がありません。")
                                        .foregroundColor(.gray)
                                }
                            }
                            
                            Section(header:
                                        HStack {
                                
                                Text("評価方法")
                                    .foregroundColor(.accentOrange)
                                    .font(.headline)

                            }){
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.evaluation1 {
                                        Text(z)
                                    } else {
                                        Text("コメントはありません。")
                                            .foregroundColor(.gray)
                                    }
                                } else {
                                    Text("コメントはありません。")
                                        .foregroundColor(.gray)
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.evaluation2 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.evaluation3 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.evaluation4 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.evaluation5 {
                                        Text(z)
                                    }
                                }
                            }
                            
                            Section(header:
                                        HStack {
                                Text("授業の形式")
                                    .foregroundColor(.accentOrange)
                                    .font(.headline)

                            }){
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.overview1 {
                                        Text(z)
                                    } else {
                                        Text("コメントはありません。")
                                            .foregroundColor(.gray)
                                    }
                                } else {
                                    Text("コメントはありません。")
                                        .foregroundColor(.gray)
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.overview2 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.overview3 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.overview4 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.overview5 {
                                        Text(z)
                                    }
                                }

                            }
                            
                            Section(header:
                                        HStack {
                                Text("講師の人物像")
                                    .foregroundColor(.accentOrange)
                                    .font(.headline)

                            }) {
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.character1 {
                                        Text(z)
                                    } else {
                                        Text("コメントはありません。")
                                            .foregroundColor(.gray)
                                    }
                                } else {
                                    Text("コメントはありません。")
                                        .foregroundColor(.gray)
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.character2 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.character3 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.character4 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.character5 {
                                        Text(z)
                                    }
                                }
                            }
                            
                            
                        }
                        .listStyle(.plain)
                        Button("講義Wikiに情報を追加する") {
                            if let url = URL(string: "https://forms.gle/Qjy3vikm2q61W9Y57") {
                                UIApplication.shared.open(url)
                            }
                        }
                        .buttonStyle(.borderedProminent)
                        .padding(.bottom, 10.0)
                        
                    }.navigationBarTitle(x.name)
                    
                } // if let end
                
            case 2:
                if let x = lectures22a.first(where: { $0.id == lectureID.id}) {
                    VStack {
                        List {
                            Section(header: Text("基本情報")
                                .foregroundColor(.accentOrange)
                                .font(.headline)) {
                                    HStack {
                                        Text("時間割コード")
                                        Button ("\(Image(systemName: "doc.on.doc"))"){
                                            UIPasteboard.general.string = "\(lectureID.id)"
                                            buttonPressed.toggle()
                                        }
                                        .foregroundColor(buttonPressed ? .gray: .accentColor)
                                        Spacer()
                                        Text("\(lectureID.id)")
                                    }
                                    HStack {
                                        Text("講師")
                                        Spacer()
                                        Text(x.professor)
                                    }
                                    HStack {
                                        Text("曜限")
                                        Spacer()
                                        Text(x.yougen)
                                    }
                                    HStack {
                                        Text("科目大区分")
                                        Spacer()
                                        Text(x.category)
                                    }
                                    HStack {
                                        Text("科目中区分")
                                        Spacer()
                                        Text(x.subcategory ?? "")
                                            .lineLimit(1)
                                    }
                                    HStack {
                                        Text("教室名")
                                        Spacer()
                                        Text(x.room)
                                            .lineLimit(1)
                                    }
                                    HStack {
                                        Text("開講期")
                                        Spacer()
                                        Text(x.semester)
                                    }
                                }
                            
                            Section(header:
                                Text("データ")
                                    .foregroundColor(.accentOrange)
                                    .font(.headline)
                            ) {
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.review {
                                        HStack {
                                            Text("評価")
                                            Spacer()
                                            Text("\(String(format: "%.2f", z))")
                                        }
                                    } else {
                                        Text("評価がありません。")
                                            .foregroundColor(.gray)
                                    }
                                } else {
                                    Text("評価がありません。")
                                        .foregroundColor(.gray)
                                }
                            }
                            
                            Section(header:
                                        HStack {
                                
                                Text("評価方法")
                                    .foregroundColor(.accentOrange)
                                    .font(.headline)

                            }){
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.evaluation1 {
                                        Text(z)
                                    } else {
                                        Text("コメントはありません。")
                                            .foregroundColor(.gray)
                                    }
                                } else {
                                    Text("コメントはありません。")
                                        .foregroundColor(.gray)
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.evaluation2 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.evaluation3 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.evaluation4 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.evaluation5 {
                                        Text(z)
                                    }
                                }
                            }
                            
                            Section(header:
                                        HStack {
                                Text("授業の形式")
                                    .foregroundColor(.accentOrange)
                                    .font(.headline)

                            }){
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.overview1 {
                                        Text(z)
                                    } else {
                                        Text("コメントはありません。")
                                            .foregroundColor(.gray)
                                    }
                                } else {
                                    Text("コメントはありません。")
                                        .foregroundColor(.gray)
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.overview2 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.overview3 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.overview4 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.overview5 {
                                        Text(z)
                                    }
                                }

                            }
                            
                            Section(header:
                                        HStack {
                                Text("講師の人物像")
                                    .foregroundColor(.accentOrange)
                                    .font(.headline)

                            }) {
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.character1 {
                                        Text(z)
                                    } else {
                                        Text("コメントはありません。")
                                            .foregroundColor(.gray)
                                    }
                                } else {
                                    Text("コメントはありません。")
                                        .foregroundColor(.gray)
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.character2 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.character3 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.character4 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.character5 {
                                        Text(z)
                                    }
                                }
                            }
                            
                            
                        }
                        .listStyle(.plain)
                        Button("講義Wikiに情報を追加する") {
                            if let url = URL(string: "https://forms.gle/Qjy3vikm2q61W9Y57") {
                                UIApplication.shared.open(url)
                            }
                        }
                        .buttonStyle(.borderedProminent)
                        .padding(.bottom, 10.0)
                        
                    }.navigationBarTitle(x.name)
                    
                } // if let end
                
            case 3:
                if let x = lectures23s.first(where: { $0.id == lectureID.id}) {
                    VStack {
                        List {
                            Section(header: Text("基本情報")
                                .foregroundColor(.accentOrange)
                                .font(.headline)) {
                                    HStack {
                                        Text("時間割コード")
                                        Button ("\(Image(systemName: "doc.on.doc"))"){
                                            UIPasteboard.general.string = "\(lectureID.id)"
                                            buttonPressed.toggle()
                                        }
                                        .foregroundColor(buttonPressed ? .gray: .accentColor)
                                        Spacer()
                                        Text("\(lectureID.id)")
                                    }
                                    HStack {
                                        Text("講師")
                                        Spacer()
                                        Text(x.professor)
                                    }
                                    HStack {
                                        Text("曜限")
                                        Spacer()
                                        Text(x.yougen)
                                    }
                                    HStack {
                                        Text("科目大区分")
                                        Spacer()
                                        Text(x.category)
                                    }
                                    HStack {
                                        Text("科目中区分")
                                        Spacer()
                                        Text(x.subcategory ?? "")
                                            .lineLimit(1)
                                    }
                                    HStack {
                                        Text("教室名")
                                        Spacer()
                                        Text(x.room)
                                            .lineLimit(1)
                                    }
                                    HStack {
                                        Text("開講期")
                                        Spacer()
                                        Text(x.semester)
                                    }
                                }
                            
                            Section(header:
                                Text("データ")
                                    .foregroundColor(.accentOrange)
                                    .font(.headline)
                            ) {
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.review {
                                        HStack {
                                            Text("評価")
                                            Spacer()
                                            Text("\(String(format: "%.2f", z))")
                                        }
                                    } else {
                                        Text("評価がありません。")
                                            .foregroundColor(.gray)
                                    }
                                } else {
                                    Text("評価がありません。")
                                        .foregroundColor(.gray)
                                }
                            }
                            
                            Section(header:
                                        HStack {
                                
                                Text("評価方法")
                                    .foregroundColor(.accentOrange)
                                    .font(.headline)

                            }){
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.evaluation1 {
                                        Text(z)
                                    } else {
                                        Text("コメントはありません。")
                                            .foregroundColor(.gray)
                                    }
                                } else {
                                    Text("コメントはありません。")
                                        .foregroundColor(.gray)
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.evaluation2 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.evaluation3 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.evaluation4 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.evaluation5 {
                                        Text(z)
                                    }
                                }
                            }
                            
                            Section(header:
                                        HStack {
                                Text("授業の形式")
                                    .foregroundColor(.accentOrange)
                                    .font(.headline)

                            }){
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.overview1 {
                                        Text(z)
                                    } else {
                                        Text("コメントはありません。")
                                            .foregroundColor(.gray)
                                    }
                                } else {
                                    Text("コメントはありません。")
                                        .foregroundColor(.gray)
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.overview2 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.overview3 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.overview4 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.overview5 {
                                        Text(z)
                                    }
                                }

                            }
                            
                            Section(header:
                                        HStack {
                                Text("講師の人物像")
                                    .foregroundColor(.accentOrange)
                                    .font(.headline)

                            }) {
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.character1 {
                                        Text(z)
                                    } else {
                                        Text("コメントはありません。")
                                            .foregroundColor(.gray)
                                    }
                                } else {
                                    Text("コメントはありません。")
                                        .foregroundColor(.gray)
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.character2 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.character3 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.character4 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.character5 {
                                        Text(z)
                                    }
                                }
                            }
                            
                            
                        }
                        .listStyle(.plain)
                        Button("講義Wikiに情報を追加する") {
                            if let url = URL(string: "https://forms.gle/Qjy3vikm2q61W9Y57") {
                                UIApplication.shared.open(url)
                            }
                        }
                        .buttonStyle(.borderedProminent)
                        .padding(.bottom, 10.0)
                        
                    }.navigationBarTitle(x.name)
                    
                } // if let end
                
            default:
                
                if let x = lectures.first(where: { $0.id == lectureID.id}) {
                    VStack {
                        List {
                            Section(header: Text("基本情報")
                                .foregroundColor(.accentOrange)
                                .font(.headline)) {
                                    HStack {
                                        Text("時間割コード")
                                        Button ("\(Image(systemName: "doc.on.doc"))"){
                                            UIPasteboard.general.string = "\(lectureID.id)"
                                            buttonPressed.toggle()
                                        }
                                        .foregroundColor(buttonPressed ? .gray: .accentColor)
                                        Spacer()
                                        Text("\(lectureID.id)")
                                    }
                                    HStack {
                                        Text("講師")
                                        Spacer()
                                        Text(x.professor)
                                    }
                                    HStack {
                                        Text("曜限")
                                        Spacer()
                                        Text(x.yougen)
                                    }
                                    HStack {
                                        Text("科目大区分")
                                        Spacer()
                                        Text(x.category)
                                    }
                                    HStack {
                                        Text("科目中区分")
                                        Spacer()
                                        Text(x.subcategory ?? "")
                                            .lineLimit(1)
                                    }
                                    HStack {
                                        Text("教室名")
                                        Spacer()
                                        Text(x.room)
                                            .lineLimit(1)
                                    }
                                    HStack {
                                        Text("開講期")
                                        Spacer()
                                        Text(x.semester)
                                    }
                                }
                            
                            Section(header:
                                Text("データ")
                                    .foregroundColor(.accentOrange)
                                    .font(.headline)
                            ) {
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.review {
                                        HStack {
                                            Text("評価")
                                            Spacer()
                                            Text("\(String(format: "%.2f", z))")
                                        }
                                    } else {
                                        Text("評価がありません。")
                                            .foregroundColor(.gray)
                                    }
                                } else {
                                    Text("評価がありません。")
                                        .foregroundColor(.gray)
                                }
                            }
                            
                            Section(header:
                                        HStack {
                                
                                Text("評価方法")
                                    .foregroundColor(.accentOrange)
                                    .font(.headline)

                            }){
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.evaluation1 {
                                        Text(z)
                                    } else {
                                        Text("コメントはありません。")
                                            .foregroundColor(.gray)
                                    }
                                } else {
                                    Text("コメントはありません。")
                                        .foregroundColor(.gray)
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.evaluation2 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.evaluation3 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.evaluation4 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.evaluation5 {
                                        Text(z)
                                    }
                                }
                            }
                            
                            Section(header:
                                        HStack {
                                Text("授業の形式")
                                    .foregroundColor(.accentOrange)
                                    .font(.headline)

                            }){
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.overview1 {
                                        Text(z)
                                    } else {
                                        Text("コメントはありません。")
                                            .foregroundColor(.gray)
                                    }
                                } else {
                                    Text("コメントはありません。")
                                        .foregroundColor(.gray)
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.overview2 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.overview3 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.overview4 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.overview5 {
                                        Text(z)
                                    }
                                }

                            }
                            
                            Section(header:
                                        HStack {
                                Text("講師の人物像")
                                    .foregroundColor(.accentOrange)
                                    .font(.headline)

                            }) {
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.character1 {
                                        Text(z)
                                    } else {
                                        Text("コメントはありません。")
                                            .foregroundColor(.gray)
                                    }
                                } else {
                                    Text("コメントはありません。")
                                        .foregroundColor(.gray)
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.character2 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.character3 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.character4 {
                                        Text(z)
                                    }
                                }
                                if let y = lectureswiki.first(where: { $0.id == lectureID.id}) {
                                    if let z = y.character5 {
                                        Text(z)
                                    }
                                }
                            }
                            
                            
                        }
                        .listStyle(.plain)
                        Button("講義Wikiに情報を追加する") {
                            if let url = URL(string: "https://forms.gle/Qjy3vikm2q61W9Y57") {
                                UIApplication.shared.open(url)
                            }
                        }
                        .buttonStyle(.borderedProminent)
                        .padding(.bottom, 10.0)
                        
                    }.navigationBarTitle(x.name)
                    
                } // if let end
            }
            
                
        }
        .onAppear(perform: fetchsyllabus)
        .onAppear(perform: fetchLecturesWiki)

    }
}



