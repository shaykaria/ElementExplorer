//
//  GridButton.swift
//  ElementExplorer
//
//  Created by Shabinda Sarkaria on 22/12/2024.
//

import SwiftUI


// Custom Animated Button
struct GridButton: View {
    let title: String
    let icon: String
    let color: Color
    let index: Int
    @Binding var selectedTab: Int
    var namespace: Namespace.ID
    var width: CGFloat
     var height: CGFloat
    
    var isIpad: Bool {
        UIDevice.current.userInterfaceIdiom == .pad
    }

    @State private var isTapped = false

    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.system(size: isIpad ? 80 : 50))
                .foregroundColor(color)
                .padding([.top, .bottom], isIpad ? 30 : 10)

            Text(title)
                .font(.system(size: isIpad ? 30 : 25, weight: .bold, design: .rounded))
                .foregroundColor(color)
                .padding(.bottom, isIpad ? 15 : 10)
        }
        .frame(width: width, height: height)
        .background(
            color.opacity(0.6) 
                .overlay(Color.white.opacity(0.9))
        )
        .cornerRadius( isIpad ? 30 : 20)
        .overlay(RoundedRectangle(cornerRadius:  isIpad ? 30 : 20).stroke(color, lineWidth: 3))
        .shadow(color: Color.black.opacity(0.3), radius: isIpad ? 10 : 10)
        .matchedGeometryEffect(id: "tabTransition\(index)", in: namespace)
        .scaleEffect(isTapped ? 1.1 : 1)
        .animation(.spring(response: 0.3, dampingFraction: 0.6), value: isTapped)
        .onTapGesture {
            isTapped = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                selectedTab = index
                isTapped = false
        
            }
        }
    }
}

