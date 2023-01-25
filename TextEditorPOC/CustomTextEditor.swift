//
//  CustomTextEditor.swift
//  TextEditorPOC
//
//  Created by Adriano Leal on 25/01/23.
//

import SwiftUI

struct CustomTextEditor: View {
    let placeholder: String
    @Binding var text: String
    let internalPadding: CGFloat = 5.0
    
    var body: some View {
        ZStack {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(.red.opacity(0.45))
                    .padding(EdgeInsets(top: 7, leading: 4, bottom: 0, trailing: 0))
                    .padding(internalPadding)
            }
            TextEditor(text: $text)
                .padding(internalPadding)
        }.onAppear() {
            UITextView.appearance().backgroundColor = .blue
        }.onDisappear() {
            UITextView.appearance().backgroundColor = nil
        }
    }
}

//struct CustomTextEditor_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomTextEditor(placeholder: "Add coments here", text: "")
//    }
//}
