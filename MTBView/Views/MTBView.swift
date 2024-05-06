//
//  SwiftUIView.swift
//
//
//  Created by dmoney on 2/25/24.
//

import SwiftUI

struct MTBView: View {

    @State private var mtbPulse: Bool = false
    var body: some View {
        VStack {
            HStack {
                Image("M(SSC)-symbol")
                    .rotationEffect(.degrees(-15))
                Image("T(SSC)-symbol")
                Image("B(SSC)-symbol")
                    .rotationEffect(.degrees(15))
            }
            .font(.largeTitle)
            .padding(.bottom, 20)
            HStack{
                Image("X(SSC)-symbol")
                    .rotationEffect(.degrees(-15))
                Image(systemName: "minus")
                Image("T(SSC)-symbol")
                    .rotationEffect(.degrees(5))
                Image("R(SSC)-symbol")
                    .rotationEffect(.degrees(-15))
                Image("E(SSC)-symbol")
                    .rotationEffect(.degrees(-5))
                Image("M(SSC)-symbol")
                    .rotationEffect(.degrees(5))
                Image("E(SSC)-symbol")
                    .rotationEffect(.degrees(15))
            }.font(.largeTitle)
        }.symbolEffect(
            .scale.up,
            options: .repeating,
            isActive: mtbPulse
            )
        .onAppear(){
            mtbPulse = true
        }
    }
}
