//
//  SettingsSubscription.swift
//  SpatialDock
//
//  Created by Joonwoo KIM on 2023-07-26.
//

import SwiftUI

struct SettingsSubscription: View {
    @Environment(\.openWindow) var openWindow
    @StateObject var storeController = StoreController.shared
    @State var showingProUpsell = false
    var body: some View {
        List {
            if !storeController.purchased.isEmpty {
                Section("Membership Details") {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("VisionDock Pro")
                            Text("\(storeController.purchased[0].replacingOccurrences(of: "com.exDevelopments.SpatialDock.pro.", with: ""))").foregroundStyle(.secondary)
                        }
                        Spacer()
                        if storeController.purchased[0].contains("monthly") {
                            Text("$0.99/month")
                        } else {
                            Text("$9.99/year")
                        }
                    }
                }
            } else {
                Section("Purchase Pro") {
                    Button(action: {
                        openWindow(id: "productsview")
                    }, label: {
                        HStack {
                            Text("Purchase VisionDock \(Text("Pro").bold())")
                            Spacer()
                            Image(systemName: "wand.and.stars")
                        }
                    })
                }
            }
        }.navigationTitle("Subscription")
    }
}

#Preview {
    SettingsSubscription()
}
