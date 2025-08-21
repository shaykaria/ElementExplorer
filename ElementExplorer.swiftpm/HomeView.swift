//
//  SwiftUIView.swift
//  ElementExplorer
//
//  Created by Shabinda Sarkaria on 21/11/2024.
//

import SwiftUI

struct HomeView: View {
    let sections = [
        ("Periodic Table", "tablecells.fill", Color.green, 1),
        ("Mini-Games", "gamecontroller.fill", Color.orange, 2),
        ("Formula Solver", "numbers.rectangle.fill", Color.blue, 3),
    ]

    @Binding var selectedTab: Int
    @Namespace private var animationNamespace

    var isIpad: Bool {
        UIDevice.current.userInterfaceIdiom == .pad
    }
    

    var isIPhone: Bool {
        UIDevice.current.userInterfaceIdiom == .phone
    }


    var body: some View {
        GeometryReader { geometry in
            let isLandscape = geometry.size.width > geometry.size.height
            ZStack {
                
                VStack(spacing: isIpad ? (isLandscape ? 50 : 30) : (isLandscape ? 20 : 30)) {
                    Text("Element Explorer")
                        .font(.system(size: isIpad ? 60 : 30, weight: .heavy, design: .rounded))
                        .foregroundColor(.black)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white.opacity(0.8)))
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 3))
                        .shadow(color: Color.black.opacity(0.3), radius: isIpad ? 15 : 10)
 

                    HStack(spacing: isIpad ? 50 : 20) {
                                            GridButton(
                                                title: sections[0].0,
                                                icon: sections[0].1,
                                                color: sections[0].2,
                                                index: sections[0].3,
                                                selectedTab: $selectedTab,
                                                namespace: animationNamespace,
                                                width: isIpad ? 340 : 160,
                                                height: isIpad ? 340 : 160
                                            )
                                            GridButton(
                                                title: sections[1].0,
                                                icon: sections[1].1,
                                                color: sections[1].2,
                                                index: sections[1].3,
                                                selectedTab: $selectedTab,
                                                namespace: animationNamespace,
                                                width: isIpad ? 340 : 160,
                                                height: isIpad ? 340 : 160
                                            )
                                        }

                                        // 🔬 Single Wide Rectangle Below
                                        GridButton(
                                            title: sections[2].0,
                                            icon: sections[2].1,
                                            color: sections[2].2,
                                            index: sections[2].3,
                                            selectedTab: $selectedTab,
                                            namespace: animationNamespace,
                                            width: isIpad ? 730 : 340,
                                            height: isIpad ? (isLandscape ? 250 : 360) : (isLandscape ? 130 : 160)
                                        )
                                    }
                .frame(width: geometry.size.width, height: geometry.size.height)
                .frame(maxWidth: .infinity, alignment: .center)
                .background(
                    Image("grid-background")
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(isIpad ? (isLandscape ? 1.6 : 1.1) : (isLandscape ? 2.2 : 1.6))
                        .rotationEffect(isLandscape ? .degrees(90) : .zero)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .edgesIgnoringSafeArea(.all)
                )
            }
        }
    }
}
