//
//  AddNewReceipt.swift
//  MoneyControl
//
//  Created by Кристина Семкова on 18.04.2021.
//

import SwiftUI

struct AddNewReceipt: View {
    
    @State var shop: String = ""
    @State var date: Date = Date()
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        TextField("Введите название магазина", text: $shop)
                        DatePicker("Дата", selection: $date)
                    }
                    Section {
                        Button(action: {
                            let receiptContent = Receipt()
                            receiptContent.title = shop
                            receiptContent.date = date
                            
                        }, label: {
                            HStack {
                                Spacer()
                                Text("Сохранить")
                                Spacer()
                            }
                        })
                    }
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
