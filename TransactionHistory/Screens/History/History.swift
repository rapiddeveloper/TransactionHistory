//
//  History.swift
//  BankManager
//
//  Created by Admin on 1/31/21.
//  Copyright © 2021 rapid interactive. All rights reserved.
//

import SwiftUI

struct History: View {
    
    var body: some View {
        
        VStack(spacing: 0) {
                NavBar()
                ScrollView {
                    TransactionsByMonth()
                }
            }
            .navigationBarTitle("History")
           
    }
}

struct History_Previews: PreviewProvider {
    static var previews: some View {
        History()
    }
}
