//
//  AddNewShop.swift
//  MoneyControl
//
//  Created by Кристина Семкова on 13.05.2021.
//

import SwiftUI

struct AddNewShop: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.managedObjectContext) var managedOdjectContext
    
    @FetchRequest(
        entity: Shop.entity(),
        sortDescriptors: [
            NSSortDescriptor(keyPath: \Shop.tittle, ascending: false)
        ]
    )
    var shops: FetchedResults<Shop>
    
    @State private var showingCreateNewShopView: Bool = false
    
    var body: some View {
        NavigationView {
            Form {
                List {
                    ForEach(shops, id: \.self) { shop in
                        Text(shop.tittle ?? "Нет магазина")
                    }
                }
                
                .navigationBarItems(trailing:
                                        Button(action: {
                                            self.showingCreateNewShopView.toggle()
                                        }) {
                                            Image(systemName: "plus.circle.fill")
                                                .foregroundColor(.green)
                                                .imageScale(.large)
                                        })
                .sheet(isPresented: $showingCreateNewShopView) {
                    CreateNewShop()

                }
            }
        }
    }
}

struct AddNewShop_Previews: PreviewProvider {
    static var previews: some View {
        AddNewShop()
    }
}
