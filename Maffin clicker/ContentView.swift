//
//  ContentView.swift
//  Maffin clicker
//
//  Created by Алина  on 08.10.2026.
//

import SwiftUI

struct ContentView: View {
    @State private var showList = false
    @State private var clicks = 0
    @State private var currentMuffin = Image("Muffin_vanilla")
    @State private var price = "50 кликов"
    var body: some View {
        ZStack {
            VStack {

                Button("Улучшить маффин") {
                    if clicks == 50 {
                        currentMuffin = Image("Muffin_chocolate")
                        price = "100 кликов"
                    } else if clicks == 100 {
                        currentMuffin = Image("Muffin_gold_add")
                        price = "200 кликов"
                    } else if clicks == 200 {
                        currentMuffin = Image("Muffin_berry")
                        price = "500 кликов"
                    }
                }
                .frame(width: 400, height: 70)
                .shadow(color: .black, radius: 3)
                .foregroundStyle(.white)
                .background(.orange)
                .cornerRadius(15)
                .font(.system(size: 40))
                .shadow(radius: 9)
                Text("\(price)")
                    .font(.system(size: 35))
                    .shadow(color: .orange, radius: 2)

                .padding(-7)

                    Button(action: {
                        print("Маффин \(clicks)")
                        clicks += 1
                    }) {
                        currentMuffin
                            .resizable()
                            .scaledToFit()
                            .frame(width: 500, height: 500)
                    }

                Button("-") {
                    clicks -= 1
                }
                .font(.largeTitle)
                .shadow(color: .orange, radius: 2)

                Text("\(clicks)")
                    .font(.system(size: 60))
                    .shadow(radius: 20)
                    .opacity(0.8)

                Button("Маффины") {
                    showList = true
                }
                .frame(width: 300)
                .font(.title)
                .shadow(radius: 2)
                .foregroundStyle(.white)
                .background(.orange)
                .cornerRadius(12)
                .shadow(radius: 6)

                    .sheet(isPresented: $showList) {
                        Text("Маффины")
                    }
            }
        }
    }
}
#Preview {
    ContentView()
}
