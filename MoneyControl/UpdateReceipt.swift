//
//  UpdateReceipt.swift
//  MoneyControl
//
//  Created by Кристина Семкова on 19.04.2021.
//

import SwiftUI

struct UpdateReceipt: View {
    
    @State var receipt: Receipt
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct UpdateReceipt_Previews: PreviewProvider {
    static var previews: some View {
        UpdateReceipt(receipt: Receipt())
    }
}
