import SwiftUI
import Combine

struct AtomicRushView: View {
    @Binding var selectedGame: String?

    let allElements: [(symbol: String, type: ElementType)] = [
        ("H", .Reactive_NonMetals), ("He", .Noble_Gases), ("Li", .Alkali_Metals), ("Be", .Alkaline_Earth_Metals),
        ("B", .Metalloids), ("C", .Reactive_NonMetals), ("N", .Reactive_NonMetals), ("O", .Reactive_NonMetals),
        ("F", .Reactive_NonMetals), ("Ne", .Noble_Gases), ("Na", .Alkali_Metals), ("Mg", .Alkaline_Earth_Metals),
        ("Al", .PostTransition_Metals), ("Si", .Metalloids), ("P", .Reactive_NonMetals), ("S", .Reactive_NonMetals),
        ("Cl", .Reactive_NonMetals), ("K", .Alkali_Metals), ("Ca", .Alkaline_Earth_Metals), ("Sc", .Transition_Metals),
        ("Ti", .Transition_Metals), ("V", .Transition_Metals), ("Cr", .Transition_Metals), ("Mn", .Transition_Metals),
        ("Fe", .Transition_Metals), ("Co", .Transition_Metals), ("Ni", .Transition_Metals), ("Cu", .Transition_Metals),
        ("Zn", .Transition_Metals), ("Ga", .PostTransition_Metals), ("Ge", .Metalloids), ("As", .Metalloids),
        ("Se", .Reactive_NonMetals), ("Br", .Reactive_NonMetals), ("Kr", .Noble_Gases), ("Rb", .Alkali_Metals),
        ("Sr", .Alkaline_Earth_Metals), ("Y", .Transition_Metals), ("Zr", .Transition_Metals), ("Nb", .Transition_Metals),
        ("Mo", .Transition_Metals), ("Tc", .Transition_Metals), ("Ru", .Transition_Metals), ("Rh", .Transition_Metals),
        ("Pd", .Transition_Metals), ("Ag", .Transition_Metals), ("Cd", .Transition_Metals), ("In", .PostTransition_Metals),
        ("Sn", .PostTransition_Metals), ("Sb", .Metalloids), ("Te", .Metalloids), ("I", .Reactive_NonMetals),
        ("Xe", .Noble_Gases), ("Cs", .Alkali_Metals), ("Ba", .Alkaline_Earth_Metals), ("La", .Lanthanides),
        ("Ce", .Lanthanides), ("Th", .Actinides), ("U", .Actinides)
    ]

    @State private var selectedElements: [(symbol: String, type: ElementType)] = []
    @State private var targetElement: String = ""
    @State private var score = 0
    @State private var timeLeft = 15
    @State private var gameOver = false

    // Used a timer
    @StateObject private var timer = TimerManager()

    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]

    var isIpad: Bool {
        UIDevice.current.userInterfaceIdiom == .pad
    }

    var body: some View {
        ZStack {
            Color.white.opacity(0.95)
                .ignoresSafeArea()

            VStack(spacing: isIpad ? 30 : 20) {
                if gameOver {
                    gameOverView()
                } else {
                    gamePlayView()
                }
            }
            .padding()
        }
        .onAppear {
            startGame()
        }
        .onReceive(timer.$timeLeft) { newTime in
            if newTime == 0 {
                gameOver = true
            }
        }
    }

    // main funciton
    func gamePlayView() -> some View {
        VStack(spacing: isIpad ? 25 : 15) {
            Text("Atomic Rush")
                .font(.system(size: isIpad ? 50 : 32, weight: .bold))

            Text("Tap the element: **\(targetElement)**")
                .font(.system(size: isIpad ? 26 : 20, weight: .medium))
                .foregroundColor(.blue)

            Text("Time Left: \(timer.timeLeft)s")
                .font(.system(size: isIpad ? 24 : 18))
                .foregroundColor(.red)

            Text("Score: \(score)")
                .font(.system(size: isIpad ? 24 : 18))
                .foregroundColor(.green)

            LazyVGrid(columns: columns, spacing: isIpad ? 20 : 12) {
                ForEach(selectedElements, id: \.symbol) { element in
                    Button(action: {
                        if element.symbol == targetElement {
                            score += 1
                            updateGameState()
                        }
                    }) {
                        Text(element.symbol)
                            .font(.system(size: isIpad ? 32 : 22, weight: .bold))
                            .frame(width: isIpad ? 100 : 70, height: isIpad ? 100 : 70)
                            .background(colorForElementType(element.type))
                            .foregroundColor(.white)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color.black, lineWidth: 3)
                            )
                    }
                }
            }
            .padding()

            Spacer()

            Button("Exit Game") {
                withAnimation {
                    selectedGame = nil
                }
            }
            .font(.headline)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
        }
    }

    func gameOverView() -> some View {
        VStack(spacing: isIpad ? 20 : 15) {
            Text("Time's Up!")
                .font(.system(size: isIpad ? 40 : 28, weight: .bold))

            Text("You scored **\(score)** points!")
                .font(.headline)
                .multilineTextAlignment(.center)

            Button("Restart") {
                restartGame()
            }
            .font(.headline)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.top, 10)

            Button("Exit Game") {
                withAnimation {
                    selectedGame = nil
                }
            }
            .font(.headline)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        .padding()
        .frame(maxWidth: isIpad ? 500 : 350)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.white)
                .shadow(radius: 10)
        )
    }

    func startGame() {
        score = 0
        gameOver = false
        timer.start()
        updateGameState()
    }

    func updateGameState() {
        selectedElements = Array(allElements.shuffled().prefix(18)) // Refresh grid every time
        targetElement = selectedElements.randomElement()?.symbol ?? "H"
    }

    func restartGame() {
        timer.reset()
        startGame()
    }

    func colorForElementType(_ type: ElementType) -> Color {
        switch type {
        case .Alkali_Metals: return .red
        case .Alkaline_Earth_Metals: return .orange
        case .Transition_Metals: return .yellow
        case .Metalloids: return .green
        case .Reactive_NonMetals: return .blue
        case .Noble_Gases: return .purple
        default: return .gray
        }
    }
}

// manages the time
class TimerManager: ObservableObject {
    @Published var timeLeft = 15
    private var cancellable: AnyCancellable?

    func start() {
        cancellable = Timer.publish(every: 1, on: .main, in: .common)
            .autoconnect()
            .sink { _ in
                if self.timeLeft > 0 {
                    self.timeLeft -= 1
                }
            }
    }

    func reset() {
        timeLeft = 15
        cancellable?.cancel()
        start()
    }
}
