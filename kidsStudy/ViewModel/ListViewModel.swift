//
//  ListViewModel.swift
//  kidsStudy
//
//  Created by Eminko on 4.03.2023.
//

import Foundation

struct ListViewModel {
    
    var listData = [ListData]()
    
    mutating func getData() {
        listData.append(ListData(listeArray: "Hayvanlar", imgArray: "kedi"))
        listData.append(ListData(listeArray: "Bitkiler", imgArray: "çiçek"))
        listData.append(ListData(listeArray: "Eşyalar", imgArray: "bavul"))
        listData.append(ListData(listeArray: "Renkler", imgArray: "sarı"))
    }
    
    func numberOfRowInSection() -> Int {
        return listData.count
     }
}
