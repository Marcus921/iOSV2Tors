//
//  PersonRowView.swift
//  iOSV2Tors
//
//  Created by Marcus Malmgren on 2023-11-09.
//

import SwiftUI

struct PersonRowView: View {
    
    @State var person : Person
    
    var body: some View {
        HStack {
            Text("NAMN:")
            Spacer()
            Text(person.firstname)
            Text(person.lastname)
        }
        .frame(height: 80.0)
        .background(.yellow)
    }
}

#Preview {
    PersonRowView(person: Person(firstname: "Testmänniska", lastname: "Testsson"))
}
