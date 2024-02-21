//
//  WordList.swift
//  Anagrammi GUI
//
//  Created by Mattia Marini on 09/02/24.
//

import Foundation

public class WordsDB{
    
    var words : [String:[Substring]] = [:]
    
    init() {
    }
    
    func loadFromResources(){
        guard let files = Bundle.main.urls(forResourcesWithExtension: "txt", subdirectory: "Words") else {
            print("Impossibile trovare file con parole")
            return
        }
        
        
#if DEBUG
        print("Carico lista verbi...")
#endif
        for file in files{
            words[file.lastPathComponent] = fileRead(file)
            //print(file.lastPathComponent)
        }
#if DEBUG
        print("Caricato lista verbi con successo")
#endif
        
    }
    
    
    func fileRead(_ url: URL) -> [Substring]{
        
        do {
            let content = try String(contentsOf: url)
            return content.split(separator: "\n")
        } catch {
            print("Error reading the file: \(error.localizedDescription)")
        }
        return []
    }
    
    
    
}

