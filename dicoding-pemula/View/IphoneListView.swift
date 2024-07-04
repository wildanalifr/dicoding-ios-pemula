//
//  IphoneListView.swift
//  dicoding-pemula
//
//  Created by Wildan on 29/06/24.
//

import SwiftUI

struct IphoneListView: View {
    @ObservedObject var iphoneData = IphoneViewModel()
    
    
    var body: some View {
        NavigationStack{
            ScrollView{
                ForEach(iphoneData.iphones, id: \.id) { iphone in
                    
                    NavigationLink{
                        IphoneDetail(iphoneDetail: iphone)
                    }label: {
                        HStack {
                            VStack(alignment: .leading) {
                                Text(iphone.iphoneName)
                                    .foregroundColor(.primary).padding(.bottom, 2)
                                Text("Release Date: \(iphone.releaseDate)")
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
//                            Text("gambar")
//                                .foregroundColor(.primary) // Change text color to the default
                            Image(iphone.iphoneImage).resizable().frame(width: 70, height: 100)
                        }
                        .padding()
                        .background(Color.white) // Optional: Set a background color to ensure visibility
                        .cornerRadius(8) // Optional: Round the corners
                        .shadow(radius: 2)
                    }
                }
            }.padding(1)
                .navigationTitle("Iphone List")
        }
        
    }
}

#Preview {
    IphoneListView()
}
