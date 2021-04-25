//
//  ContentView.swift
//  MoneyControl
//
//  Created by Кристина Семкова on 14.04.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAddNewReceiptView: Bool = false
    @State var productCategory = ""
    @State var shop = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    NavigationLink(destination: UpdateReceipt()){
                        HStack {
                            Text("Магазин")
                            Spacer()
                            Text("Цена")
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Мои чеки"), displayMode: .inline)
            .navigationBarItems(trailing:
                                    Button(action: {
                                        self.showingAddNewReceiptView.toggle()
                                    }) {
                                        Image(systemName: "plus.circle.fill")
                                            .foregroundColor(.green)
                                            .imageScale(.large)
                                    })
            .sheet(isPresented: $showingAddNewReceiptView) {
                AddNewReceipt()
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
