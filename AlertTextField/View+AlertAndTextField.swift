//
//  View+AlertAndTextField.swift
//  AlertTextField
//
//  Created by cmStudent on 2022/11/26.
//

import Foundation
import SwiftUI

extension View {
    
    func alertAndTextField(_ text: Binding<String>, isPresented: Binding<Bool>, title: String?, message: String?, placeholderText: String) -> some View {
        self.modifier(AlertWithTextField(textFieldText: text,
                                         isPresented: isPresented,
                                         title: title,
                                         message: message,
                                         placeholderText: placeholderText))
    }
}
