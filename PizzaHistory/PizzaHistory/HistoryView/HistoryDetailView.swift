//
//  HistoryDetailView.swift
//  HuliPizza
//
//  Created by Ravi Kiran HR on 4/18/22.
//  Copyright © 2022 Ravi Kiran HR. All rights reserved.
//

import SwiftUI

struct HistoryDetailView: View {
    @State var isPresented:Bool = false
    var historyItem:HistoryItem
    @Binding var imageID:Int
    var body: some View {
        imageID = historyItem.id
        return VStack {
            PageTitleView(title: historyItem.name)
            MapView(latitude: historyItem.latitude, longitude: historyItem.longitude, regionRadius: 1000000)
                .frame(height:100)
            PresentMapButton(isPresented:$isPresented, historyItem:historyItem)
            Text(historyItem.history)
                .frame(height:300)
            Spacer()
        }
    }
}

struct HistoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryDetailView(historyItem:HistoryModel().historyItems[0], imageID: .constant(0))
    }
}
