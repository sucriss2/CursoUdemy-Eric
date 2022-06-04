//
//  Quote.swift
//  Pensamentos
//
//  Created by Suh on 30/11/21.
//

import Foundation


struct Quote: Codable { //Encodable(transformar em arquivo), Decodable(extrair,decodificar) - protocolo
    
    let quote: String
    let author: String
    let image: String
    
    var quoteFormatted: String {
        return "〝" + quote + "〞"
    }
    
    var authorFormatted: String {
        return "- " + author + " -"
    }
}

