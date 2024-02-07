//
//  ContentView.swift
//  Anagrammi GUI
//
//  Created by Mattia Marini on 07/02/24.
//

import SwiftUI

struct ContentView: View {
    @State private var frase = "Inserisci una frase da anagrammare"
    @State private var input : String = ""
    
    @FocusState private var fraseIsFocused: Bool
    
    @State private var activeButton: Int = 1
    @State private var tool = 0
    
    private var currPhrase = ""
    
    let readOnlyText = """
      Verbo1
      Verbo2
      Verbo lungo
      Verbo4
      Verbo5
      Verbo6
      Verbo7
      """
    
    var body: some View {
        
        NavigationStack {
            
            VStack(spacing:30){
                
                InsertSentencePopover(frase:$frase)
                TextField(text: $input, prompt: Text("Inserisci una parola")){}
                    .textFieldStyle(.roundedBorder)
                HStack(spacing: 10){
                    WordsList(title: "Nomi" ,words: readOnlyText)
                    WordsList(title: "Verbi" ,words: readOnlyText)
                    WordsList(title: "Scurrli" ,words: readOnlyText)
                }
                
            }.padding(.all)
                .navigationTitle("Anagramma")
                .navigationSubtitle("Gesù iqulato con la q")
                .toolbar(id: "Prova"){
                    Toolbar()
                }
        }
        
    }
}
