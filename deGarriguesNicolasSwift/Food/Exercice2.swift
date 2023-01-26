//
//  Exercice2.swift
//  deGarriguesNicolasSwift
//
//  Created by Nicolas de Garrigues on 26/01/2023.
//

import SwiftUI

struct Exercice2: View {
    
    @State var orderList: [Pizza] = [
        Pizza(part: 2, tomato: true, cheese: false, pickle: false, comment: "oui"),
        Pizza(part: 1, tomato: true, cheese: false, pickle: true, comment: "elle est bonne"),
        Pizza(part: 5, tomato: true, cheese: true, pickle: false, comment: "ma pizza")
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                List() {
                    ForEach(orderList, content: { pizza in
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Nombre de part \(pizza.part)")
                            Text("\(pizza.tomato ? "🍅" : "") \(pizza.cheese ? "🧀" : "") \(pizza.pickle ? "🥒" : "")"
                            )
                            Text(pizza.comment)
                        }
                    })
                }
                .navigationTitle("Mes commandes")
                
                VStack {
                    NavigationLink(
                        destination: OrderView(orderList: $orderList),
                        label: {
                            Text("Ajouter une commande")
                        })
                }
            }
        }
    }
}

struct Exercice2_Previews: PreviewProvider {
    static var previews: some View {
        Exercice2()
    }
}
