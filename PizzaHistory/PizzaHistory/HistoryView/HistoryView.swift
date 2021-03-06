//
//  HistoryView.swift
//  HuliPizza
//
//  Created by Ravi Kiran HR on 4/16/22.
//  Copyright © 2022 Ravi Kiran HR. All rights reserved.
//

import SwiftUI

struct HistoryView: View {
    @State var imageID:Int = 0
    var body: some View {
        VStack {
            //ContentHeaderView()
            PageTitleView(title:"Pizza History")
            SelectedImageView(image:"\(imageID)_250w")
                .padding(5)
            HistoryListView(imageID:$imageID)
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HistoryView()
            HistoryView()
                .colorScheme(.dark)
                .background(Color.black)
        }
    }
}
