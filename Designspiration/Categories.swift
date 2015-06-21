//
//  Categories.swift
//  Designspiration
//
//  Created by Yoh on 6/21/15.
//  Copyright (c) 2015 Harmony Bunny. All rights reserved.
//

import Foundation

struct Categories {
    
    let name: String
}

enum Types: Int{
    case design = 0
    case life = 1
    case work = 2
    case IT = 3
    case nature = 4
    case cats = 5
    case future = 6
    
    var text: String{
        get{
            switch self{
            case .design: return "Design"
            case .life: return "Life"
            case .work: return "Work"
            case .IT: return "IT"
            case .nature: return "Nature"
            case .cats: return "Cats"
            case .future: return "Future"
            }
        }
    }
    
    static var MaxRawValue: Int {
        get {
            return 7
        }
    }
}
