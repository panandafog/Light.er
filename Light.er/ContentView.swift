//
//  ContentView.swift
//  Light.er
//
//  Created by panandafog on 13.09.2021.
//

import SwiftUI

struct ContentView: View {
    
    let multiplier = CGFloat(0.3)
    let cornerRadius = CGFloat(20)
    
    var body: some View {
        GeometryReader { geometry in
            let tmp = min(geometry.size.width, geometry.size.height)
                * multiplier
            
            ZStack {
                Color(.white)
                Image("Logo")
                    .resizable()
                    .frame(width: tmp, height: tmp)
            }
            .cornerRadius(cornerRadius)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
