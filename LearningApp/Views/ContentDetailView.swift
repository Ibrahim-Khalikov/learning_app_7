//
//  ContentDetailView.swift
//  LearningApp
//
//  Created by cloud_vfx on 23/06/21.
//

import SwiftUI

struct ContentDetailView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        var lesson = model.currentLesson
        var url = URL(string: <#T##String#>)
        
    }
}

struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetailView()
    }
}
