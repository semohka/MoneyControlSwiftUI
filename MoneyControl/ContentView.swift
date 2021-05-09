//
//  ContentView.swift
//  MoneyControl
//
//  Created by Кристина Семкова on 14.04.2021.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var managedOdjectContext
//    @FetchRequest(fetchRequest: Receipt.entity() var receipt: FetchedResults<Receipt>
//    @FetchRequest(fetchRequest: Receipt.getAllToDoItems()) var receipt: FetchedResults<Receipt>
//
//
    
//    @FetchRequest(fetchRequest: Receipt.fetchRequest()
    
    @FetchRequest(
        entity: Receipt.entity(),
        sortDescriptors: [
            NSSortDescriptor(keyPath: \Receipt.date, ascending: false)
    ]
    ) var receipts: FetchedResults<Receipt>
    
    
    
    
    @State private var showingAddNewReceiptView: Bool = false
    @State var productCategory = ""
    @State var shop = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    ForEach(receipts, id: \.tittle) { receipt in
                    NavigationLink(destination: UpdateReceipt(receipt: receipt).environment(\.managedObjectContext, managedOdjectContext)){
                        HStack {
                            Text(receipt.shop?.tittle ?? "Нет магазина")
                            Spacer()
                            Text("\(receipt.date!)")
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
}
