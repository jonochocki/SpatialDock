//
//  SettingsShortcuts.swift
//  infiniteX3I
//
//  Created by Joonwoo KIM on 2023-07-01.
//

import SwiftUI

struct SettingsShortcuts: View {
    @Environment(\.defaultMinListRowHeight) var minRowHeight
    var body: some View {
        VStack {
            List {
                Text("hi")
                Text("hi")
                Text("hi")
            }.frame(minHeight: minRowHeight * 3)
        }
        .navigationTitle("Shortcuts")
    }
}

#Preview {
    SettingsShortcuts()
}