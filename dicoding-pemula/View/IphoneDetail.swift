//
//  IphoneDetail.swift
//  dicoding-pemula
//
//  Created by Wildan on 29/06/24.
//

import SwiftUI

struct IphoneDetail: View {
    var iphoneDetail: IphoneModel
    
    var body: some View {
        Image(iphoneDetail.iphoneImage)
            .resizable()
            .frame(width: 100, height: 150)
            .padding(.bottom, 15)
        
        Text("Name: \(iphoneDetail.iphoneName)").padding(.bottom, 10)
        
        Text("Release Date: \(iphoneDetail.releaseDate)")
        
        Text("We have colors model:").padding(.top, 15)
        ForEach(Array(iphoneDetail.variantColors), id: \.self) { item in
            Text(item)
        }
    }
}
//
//#Preview {
//    IphoneDetail()
//}
