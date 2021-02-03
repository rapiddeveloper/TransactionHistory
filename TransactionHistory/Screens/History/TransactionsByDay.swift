//
//  TransactionsByDay.swift
//  BankManager
//
//  Created by Admin on 1/31/21.
//  Copyright © 2021 rapid interactive. All rights reserved.
//

import SwiftUI


struct TransactionsByDay: View {
    
    let transactionsByDay: TransactionsByDayViewModel
    let padding: CGFloat = 16.0
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
           
                Text(transactionsByDay.title)
                    .font(.title)
                    .fontWeight(.bold)
           
            Spacer()
                .frame(height: 16.0)
            ForEach(transactionsByDay.list) { transaction in
                HistoryRow(transaction: transaction, padding: self.padding)
            }
        }
    }
}

struct TransactionsByDay_Previews: PreviewProvider {
    static var previews: some View {
        let t = Transaction(
            imageName: "jennifer",
            title: "Akin",
            cardType: .visa,
            cardLastDigits: 3320,
            direction: .recieved,
            amount: 250
        )
        let u = Transaction(
            imageName: nil,
            title: "Food and Drinks",
            cardType: .master,
            cardLastDigits: 3320,
            direction: .recieved,
            amount: 250
        )
        let td = TransactionsByDayModel(date: "21/1/21", transactions: [t,u])
        let tdvm = TransactionsByDayViewModel(transactionsByDay: td)
        return TransactionsByDay(transactionsByDay: tdvm)
        
    }
}
