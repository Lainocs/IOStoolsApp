//
//  Exercice1.swift
//  deGarriguesNicolasSwift
//
//  Created by Nicolas de Garrigues on 26/01/2023.
//

import SwiftUI

struct Exercice1: View {
    
    @State var isActive: Bool = false
    
    var body: some View {
        Button {
            isActive.toggle()
        } label: {
            Text("My Button")
        }
        .padding()
        .frame(width: 200)
        .background(isActive ? .black : .white)
        .foregroundColor(isActive ? .white : .black)
        .border(.black)
    }
}

struct Exercice1_Previews: PreviewProvider {
    static var previews: some View {
        Exercice1()
    }
}
