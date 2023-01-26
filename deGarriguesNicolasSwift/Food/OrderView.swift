//
//  OrderView.swift
//  deGarriguesNicolasSwift
//
//  Created by Nicolas de Garrigues on 26/01/2023.
//

import SwiftUI

struct OrderView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var nbpart = 0
    @State var tomato: Bool = false
    @State var cheese: Bool = false
    @State var pickle: Bool = false
    @State var comment: String = ""
    
    @Binding var orderList: [Pizza]
    
    var body: some View {
        VStack {
            Text("Personnalisez votre pizza")
                .font(.title)
                .fontWeight(.bold)
            Rectangle()
                .frame(height: 1.0)
            VStack {
                Stepper("Nombre de part(s) : \(self.nbpart)", onIncrement: {
                    self.nbpart += 1
                },
                        onDecrement: {
                    self.nbpart -= 1
                }
                )
            }
            VStack {
                Toggle("Base sauce tomate 🍅", isOn: $tomato)
            }
            
            VStack {
                Toggle("Supplément Fromage 🧀", isOn: $cheese)
            }
            
            VStack {
                Toggle("Supplément Cornichon 🥒", isOn: $pickle)
            }
            VStack {
                TextField("Commentaire...", text: $comment)
                    .padding(10.0)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
            }
            VStack {
                Button(action: {
                    orderList.append(
                        Pizza(
                            part: nbpart,
                            tomato: tomato,
                            cheese: cheese,
                            pickle: pickle,
                            comment: comment
                        )
                    )
                    presentationMode.wrappedValue.dismiss()
                    
                }, label: {
                    Text("Commander")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.black/*@END_MENU_TOKEN@*/)
                })
            }
            
            Spacer()
            
        }
        .padding(20.0)
        
    }
}

struct OrderView_Previews: PreviewProvider {
    @State static var orderList = [Pizza(part: 3, tomato: false, cheese: false, pickle: true, comment: "oui")]

    static var previews: some View {
        OrderView(orderList: $orderList)
    }
}
