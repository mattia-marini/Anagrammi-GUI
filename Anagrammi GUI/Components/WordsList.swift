//
//  WordsList.swift
//  Anagrammi GUI
//
//  Created by Mattia Marini on 07/02/24.
//

import SwiftUI

struct WordsList: View {
    
    var title: String
    var words: String
    
    var body: some View {
        VStack{
            Text(title)
            ScrollView {
                ZStack{
                    HStack{
                        
                        Text(words)
                            .textSelection(.enabled)
                            .fixedSize()
                        Spacer()
                    }
                    .frame(minWidth:0, alignment: .topLeading)
                    .clipped()
                }
                .padding()
            }
            .frame(maxWidth: .infinity)
            .background()
            .cornerRadius(8)
        }
    }
}

