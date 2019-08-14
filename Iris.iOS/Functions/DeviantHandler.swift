//
//  DeviantHandler.swift
//  Iris.iOS
//
//  Created by Xueliang Chen on 8/13/19.
//  Copyright © 2019 Conceptual. All rights reserved.
//

import Foundation

class DeviantHandler{
    static func filterJournalDeviant(deviants:[Deviation])->[Deviation]{
        var filteredDeviations = [Deviation]()
        
        for i in 0..<deviants.count{
            let deviant = deviants[i]
            
            if(deviant.category.lowercased().contains("journal") || deviant.categoryPath.lowercased().contains("journal")){
                continue
            }
            
            if(deviant.previewSrc == "" || deviant.contentSrc == ""){
                continue
            }
            
            filteredDeviations.append(deviant)
        }
        
        return filteredDeviations
    }
    
    static func formatCategoryPath(categoryPath:String)->String{
        
        var categorySections:[String.SubSequence] = categoryPath.split(separator: "/")
        var convertedCategorySections:[String] = [String]()
        
        for i in 0..<categorySections.count{
            convertedCategorySections.append(String(categorySections[i].capitalized))
        }
        
        return convertedCategorySections.joined(separator: " / ")
    }
}
