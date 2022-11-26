//
//  AlertAndTextField.swift
//  AlertTextField
//
//  Created by cmStudent on 2022/11/26.
//

import Foundation
import SwiftUI

// カスタムModifierの定義
struct AlertWithTextField: ViewModifier {
    @Binding var textFieldText: String
    @Binding var isPresented: Bool

    let title: String?
    let message: String?
    let placeholderText: String

    func body(content: Content) -> some View {
        ZStack {
            content

            if isPresented {
                AlertControllerAndTextFieldContainer(textFieldText: $textFieldText,
                                                      isPresented: $isPresented,
                                                      title: title,
                                                      message: message,
                                                      placeholderText: placeholderText)
            }
        }
    }
}
