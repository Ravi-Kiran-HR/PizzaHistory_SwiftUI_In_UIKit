//
//  PageTitleView.swift
//  HuliPizza
//
//  Created by Ravi Kiran HR on 4/16/22.
//  Copyright © 2022 Ravi Kiran HR. All rights reserved.
//

import SwiftUI

struct PageTitleView: View {
    var title:String
    var isDisplayingOrders:Bool! = nil
    var body: some View {
        HStack {
            Spacer()
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.trailing)
           
        }.overlay(
            Image(systemName: "chevron.up.square")
                .rotationEffect(isDisplayingOrders ?? false ? Angle(degrees:0.0) : Angle(degrees:180.0))
                .animation(.easeInOut(duration: 0.5))
                .font(.title)
                .foregroundColor(isDisplayingOrders != nil ? Color("G1") : .clear)
            .padding()
            ,alignment: .leading
        )
        .foregroundColor(Color("G1"))
        .background(Color("G4"))
    }
}


struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(title:"Order Pizza", isDisplayingOrders:true)
    }
}
