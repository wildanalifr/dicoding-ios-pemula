//
//  Profile.swift
//  dicoding-pemula
//
//  Created by Wildan on 29/06/24.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack() {
            
            Image("profile").resizable().frame(width: 200, height: 200)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle()).padding(.top, 50)
            
            Text("Wildan Alif R").fontWeight(.semibold).padding(.top, 10)
            
            Text("Hello!, I'm a front end Web Developer also learning iOS development.").foregroundStyle(.secondary).fontWeight(.semibold).padding(.horizontal, 20).multilineTextAlignment(.center).padding(.vertical,20)
    
            Button{
                if let url = URL(string: "https://github.com/wildanalifr") {
                    UIApplication.shared.open(url)
                }
            }
            label: {
                
                Text("Visit My Github Account")
                    .frame(maxWidth: .infinity)
            }
            
        .buttonStyle(.borderedProminent)
        .padding(.horizontal, 30)
            
            
            Spacer()
        }
        
    }
}

#Preview {
    Profile()
}
