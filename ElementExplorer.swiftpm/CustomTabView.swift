import SwiftUI

// Custom Tab View with Dynamic Navigation & Fade-In Info Popup
struct CustomTabView: View {
    @State private var selectedTab = 0
    @State private var showInfoPopup = false
    @Namespace private var animationNamespace

    var isIpad: Bool {
        UIDevice.current.userInterfaceIdiom == .pad
    }

    var sectionTitle: String {
        switch selectedTab {
        case 1: return ""
        case 2: return ""
        case 3: return ""
        default: return ""
        }
    }

    var body: some View {
        NavigationStack {
            ZStack {
                VStack(spacing: 0) {
                    ZStack {
                        HomeView(selectedTab: $selectedTab)
                            .opacity(selectedTab == 0 ? 1 : 0)
                            .animation(.easeInOut(duration: 0.3), value: selectedTab)

                        PeriodicTableView()
                            .opacity(selectedTab == 1 ? 1 : 0)
                            .animation(.easeInOut(duration: 0.3), value: selectedTab)

                        MiniGamesView()
                            .opacity(selectedTab == 2 ? 1 : 0)
                            .animation(.easeInOut(duration: 0.3), value: selectedTab)

                        FormulaSolverView()
                            .opacity(selectedTab == 3 ? 1 : 0)
                            .animation(.easeInOut(duration: 0.3), value: selectedTab)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .navigationTitle(selectedTab == 0 ? "" : sectionTitle)
                    .navigationBarTitleDisplayMode(.large)
                    .navigationBarHidden(selectedTab == 0)
                    .toolbar {
                        if selectedTab != 0 {
                            ToolbarItem(placement: .navigationBarLeading) {
                                Button(action: {
                                    withAnimation(.easeInOut) {
                                        selectedTab = 0
                                    }
                                }) {
                                    HStack {
                                        Image(systemName: "arrow.backward.circle.fill")
                                            .font(.title2)
                                    }
                                    .foregroundColor(.blue)
                                }
                            }

                            // Info Button
                            ToolbarItem(placement: .navigationBarTrailing) {
                                Button(action: {
                                    withAnimation(.spring(response: 0.4, dampingFraction: 0.6)) {
                                        showInfoPopup.toggle()
                                    }
                                }) {
                                    Image(systemName: "info.circle.fill")
                                        .font(.title2)
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                    }

                    // Bottom Navigation Bar
                    if selectedTab != 0 {
                        HStack {
                            TabButton(icon: "house.fill", title: "Home", index: 0, selectedTab: $selectedTab, namespace: animationNamespace)
                            TabButton(icon: "tablecells.fill", title: "Table", index: 1, selectedTab: $selectedTab, namespace: animationNamespace)
                            TabButton(icon: "gamecontroller.fill", title: "Games", index: 2, selectedTab: $selectedTab, namespace: animationNamespace)
                            TabButton(icon: "numbers.rectangle.fill", title: "Solver", index: 3, selectedTab: $selectedTab, namespace: animationNamespace)
                        }
                        .frame(height: isIpad ? 100 : 70)
                        .frame(maxWidth: .infinity)
                        .background(
                            Color.white.opacity(0.6)
                                .blur(radius: 10)
                                .background(Material.ultraThinMaterial)
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(color: Color.black.opacity(0.2), radius: 8, x: 0, y: 4)
                        .padding(.horizontal, 20)
                        .transition(.move(edge: .bottom).combined(with: .opacity))
                    }
                }

                // Info Pop-Up with Dynamic Content
                if showInfoPopup {
                    InfoPopupView(showInfoPopup: $showInfoPopup, selectedTab: selectedTab)
                        .transition(.opacity)
                        .animation(.easeInOut(duration: 0.3), value: showInfoPopup)
                }
            }
            .edgesIgnoringSafeArea(.bottom)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        }
    }
}

// info
struct InfoPopupView: View {
    @Binding var showInfoPopup: Bool
    let selectedTab: Int

    var title: String {
        switch selectedTab {
        case 1: return "How to Use the Periodic Table"
        case 2: return "Mini-Games Instructions"
        case 3: return "Formula Solver Guide"
        default: return "Information"
        }
    }

    var description: [String] {
        switch selectedTab {
        case 1:
            return [
                "Scroll to navigate the table.",
                "Pinch to Zoom for better visibility.",
                "Tap on an Element to view details."
            ]
        case 2:
            return [
                "Choose a game to test your knowledge.",
                "Follow the instructions for each game mode.",
                "Earn points by answering correctly!"
            ]
        case 3:
            return [
                "Enter equations to solve the Molar Mass of an equation.",
                "View breakdown of the solution for better understanding.",
                "View examples of equations on the bottom left corner"
            ]
        default:
            return ["No additional information available."]
        }
    }

    var body: some View {
        VStack(spacing: 15) {
            Text(title)
                .font(.title)
                .bold()
                .multilineTextAlignment(.center)
                .frame(maxWidth: 300) // Ensures wrapping

            VStack(alignment: .leading, spacing: 12) {
                ForEach(description, id: \.self) { text in
                    Label(text, systemImage: "info.circle.fill")
                }
            }
            .font(.headline)
            .foregroundColor(.gray)
            .padding()

            Button(action: {
                withAnimation(.easeInOut(duration: 0.3)) {
                    showInfoPopup = false
                }
            }) {
                Text("Got it!")
                    .bold()
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 20)
        }
        .frame(width: 350, height: 400)
        .background(Color.white.opacity(0.95))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(radius: 10)
        .scaleEffect(showInfoPopup ? 1 : 0.8)
        .opacity(showInfoPopup ? 1 : 0)
    }
}

// bottom nav tab
struct TabButton: View {
    let icon: String
    let title: String
    let index: Int
    @Binding var selectedTab: Int
    var namespace: Namespace.ID

    var isIpad: Bool {
        UIDevice.current.userInterfaceIdiom == .pad
    }

    var highlightColor: Color {
        switch index {
        case 0: return .purple
        case 1: return .green
        case 2: return .orange
        case 3: return .blue
        default: return .gray
        }
    }

    var body: some View {
        Button(action: {
            withAnimation(.spring(response: 0.4, dampingFraction: 0.6)) {
                selectedTab = index
            }
        }) {
            VStack {
                Image(systemName: icon)
                    .font(.system(size: isIpad ? 28 : 22))
                    .foregroundColor(selectedTab == index ? highlightColor : .gray)

                Text(title)
                    .font(.system(size: isIpad ? 16 : 13, weight: .bold, design: .rounded))
                    .foregroundColor(selectedTab == index ? highlightColor : .gray)
                    .multilineTextAlignment(.center)
                    .frame(minWidth: 40)
            }
            .frame(maxWidth: .infinity)
            .padding(isIpad ? 15 : 8)
            .background(selectedTab == index ? highlightColor.opacity(0.2) : Color.clear)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

#Preview {
    CustomTabView()
}
