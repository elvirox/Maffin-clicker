//
//  MiffunChoice.swift
//  Maffin clicker
//
//  Created by Алина  on 09.10.2026.
//

import SwiftUI

struct MuffinChoice: View {
    @Binding var tap: Int
    @Binding var nowMuffin: Image
    @Binding var cost: String

    let muffinSize: CGFloat = 200
    var body: some View {
        VStack{
            HStack {
                Button(action: {
                    nowMuffin = Image("Muffin_vanilla")
                    cost = "50 кликов"
                }) {
                    Image("Muffin_vanilla")
                        .resizable()
                        .scaledToFit()
                        .frame(width: muffinSize, height: muffinSize)
                }
                // Muffin
                Button(action: {
                    if tap >= 50 {
                        nowMuffin = Image("Muffin_chocolate")
                        cost = "100 кликов"
                    }
                }) {
                    Image("Muffin_chocolate")
                        .resizable()
                        .scaledToFit()
                        .frame(width: muffinSize, height: muffinSize)
                }
                // Muffin
            }
            HStack {
                Button(action: {
                    if tap >= 100 {
                        nowMuffin = Image("Muffin_gold_add")
                        cost = "200 кликов"
                    }
                }) {
                    Image("Muffin_gold_add")
                        .resizable()
                        .scaledToFit()
                        .frame(width: muffinSize, height: muffinSize)
                }
                // Muffin
                Button(action: {
                    if tap >= 200 {
                        nowMuffin = Image("Muffin_berry")
                        cost = "500 кликов"
                    }
                }) {
                    Image("Muffin_berry")
                        .resizable()
                        .scaledToFit()
                        .frame(width: muffinSize, height: muffinSize)
                }
                // Muffin
            }
            HStack {
                Button(action: {
                    if tap >= 500 {
                        nowMuffin = Image("Muffin_universal")
                        cost = "1000 кликов"
                    }
                }) {
                    Image("Muffin_universal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: muffinSize, height: muffinSize)
                }
                // Muffin
                Button(action: {
                    if tap >= 1000 {
                        nowMuffin = Image("Muffin_choco-berry")
                        cost = "5000 кликов"
                    }
                }) {
                    Image("Muffin_choco-berry")
                        .resizable()
                        .scaledToFit()
                        .frame(width: muffinSize, height: muffinSize)
                }
                // Muffin
            }
            HStack {
                Button(action: {
                    if tap >= 5000 {
                        nowMuffin = Image("Muffin_what")
                        cost = "10000 кликов"
                    }
                }) {
                    Image("Muffin_what")
                        .resizable()
                        .scaledToFit()
                        .frame(width: muffinSize, height: muffinSize)
                }
                // Muffin
                Button(action: {
                    if tap >= 10000 {
                        nowMuffin = Image("Muffin_universe")
                        cost = "2000 кликов"
                    }
                }) {
                    Image("Muffin_universe")
                        .resizable()
                        .scaledToFit()
                        .frame(width: muffinSize, height: muffinSize)
                }
                // Muffin
            }
        }
    }
}
