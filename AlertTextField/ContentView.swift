//
//  ContentView.swift
//  AlertTextField
//
//  Created by cmStudent on 2022/11/26.
//

import SwiftUI

struct ContentView: View {
    @State private var text = ""
    @State private var shouldPresentAlert = false
    
    var body: some View {
        Button {
            
        } label: {
            Text("ShowAlertTextField")
        }
        .alertAndTextField($text,
                           isPresented:$shouldPresentAlert,
                           title: "",
                           message: "",
                           placeholderText: "")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
