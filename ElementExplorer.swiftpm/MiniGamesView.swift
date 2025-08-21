import SwiftUI

struct MiniGamesView: View {
    let games = [
        ("Atomic Rush", "bolt.fill", Color.red.opacity(0.8)),
        ("Element Quiz", "questionmark.circle.fill", Color.green.opacity(0.8)),
    ]
    
    @State private var selectedGame: String? = nil

    var isIpad: Bool {
        UIDevice.current.userInterfaceIdiom == .pad
    }
    
    var body: some View {
        ZStack {
            VStack(spacing: isIpad ? 25 : 20) {
                Image(systemName: "gamecontroller.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: isIpad ? 120 : 80, height: isIpad ? 120 : 80)
                    .foregroundColor(.black)
                
                VStack(spacing: 5) {
                    Text("Mini Games")
                        .font(.system(size: isIpad ? 50 : 36, weight: .bold, design: .rounded))
                        .foregroundColor(.black)
                    
                    Text("Select a game and test your chemistry knowledge!")
                        .font(.system(size: isIpad ? 22 : 18, weight: .medium, design: .rounded))
                        .foregroundColor(.black.opacity(0.7))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30)
                }

                //game selection grid
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    ForEach(games, id: \.0) { game in
                        Button(action: {
                            withAnimation {
                                selectedGame = game.0
                            }
                        }) {
                            VStack {
                                Image(systemName: game.1)
                                    .font(.system(size: 50))
                                    .foregroundColor(.white)
                                    .padding(.bottom, 10)

                                Text(game.0)
                                    .font(.headline)
                                    .foregroundColor(.white)
                            }
                            .padding()
                            .frame(width: isIpad ? 200 : 150, height: isIpad ? 200 : 150)
                            .background(game.2)
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.black.opacity(0.6), lineWidth: 3)
                            )
                            .shadow(color: game.2.opacity(0.6), radius: 8)
                        }
                    }
                }
                .padding(.top, 20)

                Spacer()
            }
            .padding()
            .frame(maxWidth: isIpad ? 600 : 450)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white.opacity(0.9))
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 3)
                    )
                    .shadow(radius: 10)
            )
            .background(
                Image("grid-background")
                    .resizable()
                    .scaledToFill()
                    .scaleEffect(2.3)
                    .ignoresSafeArea()
            )
            .padding()
            
            // game launch screen
            if let selectedGame = selectedGame {
                if selectedGame == "Element Quiz" {
                    ElementQuizView(selectedGame: $selectedGame)
                        .transition(.scale)
                } else if selectedGame == "Atomic Rush" {
                    AtomicRushView(selectedGame: $selectedGame)
                        .transition(.scale)
                } else {
                    VStack(spacing: 15) {
                        Text("\(selectedGame)")
                            .font(.title)
                            .bold()
                            .padding()

                        Text("Game is loading...")
                            .font(.headline)
                            .foregroundColor(.gray)
                        
                        Button(action: {
                            withAnimation {
                                self.selectedGame = nil
                            }
                        }) {
                            Text("Close")
                                .bold()
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.black)
                                .foregroundColor(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                        .padding(.horizontal, 20)
                    }
                    .frame(width: 350, height: 200)
                    .background(Color.white.opacity(0.95))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(radius: 10)
                    .transition(.scale)
                }
            }
        }
    }
}
