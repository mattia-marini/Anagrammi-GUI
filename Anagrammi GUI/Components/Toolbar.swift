//
//  Toolbar.swift
//  Anagrammi GUI
//
//  Created by Mattia Marini on 07/02/24.
//

import SwiftUI

struct Toolbar: CustomizableToolbarContent {
    @State private var tool: Int = 0
    
    
    var body: some CustomizableToolbarContent {
        
        ToolbarItem(id: "prova") {
            Button(action: {}, label: {
                Label("List avaiable words", systemImage: "list.bullet")
            })
        }
        
        ToolbarItem(id: "tools") {
            Picker("Tools", selection: $tool){
                
                Button(action: {}, label: {
                    Label("Check if contained", systemImage: "checkmark")
                }).tag(0)
                Button(action: {}, label: {
                    Label("Subtract word", systemImage: "minus")
                }).tag(1)
                
            }.pickerStyle(SegmentedPickerStyle())
        }
        
        
    }
}
