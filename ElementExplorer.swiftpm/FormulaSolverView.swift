import SwiftUI

struct FormulaSolverView: View {
    @State private var formulaInput: String = ""
    @State private var molarMassResult: String = ""
    @State private var elementBreakdown: [(String, Double, Int)] = []
    @State private var showExamples = false
    
    var isIpad: Bool {
        UIDevice.current.userInterfaceIdiom == .pad
    }
    
    var body: some View {
        ZStack {
            
            VStack(spacing: isIpad ? 25 : 20) {
           
                Image(systemName: "atom")
                    .resizable()
                    .scaledToFit()
                    .frame(width: isIpad ? 120 : 80, height: isIpad ? 120 : 80)
                    .foregroundColor(.black)
                
            
                VStack(spacing: 5) {
                    Text("Molar Mass Calculator")
                        .font(.system(size: isIpad ? 50 : 36, weight: .bold, design: .rounded))
                        .foregroundColor(.black)
                    
                    Text("Enter a chemical formula to calculate its molar mass and element composition.")
                        .font(.system(size: isIpad ? 22 : 18, weight: .medium, design: .rounded))
                        .foregroundColor(.black.opacity(0.7))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30)
                }
                
           
                TextField("Enter Formula (e.g. H2O, CO2)", text: $formulaInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.black, lineWidth: 3)
                    )
                    .cornerRadius(12)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .font(.system(size: isIpad ? 24 : 20, weight: .medium, design: .rounded))
                    .frame(maxWidth: isIpad ? 500 : 400)
                
                
                Button(action: {
                    withAnimation {
                        (molarMassResult, elementBreakdown) = FormulaSolver.calculateMolarMass(for: formulaInput)
                    }
                }) {
                    Text("Calculate")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.black)
                        .cornerRadius(12)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.black, lineWidth: 3)
                        )
                }
                .padding(.horizontal)
                .frame(maxWidth: isIpad ? 500 : 400)

             
                if !molarMassResult.isEmpty {
                    VStack(spacing: 10) {
                        Text(molarMassResult)
                            .font(.system(size: isIpad ? 28 : 22, weight: .bold, design: .rounded))
                            .foregroundColor(.black)
                            .padding()

                        if !elementBreakdown.isEmpty {
                            VStack {
                                Text("Element Breakdown")
                                    .font(.headline)
                                    .foregroundColor(.black.opacity(0.8))

                                ForEach(elementBreakdown, id: \.0) { element, mass, count in
                                    HStack {
                                        Text("\(element) (\(count)x)")
                                            .font(.system(size: isIpad ? 20 : 18, weight: .medium, design: .rounded))
                                            .foregroundColor(.black)
                                        Spacer()
                                        Text("\(String(format: "%.2f", mass)) g/mol")
                                            .font(.system(size: isIpad ? 20 : 18, weight: .medium, design: .rounded))
                                            .foregroundColor(.black.opacity(0.9))
                                    }
                                    .padding(.horizontal, 20)
                                    .padding(.vertical, 5)
                                    .background(Color.white)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 8)
                                            .stroke(Color.black, lineWidth: 3)
                                    )
                                    .cornerRadius(8)
                                }
                            }
                            .padding(.top, 10)
                        }
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.black, lineWidth: 3)
                            )
                    )
                    .shadow(color: Color.black.opacity(0.3), radius: isIpad ? 15 : 10)
                    .padding(.horizontal)
                    .frame(maxWidth: isIpad ? 500 : 400)
                    .transition(.scale)
                }
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
            .padding()
            .background(
                        Image("grid-background") // Background Image
                            .resizable()
                            .scaledToFill()
                            .scaleEffect(2.3)
                            .ignoresSafeArea()
                    ) 
            
                       VStack {
                           Spacer()
                           HStack {
                               Button(action: {
                                   withAnimation {
                                       showExamples.toggle()
                                   }
                               }) {
                                   Circle()
                                       .fill(Color.black)
                                       .frame(width: 50, height: 50)
                                       .overlay(
                                           Text("?")
                                               .font(.title)
                                               .bold()
                                               .foregroundColor(.white)
                                       )
                                       .shadow(radius: 5)
                               }
                               .padding(.leading, 50)
                               .padding(.bottom, 30)
                               
                               Spacer()
                           }
                       }
                       
                       if showExamples {
                           VStack(spacing: 10) {
                               Text("Formula Examples")
                                   .font(.title2)
                                   .bold()
                               
                               Text("• H2O (Water)\n• CO2 (Carbon Dioxide)\n• CH4 (Methane)\n• NH3 (Ammonia)\n• NaCl (Salt)")
                                   .font(.system(size: 18))
                                   .multilineTextAlignment(.center)
                                   .padding()
                               
                               Button("Close") {
                                   withAnimation {
                                       showExamples.toggle()
                                   }
                               }
                               .font(.headline)
                               .foregroundColor(.white)
                               .padding()
                               .background(Color.black)
                               .cornerRadius(12)
                               .overlay(
                                   RoundedRectangle(cornerRadius: 12)
                                       .stroke(Color.black, lineWidth: 3)
                               )
                           }
                           .padding()
                           .frame(maxWidth: 300)
                           .background(
                               RoundedRectangle(cornerRadius: 15)
                                   .fill(Color.white)
                                   .overlay(
                                       RoundedRectangle(cornerRadius: 15)
                                           .stroke(Color.black, lineWidth: 3)
                                   )
                           )
                           .shadow(radius: 10)
                           .transition(.move(edge: .bottom))
                       }
                   }
               }
           }

class FormulaSolver {
    static let atomicMasses: [String: Double] = [
        "H": 1.008, "He": 4.0026, "Li": 6.94, "Be": 9.0122, "B": 10.81,
        "C": 12.01, "N": 14.007, "O": 16.00, "F": 18.998, "Ne": 20.180,
        "Na": 22.990, "Mg": 24.305, "Al": 26.982, "Si": 28.085, "P": 30.974,
        "S": 32.06, "Cl": 35.45, "K": 39.098, "Ca": 40.078, "Fe": 55.845,
        "Cu": 63.546, "Zn": 65.38, "Br": 79.904, "Ag": 107.87, "I": 126.90,
        "Ba": 137.33, "Hg": 200.59, "Pb": 207.2, "U": 238.03, "Th": 232.04,
        "Pa": 231.04, "Np": 237
    ]
    
    static func calculateMolarMass(for formula: String) -> (String, [(String, Double, Int)]) {
        let regex = try! NSRegularExpression(pattern: "([A-Z][a-z]?)(\\d*)")
        let matches = regex.matches(in: formula, range: NSRange(location: 0, length: formula.count))
        
        var totalMass: Double = 0.0
        var breakdown: [(String, Double, Int)] = []
        
        for match in matches {
            guard let elementRange = Range(match.range(at: 1), in: formula) else { continue }
            let element = String(formula[elementRange])
            
            let countRange = Range(match.range(at: 2), in: formula)
            let count = Int(formula[countRange!]) ?? 1
            
            if let atomicMass = atomicMasses[element] {
                let massContribution = atomicMass * Double(count)
                totalMass += massContribution
                breakdown.append((element, massContribution, count))
            } else {
                return ("Unknown element: \(element)", [])
            }
        }
        
        return ("Molar Mass: \(String(format: "%.2f", totalMass)) g/mol", breakdown)
    }
}

#Preview {
    FormulaSolverView()
}
