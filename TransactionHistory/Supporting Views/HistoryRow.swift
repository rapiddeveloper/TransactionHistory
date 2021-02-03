//
//  HistoryRow.swift
//  BankManager
//
//  Created by Admin on 1/28/21.
//  Copyright © 2021 rapid interactive. All rights reserved.
//

import SwiftUI

struct HistoryRow: View {
    
    let transaction: TransactionViewModel
    let padding: CGFloat
      
   
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            
                 transaction.transactionImage
                    .padding(.trailing, padding)

                    VStack(spacing: 0) {
                        HStack {
                                VStack(alignment: .leading, spacing: 4.0) {
                                    Text(transaction.name)
                                        .font(.headline)
                                        .fontWeight(.medium)
                                         .lineLimit(1)
                                         //.fixedSize(horizontal: true, vertical: false)
                                       
                                    
                                    HStack {
                                        Image(systemName: transaction.arrow)
                                        Text(transaction.category)
                                        Text("-")
                                        Text(transaction.cardCategory)
                                        Circle()
                                            .frame(width: 4.0, height: 4.0)
                                        Text(transaction.cardPin)
                                    }
                                    .fixedSize(horizontal: true, vertical: false)
                                    .font(.callout)
                                    .foregroundColor(Color.gray)
                                }
                                .frame(minWidth: 200.0, alignment: .leading)
                                .fixedSize(horizontal: true, vertical: false)
                              

                                
                                Spacer()
                                HStack {
                                    Text(transaction.categorySymbol)
                                        .fontWeight(.medium)
                                    Text(transaction.amount)
                                        .fontWeight(.medium)
                                }
                                .frame(width: 70)
                                .font(.headline)
                                .lineLimit(1)
                                .foregroundColor(
                                    transaction.transactionColor
                                )
                        }
                        .padding([.top, .bottom, .trailing], padding)
                         Divider()
                    }
              }
            // .padding()
    }
}

struct HistoryRow_Previews: PreviewProvider {
    static var previews: some View {
        let t = Transaction(
                        imageName: "jennifer",
                        title: "Iphone 12 Pro",
                        cardType: .master,
                        cardLastDigits: 3320,
                        direction: .recieved,
                        amount: 250000
                    )
     
        let viewModel = TransactionViewModel(transaction: t)
        
        return Group {
            HistoryRow(transaction: viewModel, padding: 16.0)
        }
    }
}
