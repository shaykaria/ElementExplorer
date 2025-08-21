import SwiftUI

struct ElectronShellView: View {
    @State private var animate = false
    let electronConfiguration: [Int]
    let elementSymbol: String
    
    var body: some View {
        let maxShells = electronConfiguration.count
        
        // hardcoded shrinking logic, Reduce by 0.1 per shell after 2
        let scaleFactor: CGFloat = max(1.0 - (CGFloat(maxShells - 2) * 0.1), 0.3)
        
        ZStack {
            //center
            Circle()
                .fill(Color.orange)
                .frame(width: 50 * scaleFactor, height: 50 * scaleFactor)
                .overlay(
                    Text(elementSymbol)
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                        .scaleEffect(scaleFactor)
                )
        
            // generate the shellssz
            ForEach(0..<maxShells, id: \.self) { shellIndex in
                let baseRadius: CGFloat = 50
                let electronCount = electronConfiguration[shellIndex]
                
                // adjust radius dynamically, but shrink if more shells exist
                let radius = baseRadius * CGFloat(shellIndex + 1) * scaleFactor
                
                Circle()
                    .stroke(Color.white.opacity(0.8), lineWidth: 2)
                    .frame(width: radius * 2, height: radius * 2)
                
                // electron dotz
                ForEach(0..<electronCount, id: \.self) { index in
                    let angle = Double(index) / Double(electronCount) * 2 * .pi
                    
                    ElectronView(
                        xOffset: cos(angle) * radius,
                        yOffset: sin(angle) * radius,
                        animate: animate
                    )
                }
            }
        }
        .frame(width: 350, height: 350)
        .background(Color.black.opacity(0.9))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .onAppear {
            withAnimation(Animation.linear(duration: 5).repeatForever(autoreverses: false)) {
                animate.toggle()
            }
        }
    }
}

// animate it
struct ElectronView: View {
    let xOffset: CGFloat
    let yOffset: CGFloat
    let animate: Bool
    
    var body: some View {
        let animationOffset = animate ? 360.0 : 0.0 
        
        Circle()
            .fill(Color.blue)
            .frame(width: 10, height: 10)
            .offset(x: xOffset, y: yOffset)
            .rotationEffect(.degrees(animationOffset))
            .animation(Animation.linear(duration: 5).repeatForever(autoreverses: false), value: animate)
    }
}

#Preview {
    ElectronShellView(electronConfiguration: [2], elementSymbol: "Lr")
}
