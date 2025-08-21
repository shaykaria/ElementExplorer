import SwiftUI

struct ElementQuizView: View {
    @Binding var selectedGame: String?

    struct QuizQuestion {
        let question: String
        let options: [String]
        let correctAnswer: String
    }

    let questions: [QuizQuestion] = [
        QuizQuestion(question: "What is the chemical symbol for Gold?", options: ["Go", "Ag", "Au", "Gd"], correctAnswer: "Au"),
        QuizQuestion(question: "Which gas makes up most of the Earth's atmosphere?", options: ["Oxygen", "Carbon Dioxide", "Nitrogen", "Hydrogen"], correctAnswer: "Nitrogen"),
        QuizQuestion(question: "What is the lightest element?", options: ["Oxygen", "Hydrogen", "Helium", "Neon"], correctAnswer: "Hydrogen"),
        QuizQuestion(question: "Which element has the highest melting point?", options: ["Iron", "Tungsten", "Carbon", "Platinum"], correctAnswer: "Tungsten"),
        QuizQuestion(question: "What is the most abundant element in the Earth's crust?", options: ["Oxygen", "Silicon", "Aluminum", "Iron"], correctAnswer: "Oxygen"),
        QuizQuestion(question: "What is the atomic number of Carbon?", options: ["6", "8", "12", "14"], correctAnswer: "6"),
        QuizQuestion(question: "Which element is used in balloons and makes your voice sound high-pitched?", options: ["Neon", "Helium", "Oxygen", "Nitrogen"], correctAnswer: "Helium"),
        QuizQuestion(question: "Which of these elements is a noble gas?", options: ["Chlorine", "Argon", "Sodium", "Sulfur"], correctAnswer: "Argon"),
        QuizQuestion(question: "What is the chemical symbol for Mercury?", options: ["Me", "Hg", "Mr", "Mc"], correctAnswer: "Hg"),
        QuizQuestion(question: "Which metal is liquid at room temperature?", options: ["Aluminum", "Lead", "Mercury", "Iron"], correctAnswer: "Mercury"),
        QuizQuestion(question: "Which element is found in table salt?", options: ["Potassium", "Sodium", "Calcium", "Magnesium"], correctAnswer: "Sodium"),
        QuizQuestion(question: "Which element is commonly used in batteries?", options: ["Zinc", "Copper", "Lithium", "Iron"], correctAnswer: "Lithium"),
        QuizQuestion(question: "Which gas is responsible for the fizz in soft drinks?", options: ["Oxygen", "Carbon Dioxide", "Nitrogen", "Hydrogen"], correctAnswer: "Carbon Dioxide"),
        QuizQuestion(question: "What is the heaviest naturally occurring element?", options: ["Lead", "Uranium", "Plutonium", "Gold"], correctAnswer: "Uranium"),
        QuizQuestion(question: "Which element is needed for strong bones and teeth?", options: ["Iron", "Magnesium", "Calcium", "Zinc"], correctAnswer: "Calcium")
    ]

    @State private var currentQuestionIndex = 0
    @State private var selectedAnswer: String? = nil
    @State private var score = 0
    @State private var showResult = false
    @State private var quizFinished = false

    var body: some View {
        ZStack {
            Color.white.opacity(0.95)
                .ignoresSafeArea()

            VStack(spacing: 20) {
                if quizFinished {
                    VStack(spacing: 20) {
                        Text("Quiz Completed!")
                            .font(.title)
                            .bold()

                        Text("You got **\(score) out of \(questions.count)** correct!")
                            .font(.headline)
                            .multilineTextAlignment(.center)

                        Text(getPerformanceMessage())
                            .font(.subheadline)
                            .italic()
                            .foregroundColor(.gray)

                        Button("Restart Quiz") {
                            restartQuiz()
                        }
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.top, 20)

                        Button("Exit Quiz") {
                            withAnimation {
                                selectedGame = nil
                            }
                        }
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    .padding()
                } else {
                    HStack {
                        Spacer()
                        Text("\(currentQuestionIndex + 1) / \(questions.count)")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)

                    // quesiton text
                    Text("Element Quiz")
                        .font(.title)
                        .bold()

                    Text(questions[currentQuestionIndex].question)
                        .font(.headline)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30)

                    // answer choices
                    VStack(spacing: 10) {
                        ForEach(questions[currentQuestionIndex].options, id: \.self) { option in
                            Button(action: {
                                selectedAnswer = option
                                checkAnswer()
                            }) {
                                Text(option)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(selectedAnswer == option ? (option == questions[currentQuestionIndex].correctAnswer ? Color.green : Color.red) : Color.blue)
                                    .foregroundColor(.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                            .disabled(selectedAnswer != nil)
                        }
                    }
                    .padding(.horizontal, 20)

                    if showResult {
                        Button("Next Question") {
                            nextQuestion()
                        }
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.top, 20)
                    }

                    Spacer()

                    Button("Exit Quiz") {
                        withAnimation {
                            selectedGame = nil
                        }
                    }
                    .bold()
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
            .padding()
        }
    }

    func checkAnswer() {
        if selectedAnswer == questions[currentQuestionIndex].correctAnswer {
            score += 1
        }
        showResult = true
    }

    func nextQuestion() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
            selectedAnswer = nil
            showResult = false
        } else {
            quizFinished = true
        }
    }

    func restartQuiz() {
        score = 0
        currentQuestionIndex = 0
        selectedAnswer = nil
        showResult = false
        quizFinished = false
    }

    func getPerformanceMessage() -> String {
        let percentage = Double(score) / Double(questions.count) * 100
        switch percentage {
        case 90...100:
            return "Amazing! You're a chemistry expert!"
        case 70..<90:
            return "Great job! You know your elements well!"
        case 50..<70:
            return "Not bad! Keep practicing!"
        default:
            return "Keep learning! You'll get better!"
        }
    }
}

#Preview {
    ElementQuizView(selectedGame: .constant("Element Quiz"))
}
