//
//  TopicsView.swift
//  Unite 2.0
//
//  Created by  on 2023/04/08.
//

import SwiftUI
import SafariServices


struct TopicsView: View {
    
    @State private var displayurl: Article? = nil
    
    @State private var articles = [Article]()
    
    

    
    func fetchArticles() {
        let requrl = URL(string: "https://api.sssapi.app/jO_GfM0fVlqHHJPgcIpSn")!
        
    
        URLSession.shared.dataTask(with: requrl) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode([Article].self, from: data) {
                    DispatchQueue.main.async {
                        self.articles = decodedResponse
                    }
                    return
                }
            }
            print("Error: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                Color.backgroundColor
                
                List(articles) { article in
                    
                    
                    Button(action: {
                        
                        
                        
                        displayurl = Article(id: article.id, title: article.title, provider: article.provider, article: article.article, image: article.image)
                        
                    }) {
                            
                        HStack {
                            
                            VStack(alignment: .leading) {
                                Text(article.title)
                                    .font(.title3)
                                    .frame(width: 225, height: 100, alignment: .leading)
                                Text(article.provider)
                                    .font(.subheadline)
                                    .padding(.vertical, 10.0)
                                
                            }
                            
                            Spacer()
                            
                            AsyncImage(url: article.image) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 100, height: 100)
                                    .clipped()
                                    .cornerRadius(8)
                            } placeholder: {
                                ProgressView()
                            }
                        }
                        
                    }
                    .sheet(item: $displayurl) { item in
                        SafariView(displayurl: item)
                    }
                }
                .listStyle(PlainListStyle())
                .navigationBarTitle("トピックス", displayMode: .inline)
                .onAppear(perform: fetchArticles)
            }
        }
    }
}

struct Article: Codable, Identifiable {
    let id: Int
    let title: String
    let provider: String
    let article: URL
    let image: URL
    
}


struct SafariView: UIViewControllerRepresentable {
    let displayurl: Article
    
    func makeUIViewController(context: Context) -> SFSafariViewController {
        return SFSafariViewController(url: displayurl.article)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
        
    }
}



struct TopicsView_Previews: PreviewProvider {
    static var previews: some View {
        TopicsView()
    }
}
