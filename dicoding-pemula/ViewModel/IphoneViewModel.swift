//
//  IphoneViewModel.swift
//  dicoding-pemula
//
//  Created by Wildan on 29/06/24.
//

import Foundation

class IphoneViewModel: ObservableObject {
    @Published var iphones: [IphoneModel] = []
    
    init() {
        loadDataFromJson()
    }
    
    func loadDataFromJson() {
        if let url = Bundle.main.url(forResource: "iphones", withExtension: "json") {
                    do {
                        let data = try Data(contentsOf: url)
                        let decoder = JSONDecoder()
                        let iphones = try decoder.decode([IphoneModel].self, from: data)
                        self.iphones = iphones
                    } catch {
                        print("Error loading JSON: \(error)")
                    }
                }
    }
}
