//
//  PersonDetailView.swift
//  iOSV2Tors
//
//  Created by Marcus Malmgren on 2023-11-09.
//

import SwiftUI

struct PersonDetailView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @State var theperson : Person
    
    @State var pname = ""
    
    var body: some View {
        VStack {
            Text("Läsa mer om " + theperson.firstname)
            
            Text(theperson.prettyname())
            
            
            TextField("", text: $pname)
            Button(action: {
                dismiss()
            }, label: {
                Text("Spara")
            })
            
            NavigationLink(destination: ThirdView(), label: {
                Text("Gå Tredje")
            })
        }
        .onAppear() {
            pname = theperson.firstname
            
        }
    }
}

#Preview {
    PersonDetailView(theperson: Person(firstname: "ABC", lastname: "XYZ"))
}
