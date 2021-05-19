//
//  CreateNewShop.swift
//  MoneyControl
//
//  Created by Кристина Семкова on 19.05.2021.
//

import SwiftUI

struct CreateNewShop: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.managedObjectContext) var managedOdjectContext
    
    @State var newShop: String = ""
    
    var body: some View {
        Form {
            TextField("Введите новый магазин", text: $newShop)
            Button(action: {
                let shopContent = Shop(context: self.managedOdjectContext)
                shopContent.tittle = newShop
                do {
                    try self.managedOdjectContext.save()
                }catch{
                   print(error)
                }

                presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Сохранить")
                })
        }
    }
}

struct CreateNewShop_Previews: PreviewProvider {
    static var previews: some View {
        CreateNewShop()
    }
}
