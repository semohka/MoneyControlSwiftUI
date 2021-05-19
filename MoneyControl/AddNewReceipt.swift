//
//  AddNewReceipt.swift
//  MoneyControl
//
//  Created by Кристина Семкова on 18.04.2021.
//

import SwiftUI

struct AddNewReceipt: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.managedObjectContext) var managedOdjectContext
    
      
    @State var shop: String = ""
    @State var date: Date = Date()
  
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                            NavigationLink(destination: AddNewShop().environment(\.managedObjectContext, managedOdjectContext)) {
                                    Button(action: {
                                        }, label: {
                                            Text("Выберите магазин")
                                        })
                            }
                    }


                        DatePicker("Дата", selection: $date)
                
                        Button(action: {
                            let shopContent = Shop(context: self.managedOdjectContext)
                            shopContent.tittle = shop
                            
                            let receiptContent = Receipt(context: self.managedOdjectContext)
                            receiptContent.shop = shopContent
                            receiptContent.date = date
                            
                            do {
                                try self.managedOdjectContext.save()
                            }catch{
                               print(error)
                            }

                            presentationMode.wrappedValue.dismiss()
                            
                        }, label: {
                            HStack {
                                Spacer()
                                Text("Сохранить")
                                Spacer()
                            }
                        })
                    
                }
            }
            .navigationBarTitle(Text("Создать новый чек"), displayMode: .inline)
            

            
        }
    }
}

struct AddNewReceipt_Previews: PreviewProvider {
    static var previews: some View {
        AddNewReceipt()
    }
}
