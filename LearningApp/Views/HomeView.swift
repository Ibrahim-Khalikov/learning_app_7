//
//  ContentView.swift
//  LearningApp
//
//  Created by Christopher Ching on 2021-03-03.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
     
        NavigationView{
            
            VStack(alignment: .leading){
                Text("Learn hard and smoothly")
                    .padding(.leading, 20.0)
                
                ScrollView{
                    
                    LazyVStack{
                        
                        ForEach(model.modules){ module in
                            
                            VStack(spacing: 20){
                                
                                
                                NavigationLink(
                                    destination:
                                        ContentView()
                                        .onAppear(perform: {
                                            model.beginModule(module.id)
                                        })
                                    ,
                                    label: {
                                        HomeViewRow(image: module.content.image, category: ("Learn\(module.category)"), time: module.content.time, description: module.content.description, count: "\(module.content.lessons.count) lessons" )
                                        
                                    })
                                
                                
                                
                                
                                HomeViewRow(image: module.test.image, category: ("\(module.category) quizzes"), time: module.test.time, description: module.test.description, count: "\(module.test.questions.count) lessons" )
                                
                                
                                
                            }
                        }
                    }
                    .accentColor(.black)
                    .padding()
                    
                }
            }.navigationTitle("Get lessons")
        }
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}
