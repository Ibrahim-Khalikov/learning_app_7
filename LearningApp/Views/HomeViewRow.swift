//
//  HomeViewRow.swift
//  LearningApp
//
//  Created by cloud_vfx on 21/06/21.
//

import SwiftUI

struct HomeViewRow: View {
    
    var image:String
    var category:String
    var time:String
    var description:String
    var count: String
    
    
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
       
            HStack{
                Image(image)
                    .resizable()
                    .frame(width: 116, height: 116, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
                
                Spacer()
                
                VStack(alignment: .leading){
                    Text(category)
                        .font(.headline)
                        .padding(.bottom,1)
                    
                    Text(description)
                        .font(Font.system(size: 10))
                        .padding(.bottom, 20)
                    
                    
                    HStack{
                        Image(systemName: "text.book.closed")
                            .frame(width: 15, height: 15)
                        
                        Text(String(count))
                            .font(Font.system(size: 10))
                        
                        Image(systemName: "clock")
                            .frame(width: 15, height: 15)
                    Text(time)
                        .font(Font.system(size: 10))
                       
                    
                    }
                }
                
                
            }
            .padding(.horizontal, 30)
        
        }
        
    }
}

struct HomeViewRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewRow(image: "swift", category: "swift", time: "15 minutes", description: "anything", count: "20 less")
    }
}
