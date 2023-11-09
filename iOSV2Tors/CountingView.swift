//
//  CountingView.swift
//  iOSV2Tors
//
//  Created by Marcus Malmgren on 2023-11-09.
//

import SwiftUI

struct CountingView: View {
    
    @Binding var siffran : Int
    
    var body: some View {
        VStack {
            Text(String(siffran))
            
            Button(action: {
                siffran = siffran + 1
            }, label: {
                Text("Plus")
            })
        }
        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
        .background(Color.orange)
    }
}

#Preview {
    CountingView(siffran: .constant(99))
}
