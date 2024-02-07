//
//  InsertSentencePopover.swift
//  Anagrammi GUI
//
//  Created by Mattia Marini on 07/02/24.
//

import SwiftUI

struct InsertSentencePopover: View {
    
    @Binding var frase :String
    @State var popover : Bool = false
    
    var body: some View {
        ZStack{
            Text(frase.trimmingCharacters(in : .whitespacesAndNewlines) )
                .multilineTextAlignment(.center)
                .padding()
                .onTapGesture { popover=true }
        }
        .background()
        #if LEGACY_MACOS
        .cornerRadius(10)
        #else
        .clipShape(.buttonBorder)
        .onChange(of: popover){ _, newValue in
            if !newValue {
                print(frase)
            }
        }
        #endif
        .popover(isPresented: $popover){
            ZStack {
                TextEditor(text: $frase)
                    .padding()
            }
            .scrollContentBackground(.hidden)
            .cornerRadius(15)
            .frame( width: 400, height: 100)
            .multilineTextAlignment(.center)
        }
        
    }
}


