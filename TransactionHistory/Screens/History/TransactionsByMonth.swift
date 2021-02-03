//
//  TransactionsByMonth.swift
//  BankManager
//
//  Created by Admin on 1/31/21.
//  Copyright © 2021 rapid interactive. All rights reserved.
//

import SwiftUI

struct TransactionsByMonth: View {
    
    @EnvironmentObject var appData: AppData
    
    var body: some View {
        VStack(spacing: 32) {
            VStack(spacing: 0) {
                HStack(alignment: .center) {
                    Group {
                        Text("January")
                        Text("2021")
                    }
                    Spacer()
                    
                    Image(systemName: "calendar")
                }
                .padding([.top, .trailing, .bottom])
                .font(.headline)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Divider()
            }
            ForEach(appData.monthlyTransactions) { transactionsByDay in
                TransactionsByDay(transactionsByDay: transactionsByDay)
            }
        }
        .padding(.leading)
    }
}



struct TransactionsByMonth_Previews: PreviewProvider {
    static var previews: some View {
        
       let appData = AppData()
        print(appData.monthlyTransactions)
        return// ScrollView {
            TransactionsByMonth()
                .environmentObject(appData)
      //  }
    }
}
