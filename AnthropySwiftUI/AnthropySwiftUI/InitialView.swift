//
//  InitialView.swift
//  AnthropySwiftUI
//
//  Created by BrysonSaclausa on 12/9/21.
//

import SwiftUI

struct InitialView: View {
    
    @State var selected = 1
    
    var body: some View {
        Picker(selection: $selected, label: Text("Picker"), content: {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).tag(1)
            Text("Goodbye world").tag(2)
        })
            .pickerStyle(SegmentedPickerStyle())
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
