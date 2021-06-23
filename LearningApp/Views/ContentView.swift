//
//  ContentView.swift
//  LearningApp
//
//  Created by cloud_vfx on 22/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        ScrollView{
            
            LazyVStack{
             
                if model.currentModel != nil {
                
                ForEach(0..<model.currentModel!.content.lessons.count){ index in
                    
                 NavigationLink(
                    destination: ContentDetailView() ,
                    label: {
                        ContentViewRow(index: index)
                            .onAppear(perform: {
                                model.beginLesson(index)
                            })
                        
                    })
                    
                  
                
                }
                }
            }.accentColor(.black)
            .padding()
        
        }.navigationTitle("Learn \(model.currentModel?.category ?? "")")
    
}
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
