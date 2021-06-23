//
//  ContentViewRow.swift
//  LearningApp
//
//  Created by cloud_vfx on 23/06/21.
//

import SwiftUI

struct ContentViewRow: View {
    
    @EnvironmentObject var model: ContentModel
    
    var index: Int
    
    var body: some View {
        
        let lesson = model.currentModel!.content.lessons[index]
        
        ZStack(alignment: .leading ){
            
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .frame(height: 66)
            
            HStack(spacing: 30){
                    Text(String(index + 1))
                    .bold()
                
            VStack(alignment: .leading){
                    
                    Text(lesson.title)
                        .font(.headline)
                    
                    Text(lesson.duration)
                }
            }.padding()
            
        }.padding(.bottom, 5)
    }
}

