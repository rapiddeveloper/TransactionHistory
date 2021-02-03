//
//  ContentView.swift
//  TransactionHistory
//
//  Created by Admin on 2/3/21.
//  Copyright © 2021 rapid interactive. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var appData: AppData
    
    var body: some View {
        NavigationView {
            History()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
