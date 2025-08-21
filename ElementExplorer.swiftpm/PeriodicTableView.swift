//
//  PeriodicTableView.swift
//  ElementExplorer
//
//  Created by Shabinda Sarkaria on 22/1/2025.
//

import SwiftUI

struct PeriodicTableView: View {
    let periodicTable: [PeriodicElement?] = [
        // Row 1
        PeriodicElement(
            symbol: "H",
            atomicNumber: 1,
            name: "Hydrogen",
            type: .Reactive_NonMetals,
            group: 1,
            period: 1,
            atomicMass: 1.008,
            density: 0.08988, // g/L
            meltingPoint: 14.01, // Kelvin
            boilingPoint: 20.28, // Kelvin
            stateAtRoomTemp: "Gas",
            electronConfiguration: "1s¹",
            electronShells: [1],
            protons: 1,
            neutrons: 0,
            electrons: 1,
            uses: [
                "Rocket fuel",
                "Hydrogen fuel cells",
                "Water (H₂O) formation"
            ],
            funFact: "Hydrogen is the most abundant element in the universe, making up about 75% of its mass!"
        ),
        nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil,
        PeriodicElement(
            symbol: "He",
            atomicNumber: 2,
            name: "Helium",
            type: .Noble_Gases,
            group: 18,
            period: 1,
            atomicMass: 4.0026,
            density: 0.1786, // g/L
            meltingPoint: nil, // Helium does not solidify under normal pressure
            boilingPoint: 4.22, // Kelvin
            stateAtRoomTemp: "Gas",
            electronConfiguration: "1s²",
            electronShells: [2],
            protons: 2,
            neutrons: 2,
            electrons: 2,
            uses: [
                "Filling balloons",
                "Cryogenics (supercooling MRI machines)",
                "Cooling nuclear reactors"
            ],
            funFact: "Helium is the only element that remains liquid at absolute zero under normal pressure!"
        ),
        
        // Row 2
        PeriodicElement(
            symbol: "Li",
            atomicNumber: 3,
            name: "Lithium",
            type: .Alkali_Metals,
            group: 1,
            period: 2,
            atomicMass: 6.94,
            density: 0.534, // g/cm³
            meltingPoint: 453.65, // Kelvin
            boilingPoint: 1615, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[He] 2s¹",
            electronShells: [2, 1],
            protons: 3,
            neutrons: 4,
            electrons: 3,
            uses: [
                "Rechargeable lithium-ion batteries",
                "Treating bipolar disorder",
                "Aircraft and rocket alloys"
            ],
            funFact: "Lithium is the lightest metal and can float on water!"
        ),
        PeriodicElement(
            symbol: "Be",
            atomicNumber: 4,
            name: "Beryllium",
            type: .Alkaline_Earth_Metals,
            group: 2,
            period: 2,
            atomicMass: 9.0122,
            density: 1.848, // g/cm³
            meltingPoint: 1560, // Kelvin
            boilingPoint: 2742, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[He] 2s²",
            electronShells: [2, 2],
            protons: 4,
            neutrons: 5,
            electrons: 4,
            uses: [
                "Used in aerospace components",
                "X-ray windows",
                "High-performance springs"
            ],
            funFact: "Beryllium is transparent to X-rays and is used in medical imaging devices!"
        ),
        nil, nil, nil, nil, nil, nil, nil, nil, nil, nil,
        PeriodicElement(
           symbol: "B",
           atomicNumber: 5,
           name: "Boron",
           type: .Metalloids,
           group: 13,
           period: 2,
           atomicMass: 10.81,
           density: 2.34, // g/cm³
           meltingPoint: 2349, // Kelvin
           boilingPoint: 4200, // Kelvin
           stateAtRoomTemp: "Solid",
           electronConfiguration: "[He] 2s² 2p¹",
           electronShells:  [2, 3],
           protons: 5,
           neutrons: 6,
           electrons: 5,
           uses: [
               "Used in borosilicate glass (heat-resistant glass)",
               "Component in detergents and bleaches",
               "Used in armor and bulletproof vests"
           ],
           funFact: "Boron is essential for plant growth and helps strengthen bones in humans!"),
        PeriodicElement(
            symbol: "C",
            atomicNumber: 6,
            name: "Carbon",
            type: .Reactive_NonMetals,
            group: 14,
            period: 2,
            atomicMass: 12.011,
            density: 2.267, // g/cm³ (diamond)
            meltingPoint: 3915, // Kelvin
            boilingPoint: 4300, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[He] 2s² 2p²",
            electronShells:  [2, 4],
            protons: 6,
            neutrons: 6,
            electrons: 6,
            uses: [
                "Forms the basis of all known life",
                "Used in diamonds and graphite",
                "Essential for steel manufacturing"
            ],
            funFact: "Carbon is the only element that can form an almost unlimited number of compounds!"
        ),
        PeriodicElement(
            symbol: "N",
            atomicNumber: 7,
            name: "Nitrogen",
            type: .Reactive_NonMetals,
            group: 15,
            period: 2,
            atomicMass: 14.007,
            density: 1.251, // g/L at STP
            meltingPoint: 63.15, // Kelvin
            boilingPoint: 77.36, // Kelvin
            stateAtRoomTemp: "Gas",
            electronConfiguration: "[He] 2s² 2p³",
            electronShells:  [2, 5],
            protons: 7,
            neutrons: 7,
            electrons: 7,
            uses: [
                "Main component of Earth's atmosphere (~78%)",
                "Used in fertilizers and explosives",
                "Essential in protein and DNA structures"
            ],
            funFact: "Liquid nitrogen is so cold it can instantly freeze objects!"
        ),
        PeriodicElement(
            symbol: "O",
            atomicNumber: 8,
            name: "Oxygen",
            type: .Reactive_NonMetals,
            group: 16,
            period: 2,
            atomicMass: 15.999,
            density: 1.429, // g/L at STP
            meltingPoint: 54.36, // Kelvin
            boilingPoint: 90.20, // Kelvin
            stateAtRoomTemp: "Gas",
            electronConfiguration: "[He] 2s² 2p⁴",
            electronShells:  [2, 6],
            protons: 8,
            neutrons: 8,
            electrons: 8,
            uses: [
                "Essential for respiration in most living organisms",
                "Used in steelmaking and welding",
                "Medical oxygen therapy"
            ],
            funFact: "Oxygen is the most abundant element in the Earth's crust!"
        ),
        PeriodicElement(
            symbol: "F",
            atomicNumber: 9,
            name: "Fluorine",
            type: .Reactive_NonMetals,
            group: 17,
            period: 2,
            atomicMass: 18.998,
            density: 1.696, // g/L at STP
            meltingPoint: 53.48, // Kelvin
            boilingPoint: 85.03, // Kelvin
            stateAtRoomTemp: "Gas",
            electronConfiguration: "[He] 2s² 2p⁵",
            electronShells:  [2, 7],
            protons: 9,
            neutrons: 10,
            electrons: 9,
            uses: [
                "Used in toothpaste to prevent cavities",
                "Essential in Teflon (non-stick cookware)",
                "Used in rocket fuel and refrigerants"
            ],
            funFact: "Fluorine is the most electronegative element and reacts with almost everything!"
        ),
        PeriodicElement(
            symbol: "Ne",
            atomicNumber: 10,
            name: "Neon",
            type: .Noble_Gases,
            group: 18,
            period: 2,
            atomicMass: 20.180,
            density: 0.9002, // g/L at STP
            meltingPoint: 24.56, // Kelvin
            boilingPoint: 27.07, // Kelvin
            stateAtRoomTemp: "Gas",
            electronConfiguration: "[He] 2s² 2p⁶",
            electronShells:  [2, 8],
            protons: 10,
            neutrons: 10,
            electrons: 10,
            uses: [
                "Used in neon signs and advertising",
                "Cooling applications in cryogenics",
                "Used in high-voltage indicators"
            ],
            funFact: "Neon glows bright red when electrified!"
        ),
        
        // Row 3
        PeriodicElement(
            symbol: "Na",
            atomicNumber: 11,
            name: "Sodium",
            type: .Alkali_Metals,
            group: 1,
            period: 3,
            atomicMass: 22.990,
            density: 0.971, // g/cm³
            meltingPoint: 370.87, // Kelvin
            boilingPoint: 1156, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Ne] 3s¹",
            electronShells:  [2, 8, 1],
            protons: 11,
            neutrons: 12,
            electrons: 11,
            uses: [
                "Essential for nerve function in the human body",
                "Used in street lamps to produce yellow light",
                "Important component in table salt (NaCl)"
            ],
            funFact: "Sodium is so reactive it must be stored in oil to prevent it from catching fire in air!"
        ),

        PeriodicElement(
            symbol: "Mg",
            atomicNumber: 12,
            name: "Magnesium",
            type: .Alkaline_Earth_Metals,
            group: 2,
            period: 3,
            atomicMass: 24.305,
            density: 1.738, // g/cm³
            meltingPoint: 923, // Kelvin
            boilingPoint: 1363, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Ne] 3s²",
            electronShells:  [2, 8, 2],
            protons: 12,
            neutrons: 12,
            electrons: 12,
            uses: [
                "Used in fireworks to produce bright white flames",
                "Vital nutrient for plant photosynthesis (chlorophyll contains magnesium)",
                "Used in lightweight metal alloys for airplanes and cars"
            ],
            funFact: "Magnesium burns so brightly it can be used as an emergency fire starter!"
        ),
        nil, nil, nil, nil, nil, nil, nil, nil, nil, nil,
        PeriodicElement(
            symbol: "Al",
            atomicNumber: 13,
            name: "Aluminium",
            type: .PostTransition_Metals,
            group: 13,
            period: 3,
            atomicMass: 26.982,
            density: 2.70, // g/cm³
            meltingPoint: 933.47, // Kelvin
            boilingPoint: 2792, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Ne] 3s² 3p¹",
            electronShells:  [2, 8, 3],
            protons: 13,
            neutrons: 14,
            electrons: 13,
            uses: [
                "Used in lightweight metal alloys for airplanes and vehicles",
                "Commonly used in cans and kitchen foil",
                "Highly resistant to corrosion due to its protective oxide layer"
            ],
            funFact: "Aluminium is the most abundant metal in Earth's crust!"
        ),

        PeriodicElement(
            symbol: "Si",
            atomicNumber: 14,
            name: "Silicon",
            type: .Metalloids,
            group: 14,
            period: 3,
            atomicMass: 28.085,
            density: 2.33, // g/cm³
            meltingPoint: 1687, // Kelvin
            boilingPoint: 3538, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Ne] 3s² 3p²",
            electronShells:  [2, 8, 4],
            protons: 14,
            neutrons: 14,
            electrons: 14,
            uses: [
                "Primary component in semiconductors and computer chips",
                "Used in glass production",
                "Major component of sand and quartz"
            ],
            funFact: "Silicon is the second most abundant element in Earth's crust after oxygen!"
        ),

        PeriodicElement(
            symbol: "P",
            atomicNumber: 15,
            name: "Phosphorus",
            type: .Reactive_NonMetals,
            group: 15,
            period: 3,
            atomicMass: 30.974,
            density: 1.82, // g/cm³
            meltingPoint: 317.3, // Kelvin (White Phosphorus)
            boilingPoint: 553.7, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Ne] 3s² 3p³",
            electronShells:  [2, 8, 5],
            protons: 15,
            neutrons: 16,
            electrons: 15,
            uses: [
                "Used in fertilizers to promote plant growth",
                "Essential element in DNA and ATP for energy transfer in cells",
                "Found in matches and fireworks"
            ],
            funFact: "White phosphorus glows in the dark and can spontaneously ignite in air!"
        ),

        PeriodicElement(
            symbol: "S",
            atomicNumber: 16,
            name: "Sulfur",
            type: .Reactive_NonMetals,
            group: 16,
            period: 3,
            atomicMass: 32.06,
            density: 2.07, // g/cm³
            meltingPoint: 388.36, // Kelvin
            boilingPoint: 717.87, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Ne] 3s² 3p⁴",
            electronShells:  [2, 8, 6
                             ],
            protons: 16,
            neutrons: 16,
            electrons: 16,
            uses: [
                "Used in sulfuric acid, one of the most important industrial chemicals",
                "Essential element in proteins and amino acids",
                "Used in gunpowder and matches"
            ],
            funFact: "Sulfur has been used since ancient times for medicinal and religious purposes!"
        ),

        PeriodicElement(
            symbol: "Cl",
            atomicNumber: 17,
            name: "Chlorine",
            type: .Reactive_NonMetals,
            group: 17,
            period: 3,
            atomicMass: 35.45,
            density: 3.21, // g/L (as a gas)
            meltingPoint: 171.6, // Kelvin
            boilingPoint: 239.11, // Kelvin
            stateAtRoomTemp: "Gas",
            electronConfiguration: "[Ne] 3s² 3p⁵",
            electronShells:  [2, 8, 7],
            protons: 17,
            neutrons: 18,
            electrons: 17,
            uses: [
                "Used to disinfect drinking water and swimming pools",
                "Main component of table salt (NaCl)",
                "Essential for the production of PVC plastic"
            ],
            funFact: "Chlorine was used as a chemical weapon in World War I but is now crucial for sanitation!"
        ),

        PeriodicElement(
            symbol: "Ar",
            atomicNumber: 18,
            name: "Argon",
            type: .Noble_Gases,
            group: 18,
            period: 3,
            atomicMass: 39.948,
            density: 1.78, // g/L (as a gas)
            meltingPoint: 83.81, // Kelvin
            boilingPoint: 87.3, // Kelvin
            stateAtRoomTemp: "Gas",
            electronConfiguration: "[Ne] 3s² 3p⁶",
            electronShells:  [2, 8, 8],
            protons: 18,
            neutrons: 22,
            electrons: 18,
            uses: [
                "Used in light bulbs to prevent filament corrosion",
                "Provides an inert atmosphere for welding",
                "Used in cryogenics due to its low boiling point"
            ],
            funFact: "Argon makes up about 1% of Earth’s atmosphere, even though it rarely reacts with anything!"
        ),
        
        // Row 4
        PeriodicElement(
            symbol: "K",
            atomicNumber: 19,
            name: "Potassium",
            type: .Alkali_Metals,
            group: 1,
            period: 4,
            atomicMass: 39.098,
            density: 0.86, // g/cm³
            meltingPoint: 336.53, // Kelvin
            boilingPoint: 1032, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Ar] 4s¹",
            electronShells:  [2, 8, 8, 1],
            protons: 19,
            neutrons: 20,
            electrons: 19,
            uses: [
                "Essential for nerve and muscle function in living organisms",
                "Used in fertilizers to promote plant growth",
                "Component in gunpowder and fireworks"
            ],
            funFact: "Potassium ignites when exposed to water!"
        ),

        PeriodicElement(
            symbol: "Ca",
            atomicNumber: 20,
            name: "Calcium",
            type: .Alkaline_Earth_Metals,
            group: 2,
            period: 4,
            atomicMass: 40.078,
            density: 1.55, // g/cm³
            meltingPoint: 1115, // Kelvin
            boilingPoint: 1757, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Ar] 4s²",
            electronShells:  [2, 8, 8, 2],
            protons: 20,
            neutrons: 20,
            electrons: 20,
            uses: [
                "Essential for strong bones and teeth",
                "Used in cement and plaster production",
                "Reduces acidity in soil for agriculture"
            ],
            funFact: "Calcium is the most abundant metal in the human body!"
        ),

        PeriodicElement(
            symbol: "Sc",
            atomicNumber: 21,
            name: "Scandium",
            type: .Transition_Metals,
            group: 3,
            period: 4,
            atomicMass: 44.956,
            density: 2.99, // g/cm³
            meltingPoint: 1814, // Kelvin
            boilingPoint: 3109, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Ar] 3d¹ 4s²",
            electronShells:  [2, 8, 9, 2],
            protons: 21,
            neutrons: 24,
            electrons: 21,
            uses: [
                "Used in aerospace components due to its light weight",
                "Strengthens aluminum alloys",
                "Used in high-intensity lamps"
            ],
            funFact: "Scandium is often found in uranium ores!"
        ),

        PeriodicElement(
            symbol: "Ti",
            atomicNumber: 22,
            name: "Titanium",
            type: .Transition_Metals,
            group: 4,
            period: 4,
            atomicMass: 47.867,
            density: 4.54, // g/cm³
            meltingPoint: 1941, // Kelvin
            boilingPoint: 3560, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Ar] 3d² 4s²",
            electronShells: [2, 8, 10, 2],
            protons: 22,
            neutrons: 26,
            electrons: 22,
            uses: [
                "Used in artificial joints and medical implants",
                "Component in aircraft and spacecraft",
                "Resistant to corrosion, even in seawater"
            ],
            funFact: "Titanium is as strong as steel but 45% lighter!"
        ),

        PeriodicElement(
            symbol: "V",
            atomicNumber: 23,
            name: "Vanadium",
            type: .Transition_Metals,
            group: 5,
            period: 4,
            atomicMass: 50.942,
            density: 6.11, // g/cm³
            meltingPoint: 2183, // Kelvin
            boilingPoint: 3680, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Ar] 3d³ 4s²",
            electronShells: [2, 8, 11, 2],
            protons: 23,
            neutrons: 28,
            electrons: 23,
            uses: [
                "Used in steel alloys for tools and buildings",
                "Important in rechargeable batteries",
                "Found in some enzymes in the human body"
            ],
            funFact: "Vanadium is named after the Norse goddess of beauty, Vanadis!"
        ),

        PeriodicElement(
            symbol: "Cr",
            atomicNumber: 24,
            name: "Chromium",
            type: .Transition_Metals,
            group: 6,
            period: 4,
            atomicMass: 51.996,
            density: 7.19, // g/cm³
            meltingPoint: 2180, // Kelvin
            boilingPoint: 2944, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Ar] 3d⁵ 4s¹",
            electronShells: [2, 8, 13, 1],
            protons: 24,
            neutrons: 28,
            electrons: 24,
            uses: [
                "Used in stainless steel to prevent rust",
                "Creates bright colors in paints and glass",
                "Essential trace mineral for human metabolism"
            ],
            funFact: "The green color in emeralds comes from chromium!"
        ),
        PeriodicElement(
            symbol: "Mn",
            atomicNumber: 25,
            name: "Manganese",
            type: .Transition_Metals,
            group: 7,
            period: 4,
            atomicMass: 54.94,
            density: 7.21,
            meltingPoint: 1246,
            boilingPoint: 2061,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Ar] 3d⁵ 4s²",
            electronShells: [2, 8, 13, 2],
            protons: 25,
            neutrons: 30,
            electrons: 25,
            uses: [
                "Used in **steel production** to improve strength and durability",
                "Key component in **batteries**, including **alkaline and lithium-ion batteries**",
                "Essential for **human health**, aiding in bone formation and enzyme function",
                "Used in **aluminum alloys** to prevent corrosion"
            ],
            funFact: "Manganese is essential for **photosynthesis in plants**, making it a crucial element for Earth's oxygen supply!"
        ),

        PeriodicElement(
            symbol: "Fe",
            atomicNumber: 26,
            name: "Iron",
            type: .Transition_Metals,
            group: 8,
            period: 4,
            atomicMass: 55.845,
            density: 7.87, // g/cm³
            meltingPoint: 1811, // Kelvin
            boilingPoint: 3134, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Ar] 3d⁶ 4s²",
            electronShells: [2, 8, 14, 2],
            protons: 26,
            neutrons: 30,
            electrons: 26,
            uses: [
                "Main component in steel",
                "Used in construction and machinery",
                "Essential for transporting oxygen in blood"
            ],
            funFact: "Earth's core is mostly made of iron!"
        ),
        PeriodicElement(
            symbol: "Co",
            atomicNumber: 27,
            name: "Cobalt",
            type: .Transition_Metals,
            group: 9,
            period: 4,
            atomicMass: 58.93,
            density: 8.90,
            meltingPoint: 1495,
            boilingPoint: 2927,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Ar] 3d⁷ 4s²",
            electronShells: [2, 8, 15, 2],
            protons: 27,
            neutrons: 32,
            electrons: 27,
            uses: [
                "Key component in **rechargeable lithium-ion batteries**",
                "Used in **superalloys** for jet engines, turbines, and spacecraft",
                "Essential for **vitamin B12**, which is crucial for red blood cell production",
                "Used in **magnetic alloys** for making strong permanent magnets"
            ],
            funFact: "Cobalt was once used to create a **brilliant blue pigment** for ceramics and glass, dating back to ancient Egypt!"
        ),

        PeriodicElement(
            symbol: "Ni",
            atomicNumber: 28,
            name: "Nickel",
            type: .Transition_Metals,
            group: 10,
            period: 4,
            atomicMass: 58.693,
            density: 8.91, // g/cm³
            meltingPoint: 1728, // Kelvin
            boilingPoint: 3186, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Ar] 3d⁸ 4s²",
            electronShells: [2, 8, 16, 2],
            protons: 28,
            neutrons: 31,
            electrons: 28,
            uses: [
                "Used in coins and stainless steel",
                "Essential component in rechargeable batteries",
                "Resistant to corrosion"
            ],
            funFact: "Nickel is found in meteorites!"
        ),

        PeriodicElement(
            symbol: "Cu",
            atomicNumber: 29,
            name: "Copper",
            type: .Transition_Metals,
            group: 11,
            period: 4,
            atomicMass: 63.546,
            density: 8.96, // g/cm³
            meltingPoint: 1357.77, // Kelvin
            boilingPoint: 2835, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Ar] 3d¹⁰ 4s¹",
            electronShells: [2, 8, 18, 1],
            protons: 29,
            neutrons: 35,
            electrons: 29,
            uses: [
                "Used in electrical wiring and plumbing",
                "Component of bronze and brass alloys",
                "Antimicrobial properties make it useful in hospitals"
            ],
            funFact: "Copper was the first metal used by humans!"
        ),

        PeriodicElement(
            symbol: "Zn",
            atomicNumber: 30,
            name: "Zinc",
            type: .Transition_Metals,
            group: 12,
            period: 4,
            atomicMass: 65.38,
            density: 7.14, // g/cm³
            meltingPoint: 692.68, // Kelvin
            boilingPoint: 1180, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Ar] 3d¹⁰ 4s²",
            electronShells: [2, 8, 18, 2],
            protons: 30,
            neutrons: 35,
            electrons: 30,
            uses: [
                "Used to galvanize steel to prevent rusting",
                "Essential for immune function in the body",
                "Main component in brass"
            ],
            funFact: "Zinc deficiency can cause loss of taste and smell!"
        ),
        
        PeriodicElement(
            symbol: "Ga",
            atomicNumber: 31,
            name: "Gallium",
            type: .PostTransition_Metals,
            group: 13,
            period: 4,
            atomicMass: 69.723,
            density: 5.91, // g/cm³
            meltingPoint: 302.91, // Kelvin (30°C, near room temperature)
            boilingPoint: 2477, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Ar] 3d¹⁰ 4s² 4p¹",
            electronShells: [2, 8, 18, 3],
            protons: 31,
            neutrons: 39,
            electrons: 31,
            uses: [
                "Used in semiconductors and LEDs",
                "Essential for solar panels and high-speed electronics",
                "Used in medical imaging and thermometers"
            ],
            funFact: "Gallium melts in your hand because its melting point is just above room temperature!"
        ),

        PeriodicElement(
            symbol: "Ge",
            atomicNumber: 32,
            name: "Germanium",
            type: .Metalloids,
            group: 14,
            period: 4,
            atomicMass: 72.63,
            density: 5.32, // g/cm³
            meltingPoint: 1211.4, // Kelvin
            boilingPoint: 3106, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Ar] 3d¹⁰ 4s² 4p²",
            electronShells: [2, 8, 18, 4],
            protons: 32,
            neutrons: 41,
            electrons: 32,
            uses: [
                "Used in fiber optics and infrared optics",
                "Component in semiconductors and transistors",
                "Used in radiation detectors for space telescopes"
            ],
            funFact: "Germanium was predicted by Dmitri Mendeleev before it was discovered!"
        ),

        PeriodicElement(
            symbol: "As",
            atomicNumber: 33,
            name: "Arsenic",
            type: .Metalloids,
            group: 15,
            period: 4,
            atomicMass: 74.922,
            density: 5.73, // g/cm³
            meltingPoint: 1090, // Kelvin (sublimates instead of melting)
            boilingPoint: 887, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Ar] 3d¹⁰ 4s² 4p³",
            electronShells: [2, 8, 18, 5],
            protons: 33,
            neutrons: 42,
            electrons: 33,
            uses: [
                "Used in insecticides and wood preservatives",
                "Component in semiconductors and LED lights",
                "Historically used as a poison"
            ],
            funFact: "Arsenic was once used in makeup, but it was highly toxic!"
        ),

        PeriodicElement(
            symbol: "Se",
            atomicNumber: 34,
            name: "Selenium",
            type: .Reactive_NonMetals,
            group: 16,
            period: 4,
            atomicMass: 78.971,
            density: 4.81, // g/cm³
            meltingPoint: 494, // Kelvin
            boilingPoint: 958, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Ar] 3d¹⁰ 4s² 4p⁴",
            electronShells: [2, 8, 18, 6],
            protons: 34,
            neutrons: 45,
            electrons: 34,
            uses: [
                "Used in photocopiers and solar cells",
                "Essential for thyroid hormone production",
                "Added to glass to remove green tints"
            ],
            funFact: "Selenium deficiency in the diet can cause health problems in humans and animals!"
        ),

        PeriodicElement(
            symbol: "Br",
            atomicNumber: 35,
            name: "Bromine",
            type: .Reactive_NonMetals,
            group: 17,
            period: 4,
            atomicMass: 79.904,
            density: 3.12, // g/cm³ (liquid)
            meltingPoint: 265.8, // Kelvin
            boilingPoint: 332, // Kelvin
            stateAtRoomTemp: "Liquid",
            electronConfiguration: "[Ar] 3d¹⁰ 4s² 4p⁵",
            electronShells: [2, 8, 18, 7],
            protons: 35,
            neutrons: 45,
            electrons: 35,
            uses: [
                "Used in flame retardants",
                "Essential in photographic films",
                "Used in disinfectants for swimming pools"
            ],
            funFact: "Bromine is one of only two elements that are liquid at room temperature!"
        ),

        PeriodicElement(
            symbol: "Kr",
            atomicNumber: 36,
            name: "Krypton",
            type: .Noble_Gases,
            group: 18,
            period: 4,
            atomicMass: 83.798,
            density: 0.00375, // g/cm³ (gas)
            meltingPoint: 115.78, // Kelvin
            boilingPoint: 119.93, // Kelvin
            stateAtRoomTemp: "Gas",
            electronConfiguration: "[Ar] 3d¹⁰ 4s² 4p⁶",
            electronShells: [2, 8, 18, 8],
            protons: 36,
            neutrons: 48,
            electrons: 36,
            uses: [
                "Used in high-intensity flash lamps and neon signs",
                "Found in some energy-efficient windows",
                "Used in MRI scans and radiation therapy"
            ],
            funFact: "Despite its name, Krypton does not give Superman powers!"
        ),
        
        //Row 5
        PeriodicElement(
            symbol: "Rb",
            atomicNumber: 37,
            name: "Rubidium",
            type: .Alkali_Metals,
            group: 1,
            period: 5,
            atomicMass: 85.468,
            density: 1.53, // g/cm³
            meltingPoint: 312.46, // Kelvin
            boilingPoint: 961, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Kr] 5s¹",
            electronShells: [2, 8, 18, 8, 1],
            protons: 37,
            neutrons: 48,
            electrons: 37,
            uses: [
                "Used in atomic clocks for precise timekeeping",
                "Component in fireworks to produce purple flames",
                "Used in medical imaging and space propulsion"
            ],
            funFact: "Rubidium is so reactive it catches fire in air!"
        ),

        PeriodicElement(
            symbol: "Sr",
            atomicNumber: 38,
            name: "Strontium",
            type: .Alkaline_Earth_Metals,
            group: 2,
            period: 5,
            atomicMass: 87.62,
            density: 2.64, // g/cm³
            meltingPoint: 1050, // Kelvin
            boilingPoint: 1655, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Kr] 5s²",
            electronShells: [2, 8, 18, 8, 2],
            protons: 38,
            neutrons: 50,
            electrons: 38,
            uses: [
                "Used in red fireworks and flares",
                "Component in phosphorescent paints and glow-in-the-dark materials",
                "Strontium-90 is used in cancer treatments"
            ],
            funFact: "Strontium gives fireworks their bright red color!"
        ),

        PeriodicElement(
            symbol: "Y",
            atomicNumber: 39,
            name: "Yttrium",
            type: .Transition_Metals,
            group: 3,
            period: 5,
            atomicMass: 88.905,
            density: 4.47, // g/cm³
            meltingPoint: 1799, // Kelvin
            boilingPoint: 3609, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Kr] 4d¹ 5s²",
            electronShells: [2, 8, 18, 9, 2],
            protons: 39,
            neutrons: 50,
            electrons: 39,
            uses: [
                "Used in LED screens and lasers",
                "Component in superconductors",
                "Strengthens aluminum and magnesium alloys"
            ],
            funFact: "Yttrium is named after the Swedish village 'Ytterby'!"
        ),

        PeriodicElement(
            symbol: "Zr",
            atomicNumber: 40,
            name: "Zirconium",
            type: .Transition_Metals,
            group: 4,
            period: 5,
            atomicMass: 91.224,
            density: 6.52, // g/cm³
            meltingPoint: 2128, // Kelvin
            boilingPoint: 4650, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Kr] 4d² 5s²",
            electronShells: [2, 8, 18, 10, 2],
            protons: 40,
            neutrons: 51,
            electrons: 40,
            uses: [
                "Used in nuclear reactors due to its corrosion resistance",
                "Main component in artificial gemstones like cubic zirconia",
                "Used in surgical instruments and implants"
            ],
            funFact: "Zirconium resists corrosion, making it perfect for nuclear reactors!"
        ),

        PeriodicElement(
            symbol: "Nb",
            atomicNumber: 41,
            name: "Niobium",
            type: .Transition_Metals,
            group: 5,
            period: 5,
            atomicMass: 92.906,
            density: 8.57, // g/cm³
            meltingPoint: 2750, // Kelvin
            boilingPoint: 5017, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Kr] 4d⁴ 5s¹",
            electronShells: [2, 8, 18, 11, 2],
            protons: 41,
            neutrons: 52,
            electrons: 41,
            uses: [
                "Used in superconducting magnets for MRI machines",
                "Component in jet engines and rockets",
                "Strengthens steel in pipelines and buildings"
            ],
            funFact: "Niobium is named after Niobe, a figure from Greek mythology!"
        ),

        PeriodicElement(
            symbol: "Mo",
            atomicNumber: 42,
            name: "Molybdenum",
            type: .Transition_Metals,
            group: 6,
            period: 5,
            atomicMass: 95.95,
            density: 10.22, // g/cm³
            meltingPoint: 2896, // Kelvin
            boilingPoint: 4912, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Kr] 4d⁵ 5s¹",
            electronShells: [2, 8, 18, 13, 1],
            protons: 42,
            neutrons: 54,
            electrons: 42,
            uses: [
                "Used in high-strength steel for construction and weapons",
                "Essential for plant enzymes and biological processes",
                "Found in lubricants for extreme conditions"
            ],
            funFact: "Molybdenum helps make steel stronger and resistant to corrosion!"
        ),

        PeriodicElement(
            symbol: "Tc",
            atomicNumber: 43,
            name: "Technetium",
            type: .Transition_Metals,
            group: 7,
            period: 5,
            atomicMass: 98,
            density: 11.5, // g/cm³
            meltingPoint: 2430, // Kelvin
            boilingPoint: 4538, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Kr] 4d⁵ 5s²",
            electronShells: [2, 8, 18, 13, 2],
            protons: 43,
            neutrons: 55,
            electrons: 43,
            uses: [
                "Used in medical imaging for bone and heart scans",
                "Aids in detecting leaks in pipelines",
                "Component in corrosion-resistant alloys"
            ],
            funFact: "Technetium is the first man-made element discovered!"
        ),

        PeriodicElement(
            symbol: "Ru",
            atomicNumber: 44,
            name: "Ruthenium",
            type: .Transition_Metals,
            group: 8,
            period: 5,
            atomicMass: 101.07,
            density: 12.1, // g/cm³
            meltingPoint: 2607, // Kelvin
            boilingPoint: 4423, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Kr] 4d⁷ 5s¹",
            electronShells: [2, 8, 18, 14, 2],
            protons: 44,
            neutrons: 57,
            electrons: 44,
            uses: [
                "Used in hard disk drives and data storage",
                "Component in jewelry and electrical contacts",
                "Plays a role in cancer treatment drugs"
            ],
            funFact: "Ruthenium is named after 'Ruthenia,' the Latin name for Russia!"
        ),

        PeriodicElement(
            symbol: "Rh",
            atomicNumber: 45,
            name: "Rhodium",
            type: .Transition_Metals,
            group: 9,
            period: 5,
            atomicMass: 102.91,
            density: 12.41, // g/cm³
            meltingPoint: 2237, // Kelvin
            boilingPoint: 3968, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Kr] 4d⁸ 5s¹",
            electronShells: [2, 8, 18, 15, 2],
            protons: 45,
            neutrons: 58,
            electrons: 45,
            uses: [
                "Used in catalytic converters to reduce car emissions",
                "Applied in high-end jewelry for a reflective finish",
                "Essential in fiber optics and optical instruments"
            ],
            funFact: "Rhodium is one of the most valuable metals on Earth!"
        ),

        PeriodicElement(
            symbol: "Pd",
            atomicNumber: 46,
            name: "Palladium",
            type: .Transition_Metals,
            group: 10,
            period: 5,
            atomicMass: 106.42,
            density: 12.02, // g/cm³
            meltingPoint: 1828, // Kelvin
            boilingPoint: 3236, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Kr] 4d¹⁰",
            electronShells: [2, 8, 18, 16, 2],
            protons: 46,
            neutrons: 60,
            electrons: 46,
            uses: [
                "Essential for catalytic converters in cars",
                "Used in hydrogen storage and purification",
                "Component in fuel cells for clean energy"
            ],
            funFact: "Palladium is used in the production of white gold jewelry!"
        ),
        PeriodicElement(
            symbol: "Ag",
            atomicNumber: 47,
            name: "Silver",
            type: .Transition_Metals,
            group: 11,
            period: 5,
            atomicMass: 107.87,
            density: 10.49, // g/cm³
            meltingPoint: 1234, // Kelvin
            boilingPoint: 2435, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Kr] 4d¹⁰ 5s¹",
            electronShells: [2, 8, 18, 18, 1],
            protons: 47,
            neutrons: 61,
            electrons: 47,
            uses: [
                "Used in jewelry and currency due to its luster",
                "Essential in electrical circuits for conductivity",
                "Antibacterial properties make it useful in medical equipment"
            ],
            funFact: "Silver is the most conductive metal, even more than copper!"
        ),

        PeriodicElement(
            symbol: "Cd",
            atomicNumber: 48,
            name: "Cadmium",
            type: .Transition_Metals,
            group: 12,
            period: 5,
            atomicMass: 112.41,
            density: 8.65, // g/cm³
            meltingPoint: 594, // Kelvin
            boilingPoint: 1040, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Kr] 4d¹⁰ 5s²",
            electronShells: [2, 8, 18, 18, 2],
            protons: 48,
            neutrons: 64,
            electrons: 48,
            uses: [
                "Used in rechargeable nickel-cadmium batteries",
                "Essential for coatings that prevent corrosion",
                "Used in solar cells for energy conversion"
            ],
            funFact: "Cadmium is toxic but useful in semiconductors and pigments!"
        ),

        PeriodicElement(
            symbol: "In",
            atomicNumber: 49,
            name: "Indium",
            type: .PostTransition_Metals,
            group: 13,
            period: 5,
            atomicMass: 114.82,
            density: 7.31, // g/cm³
            meltingPoint: 430, // Kelvin
            boilingPoint: 2345, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Kr] 4d¹⁰ 5s² 5p¹",
            electronShells: [2, 8, 18, 18, 3],
            protons: 49,
            neutrons: 66,
            electrons: 49,
            uses: [
                "Used in touchscreens and LCD displays",
                "Component in semiconductors and solar panels",
                "Helps strengthen metal alloys"
            ],
            funFact: "Indium is soft enough to be cut with a knife!"
        ),

        PeriodicElement(
            symbol: "Sn",
            atomicNumber: 50,
            name: "Tin",
            type: .PostTransition_Metals,
            group: 14,
            period: 5,
            atomicMass: 118.71,
            density: 7.31, // g/cm³
            meltingPoint: 505, // Kelvin
            boilingPoint: 2875, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Kr] 4d¹⁰ 5s² 5p²",
            electronShells: [2, 8, 18, 18, 4],
            protons: 50,
            neutrons: 69,
            electrons: 50,
            uses: [
                "Main component in solder for electronics",
                "Used to coat food cans to prevent rusting",
                "Historically used in making bronze"
            ],
            funFact: "Tin's structure makes it resistant to corrosion, perfect for food packaging!"
        ),

        PeriodicElement(
            symbol: "Sb",
            atomicNumber: 51,
            name: "Antimony",
            type: .Metalloids,
            group: 15,
            period: 5,
            atomicMass: 121.76,
            density: 6.68, // g/cm³
            meltingPoint: 903, // Kelvin
            boilingPoint: 1860, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Kr] 4d¹⁰ 5s² 5p³",
            electronShells: [2, 8, 18, 18, 5],
            protons: 51,
            neutrons: 71,
            electrons: 51,
            uses: [
                "Used in flame-retardant materials",
                "Component in semiconductors and batteries",
                "Mixed with lead to harden bullets"
            ],
            funFact: "Antimony was once used as a cosmetic in ancient Egypt!"
        ),

        PeriodicElement(
            symbol: "Te",
            atomicNumber: 52,
            name: "Tellurium",
            type: .Metalloids,
            group: 16,
            period: 5,
            atomicMass: 127.60,
            density: 6.24, // g/cm³
            meltingPoint: 722, // Kelvin
            boilingPoint: 1261, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Kr] 4d¹⁰ 5s² 5p⁴",
            electronShells: [2, 8, 18, 18, 6],
            protons: 52,
            neutrons: 76,
            electrons: 52,
            uses: [
                "Used in solar panels and semiconductors",
                "Improves the strength of lead in batteries",
                "Component in rewritable CDs and DVDs"
            ],
            funFact: "Tellurium makes your breath smell like garlic when ingested!"
        ),

        PeriodicElement(
            symbol: "I",
            atomicNumber: 53,
            name: "Iodine",
            type: .Reactive_NonMetals,
            group: 17,
            period: 5,
            atomicMass: 126.90,
            density: 4.93, // g/cm³
            meltingPoint: 386, // Kelvin
            boilingPoint: 457, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Kr] 4d¹⁰ 5s² 5p⁵",
            electronShells: [2, 8, 18, 18, 7],
            protons: 53,
            neutrons: 74,
            electrons: 53,
            uses: [
                "Essential for thyroid function in humans",
                "Used in disinfectants and medical treatments",
                "Component in X-ray contrast agents"
            ],
            funFact: "Iodine turns into a purple gas when heated!"
        ),

        PeriodicElement(
            symbol: "Xe",
            atomicNumber: 54,
            name: "Xenon",
            type: .Noble_Gases,
            group: 18,
            period: 5,
            atomicMass: 131.29,
            density: 5.89, // g/L
            meltingPoint: 161, // Kelvin
            boilingPoint: 165, // Kelvin
            stateAtRoomTemp: "Gas",
            electronConfiguration: "[Kr] 4d¹⁰ 5s² 5p⁶",
            electronShells: [2, 8, 18, 18, 8],
            protons: 54,
            neutrons: 77,
            electrons: 54,
            uses: [
                "Used in high-performance headlights and flash lamps",
                "Component in anesthesia and medical imaging",
                "Utilized in ion propulsion for spacecraft"
            ],
            funFact: "Xenon is used in plasma TVs and glow-in-the-dark applications!"
        ),
        
        // Row 6
        PeriodicElement(
            symbol: "Cs",
            atomicNumber: 55,
            name: "Caesium",
            type: .Alkali_Metals,
            group: 1,
            period: 6,
            atomicMass: 132.91,
            density: 1.93, // g/cm³
            meltingPoint: 301, // Kelvin
            boilingPoint: 944, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 6s¹",
            electronShells: [2, 8, 18, 18, 8, 1],
            protons: 55,
            neutrons: 78,
            electrons: 55,
            uses: [
                "Used in atomic clocks, the most accurate timekeeping devices",
                "Component in drilling fluids for oil extraction",
                "Employed in medical applications such as PET scans"
            ],
            funFact: "Caesium is one of the most reactive metals and explodes in water!"
        ),

        PeriodicElement(
            symbol: "Ba",
            atomicNumber: 56,
            name: "Barium",
            type: .Alkaline_Earth_Metals,
            group: 2,
            period: 6,
            atomicMass: 137.33,
            density: 3.62, // g/cm³
            meltingPoint: 1000, // Kelvin
            boilingPoint: 2118, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 6s²",
            electronShells: [2, 8, 18, 18, 8, 2],
            protons: 56,
            neutrons: 81,
            electrons: 56,
            uses: [
                "Used in X-ray imaging for gastrointestinal tests",
                "Component in fireworks to produce green colors",
                "Essential in vacuum tubes and glass manufacturing"
            ],
            funFact: "Despite being toxic in pure form, barium sulfate is safe for medical use!"
        ),

        PeriodicElement(
            symbol: "La",
            atomicNumber: 57,
            name: "Lanthanum",
            type: .Lanthanides,
            group: 3,
            period: 6,
            atomicMass: 138.91,
            density: 6.15, // g/cm³
            meltingPoint: 1193, // Kelvin
            boilingPoint: 3737, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 5d¹ 6s²",
            electronShells: [2, 8, 18, 19, 9, 2],
            protons: 57,
            neutrons: 82,
            electrons: 57,
            uses: [
                "Used in high-quality camera lenses and optical glasses",
                "Component in rechargeable nickel-metal hydride (NiMH) batteries",
                "Essential for catalysts in petroleum refining"
            ],
            funFact: "Lanthanum-based materials are used in hybrid car batteries!"
        ),

        PeriodicElement(
            symbol: "Hf",
            atomicNumber: 72,
            name: "Hafnium",
            type: .Transition_Metals,
            group: 4,
            period: 6,
            atomicMass: 178.49,
            density: 13.31, // g/cm³
            meltingPoint: 2506, // Kelvin
            boilingPoint: 4876, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f¹⁴ 5d² 6s²",
            electronShells: [2, 8, 18, 21, 8, 2],
            protons: 72,
            neutrons: 106,
            electrons: 72,
            uses: [
                "Used in nuclear control rods due to its ability to absorb neutrons",
                "Component in superalloys for jet engines",
                "Employed in semiconductor fabrication"
            ],
            funFact: "Hafnium is often found in zirconium minerals and is difficult to separate!"
        ),

        PeriodicElement(
            symbol: "Ta",
            atomicNumber: 73,
            name: "Tantalum",
            type: .Transition_Metals,
            group: 5,
            period: 6,
            atomicMass: 180.95,
            density: 16.65, // g/cm³
            meltingPoint: 3290, // Kelvin
            boilingPoint: 5731, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f¹⁴ 5d³ 6s²",
            electronShells: [2, 8, 18, 23, 8, 2],
            protons: 73,
            neutrons: 108,
            electrons: 73,
            uses: [
                "Used in capacitors for electronic devices",
                "Essential for corrosion-resistant medical implants",
                "Component in high-temperature alloys for aerospace applications"
            ],
            funFact: "Tantalum is incredibly resistant to chemical corrosion!"
        ),

        PeriodicElement(
            symbol: "W",
            atomicNumber: 74,
            name: "Tungsten",
            type: .Transition_Metals,
            group: 6,
            period: 6,
            atomicMass: 183.84,
            density: 19.25, // g/cm³
            meltingPoint: 3695, // Kelvin
            boilingPoint: 6203, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f¹⁴ 5d⁴ 6s²",
            electronShells: [2, 8, 18, 24, 8, 2],
            protons: 74,
            neutrons: 110,
            electrons: 74,
            uses: [
                "Used in incandescent light bulb filaments",
                "Essential in military-grade armor-piercing ammunition",
                "Component in superhard tools for cutting and drilling"
            ],
            funFact: "Tungsten has the highest melting point of any metal!"
        ),

        PeriodicElement(
            symbol: "Re",
            atomicNumber: 75,
            name: "Rhenium",
            type: .Transition_Metals,
            group: 7,
            period: 6,
            atomicMass: 186.21,
            density: 21.02, // g/cm³
            meltingPoint: 3459, // Kelvin
            boilingPoint: 5869, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f¹⁴ 5d⁵ 6s²",
            electronShells: [2, 8, 18, 25, 8, 2],
            protons: 75,
            neutrons: 111,
            electrons: 75,
            uses: [
                "Used in jet engine components for high heat resistance",
                "Component in catalysts for fuel refining",
                "Utilized in thermocouples for extreme temperatures"
            ],
            funFact: "Rhenium is one of the rarest elements in Earth's crust!"
        ),

        PeriodicElement(
            symbol: "Os",
            atomicNumber: 76,
            name: "Osmium",
            type: .Transition_Metals,
            group: 8,
            period: 6,
            atomicMass: 190.23,
            density: 22.59, // g/cm³
            meltingPoint: 3306, // Kelvin
            boilingPoint: 5285, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f¹⁴ 5d⁶ 6s²",
            electronShells: [2, 8, 18, 26, 8, 2],
            protons: 76,
            neutrons: 114,
            electrons: 76,
            uses: [
                "Used in high-durability fountain pen tips",
                "Component in electrical contacts for high wear resistance",
                "Employed in medical implants due to its hardness"
            ],
            funFact: "Osmium is the densest naturally occurring element!"
        ),

        PeriodicElement(
            symbol: "Ir",
            atomicNumber: 77,
            name: "Iridium",
            type: .Transition_Metals,
            group: 9,
            period: 6,
            atomicMass: 192.22,
            density: 22.56, // g/cm³
            meltingPoint: 2739, // Kelvin
            boilingPoint: 4701, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f¹⁴ 5d⁷ 6s²",
            electronShells: [2, 8, 18, 27, 8, 2],
            protons: 77,
            neutrons: 115,
            electrons: 77,
            uses: [
                "Used in spark plugs for extreme durability",
                "Component in pen tips and electrical contacts",
                "Utilized in space science for long-lasting electronics"
            ],
            funFact: "Iridium is one of the rarest elements in Earth's crust!"
        ),

        PeriodicElement(
            symbol: "Pt",
            atomicNumber: 78,
            name: "Platinum",
            type: .Transition_Metals,
            group: 10,
            period: 6,
            atomicMass: 195.08,
            density: 21.45, // g/cm³
            meltingPoint: 2041, // Kelvin
            boilingPoint: 4098, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f¹⁴ 5d⁹ 6s¹",
            electronShells: [2, 8, 18, 29, 8, 1],
            protons: 78,
            neutrons: 117,
            electrons: 78,
            uses: [
                "Used in jewelry and luxury watches",
                "Component in catalytic converters to reduce emissions",
                "Essential in medical implants due to its biocompatibility"
            ],
            funFact: "Platinum is rarer than gold and is highly corrosion-resistant!"
        ),
        PeriodicElement(
            symbol: "Au",
            atomicNumber: 79,
            name: "Gold",
            type: .Transition_Metals,
            group: 11,
            period: 6,
            atomicMass: 196.97,
            density: 19.32, // g/cm³
            meltingPoint: 1337, // Kelvin
            boilingPoint: 3243, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f¹⁴ 5d¹⁰ 6s¹",
            electronShells: [2, 8, 18, 30, 8, 1],
            protons: 79,
            neutrons: 118,
            electrons: 79,
            uses: [
                "Used in jewelry and high-end watches",
                "Essential in electronic circuits due to its conductivity",
                "Employed in space technology and satellites"
            ],
            funFact: "Gold is the most malleable and ductile metal—1 gram can be stretched into a 2 km wire!"
        ),

        PeriodicElement(
            symbol: "Hg",
            atomicNumber: 80,
            name: "Mercury",
            type: .Transition_Metals,
            group: 12,
            period: 6,
            atomicMass: 200.59,
            density: 13.53, // g/cm³
            meltingPoint: 234, // Kelvin
            boilingPoint: 630, // Kelvin
            stateAtRoomTemp: "Liquid",
            electronConfiguration: "[Xe] 4f¹⁴ 5d¹⁰ 6s²",
            electronShells: [2, 8, 18, 32, 8, 2],
            protons: 80,
            neutrons: 121,
            electrons: 80,
            uses: [
                "Used in thermometers and barometers (historically)",
                "Employed in gold mining for extraction",
                "Component in fluorescent lighting"
            ],
            funFact: "Mercury is the only metal that is liquid at room temperature!"
        ),

        PeriodicElement(
            symbol: "Tl",
            atomicNumber: 81,
            name: "Thallium",
            type: .PostTransition_Metals,
            group: 13,
            period: 6,
            atomicMass: 204.38,
            density: 11.85, // g/cm³
            meltingPoint: 577, // Kelvin
            boilingPoint: 1746, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f¹⁴ 5d¹⁰ 6s² 6p¹",
            electronShells: [2, 8, 18, 32, 9, 2],
            protons: 81,
            neutrons: 123,
            electrons: 81,
            uses: [
                "Used in low-temperature thermometers",
                "Component in infrared optical devices",
                "Historically used in rat poison (now banned)"
            ],
            funFact: "Thallium is highly toxic and was once known as the 'poisoner's poison'!"
        ),

        PeriodicElement(
            symbol: "Pb",
            atomicNumber: 82,
            name: "Lead",
            type: .PostTransition_Metals,
            group: 14,
            period: 6,
            atomicMass: 207.2,
            density: 11.34, // g/cm³
            meltingPoint: 600, // Kelvin
            boilingPoint: 2022, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f¹⁴ 5d¹⁰ 6s² 6p²",
            electronShells: [2, 8, 18, 32, 10, 2],
            protons: 82,
            neutrons: 125,
            electrons: 82,
            uses: [
                "Used in car batteries and radiation shielding",
                "Component in solder and pipes (historically)",
                "Used in protective clothing for X-ray technicians"
            ],
            funFact: "Lead poisoning from old pipes and paints caused many historical health issues!"
        ),

        PeriodicElement(
            symbol: "Bi",
            atomicNumber: 83,
            name: "Bismuth",
            type: .PostTransition_Metals,
            group: 15,
            period: 6,
            atomicMass: 208.98,
            density: 9.78, // g/cm³
            meltingPoint: 544, // Kelvin
            boilingPoint: 1837, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f¹⁴ 5d¹⁰ 6s² 6p³",
            electronShells: [2, 8, 18, 32, 11, 2],
            protons: 83,
            neutrons: 126,
            electrons: 83,
            uses: [
                "Used in cosmetics and pigments",
                "Key ingredient in Pepto-Bismol (bismuth subsalicylate)",
                "Employed as a lead substitute in bullets and solder"
            ],
            funFact: "Bismuth crystals form in a stunning rainbow pattern due to oxidation!"
        ),

        PeriodicElement(
            symbol: "Po",
            atomicNumber: 84,
            name: "Polonium",
            type: .PostTransition_Metals,
            group: 16,
            period: 6,
            atomicMass: 209,
            density: 9.32, // g/cm³
            meltingPoint: 527, // Kelvin
            boilingPoint: 1235, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f¹⁴ 5d¹⁰ 6s² 6p⁴",
            electronShells: [2, 8, 18, 32, 12, 2],
            protons: 84,
            neutrons: 125,
            electrons: 84,
            uses: [
                "Used in nuclear batteries for spacecraft",
                "Employed in anti-static brushes for photography",
                "Historically used as a poison"
            ],
            funFact: "Polonium was discovered by Marie Curie and is one of the most radioactive elements!"
        ),

        PeriodicElement(
            symbol: "At",
            atomicNumber: 85,
            name: "Astatine",
            type: .PostTransition_Metals,
            group: 17,
            period: 6,
            atomicMass: 210,
            density: nil, // Too rare to measure
            meltingPoint: 575, // Kelvin (estimated)
            boilingPoint: 610, // Kelvin (estimated)
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f¹⁴ 5d¹⁰ 6s² 6p⁵",
            electronShells: [2, 8, 18, 32, 13, 2],
            protons: 85,
            neutrons: 125,
            electrons: 85,
            uses: [
                "Used in targeted cancer treatment",
                "Research is ongoing for medical applications"
            ],
            funFact: "Astatine is one of the rarest elements on Earth, with less than a gram existing naturally!"
        ),

        PeriodicElement(
            symbol: "Rn",
            atomicNumber: 86,
            name: "Radon",
            type: .Noble_Gases,
            group: 18,
            period: 6,
            atomicMass: 222,
            density: 9.73, // g/L (gas)
            meltingPoint: 202, // Kelvin
            boilingPoint: 211, // Kelvin
            stateAtRoomTemp: "Gas",
            electronConfiguration: "[Xe] 4f¹⁴ 5d¹⁰ 6s² 6p⁶",
            electronShells: [2, 8, 18, 32, 14, 2],
            protons: 86,
            neutrons: 136,
            electrons: 86,
            uses: [
                "Used in earthquake prediction research",
                "Historically used in cancer treatment",
                "Measured in homes as a radioactive hazard"
            ],
            funFact: "Radon is a radioactive gas that seeps from the ground and can accumulate in homes!"
        ),
        
        //Row 7
        PeriodicElement(
            symbol: "Fr",
            atomicNumber: 87,
            name: "Francium",
            type: .Alkali_Metals,
            group: 1,
            period: 7,
            atomicMass: 223,
            density: nil, // Too rare to measure
            meltingPoint: 300, // Kelvin (estimated)
            boilingPoint: 950, // Kelvin (estimated)
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 7s¹",
            electronShells: [2, 8, 18, 32, 18, 8, 1],
            protons: 87,
            neutrons: 136,
            electrons: 87,
            uses: [
                "Studied in atomic physics research",
                "Used in fundamental quantum mechanics experiments"
            ],
            funFact: "Francium is **the rarest naturally occurring metal** on Earth!"
        ),

        PeriodicElement(
            symbol: "Ra",
            atomicNumber: 88,
            name: "Radium",
            type: .Alkaline_Earth_Metals,
            group: 2,
            period: 7,
            atomicMass: 226,
            density: 5.5, // g/cm³
            meltingPoint: 973, // Kelvin
            boilingPoint: 2010, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 7s²",
            electronShells: [2, 8, 18, 32, 18, 8, 2],
            protons: 88,
            neutrons: 138,
            electrons: 88,
            uses: [
                "Previously used in self-luminous paints",
                "Studied for cancer treatments",
                "Used in industrial radiation sources"
            ],
            funFact: "Radium glows in the dark, but exposure to it is **highly dangerous**!"
        ),

        PeriodicElement(
            symbol: "Ac",
            atomicNumber: 89,
            name: "Actinium",
            type: .Actinides,
            group: nil,
            period: 7,
            atomicMass: 227,
            density: 10.07, // g/cm³
            meltingPoint: 1323, // Kelvin
            boilingPoint: 3470, // Kelvin
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 6d¹ 7s²",
            electronShells: [2, 8, 18, 32, 18, 9, 2],
            protons: 89,
            neutrons: 138,
            electrons: 89,
            uses: [
                "Used in radiation therapy for cancer treatment",
                "Studied for potential use in spacecraft energy sources"
            ],
            funFact: "Actinium is so radioactive that it glows **blue in the dark**!"
        ),

        PeriodicElement(
            symbol: "Rf",
            atomicNumber: 104,
            name: "Rutherfordium",
            type: .Transition_Metals,
            group: 4,
            period: 7,
            atomicMass: 267,
            density: nil, // Too unstable to measure
            meltingPoint: nil,
            boilingPoint: nil,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f¹⁴ 6d² 7s²",
            electronShells: [2, 8, 18, 32, 10, 2],
            protons: 104,
            neutrons: 163,
            electrons: 104,
            uses: [
                "Only used in scientific research"
            ],
            funFact: "Rutherfordium is a **synthetic element** that does not exist in nature!"
        ),

        PeriodicElement(
            symbol: "Db",
            atomicNumber: 105,
            name: "Dubnium",
            type: .Transition_Metals,
            group: 5,
            period: 7,
            atomicMass: 268,
            density: nil,
            meltingPoint: nil,
            boilingPoint: nil,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f¹⁴ 6d³ 7s²",
            electronShells: [2, 8, 18, 32, 11, 2],
            protons: 105,
            neutrons: 163,
            electrons: 105,
            uses: [
                "Used in nuclear research"
            ],
            funFact: "Dubnium is named after **Dubna, Russia**, where it was discovered!"
        ),

        PeriodicElement(
            symbol: "Sg",
            atomicNumber: 106,
            name: "Seaborgium",
            type: .Transition_Metals,
            group: 6,
            period: 7,
            atomicMass: 269,
            density: nil,
            meltingPoint: nil,
            boilingPoint: nil,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f¹⁴ 6d⁴ 7s²",
            electronShells: [2, 8, 18, 32, 12, 2],
            protons: 106,
            neutrons: 163,
            electrons: 106,
            uses: [
                "Used in high-energy physics experiments"
            ],
            funFact: "Seaborgium is named after **Glenn Seaborg**, the scientist who helped discover many actinides!"
        ),

        PeriodicElement(
            symbol: "Bh",
            atomicNumber: 107,
            name: "Bohrium",
            type: .Transition_Metals,
            group: 7,
            period: 7,
            atomicMass: 270,
            density: nil,
            meltingPoint: nil,
            boilingPoint: nil,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f¹⁴ 6d⁵ 7s²",
            electronShells: [2, 8, 18, 32, 13, 2],
            protons: 107,
            neutrons: 163,
            electrons: 107,
            uses: [
                "Used in scientific research for nuclear reactions"
            ],
            funFact: "Bohrium is named after **Niels Bohr**, the famous physicist!"
        ),

        PeriodicElement(
            symbol: "Hs",
            atomicNumber: 108,
            name: "Hassium",
            type: .Transition_Metals,
            group: 8,
            period: 7,
            atomicMass: 277,
            density: nil,
            meltingPoint: nil,
            boilingPoint: nil,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f¹⁴ 6d⁶ 7s²",
            electronShells: [2, 8, 18, 32, 14, 2],
            protons: 108,
            neutrons: 169,
            electrons: 108,
            uses: [
                "Studied in nuclear chemistry research"
            ],
            funFact: "Hassium is **one of the heaviest elements ever created**!"
        ),

        PeriodicElement(
            symbol: "Mt",
            atomicNumber: 109,
            name: "Meitnerium",
            type: .Unknown_Properties,
            group: 9,
            period: 7,
            atomicMass: 278,
            density: nil,
            meltingPoint: nil,
            boilingPoint: nil,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f¹⁴ 6d⁷ 7s²",
            electronShells: [2, 8, 18, 32, 15, 2],
            protons: 109,
            neutrons: 169,
            electrons: 109,
            uses: [
                "Only used in scientific research"
            ],
            funFact: "Meitnerium is **named after Lise Meitner**, one of the discoverers of nuclear fission!"
        ),

        PeriodicElement(
            symbol: "Ds",
            atomicNumber: 110,
            name: "Darmstadtium",
            type: .Unknown_Properties,
            group: 10,
            period: 7,
            atomicMass: 281,
            density: nil,
            meltingPoint: nil,
            boilingPoint: nil,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f¹⁴ 6d⁸ 7s²",
            electronShells: [2, 8, 18, 32, 16, 2],
            protons: 110,
            neutrons: 171,
            electrons: 110,
            uses: [
                "Used in physics experiments on superheavy elements"
            ],
            funFact: "Darmstadtium is **named after Darmstadt, Germany**, where it was first synthesized!"
        ),
        PeriodicElement(
            symbol: "Rg",
            atomicNumber: 111,
            name: "Roentgenium",
            type: .Unknown_Properties,
            group: 11,
            period: 7,
            atomicMass: 282,
            density: nil,
            meltingPoint: nil,
            boilingPoint: nil,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f¹⁴ 6d⁹ 7s²",
            electronShells: [2, 8, 18, 32, 17, 2],
            protons: 111,
            neutrons: 171,
            electrons: 111,
            uses: [
                "Only used in scientific research"
            ],
            funFact: "Roentgenium is named after **Wilhelm Roentgen**, who discovered X-rays!"
        ),

        PeriodicElement(
            symbol: "Cn",
            atomicNumber: 112,
            name: "Copernicium",
            type: .Unknown_Properties,
            group: 12,
            period: 7,
            atomicMass: 285,
            density: nil,
            meltingPoint: nil,
            boilingPoint: nil,
            stateAtRoomTemp: "Liquid (Predicted)",
            electronConfiguration: "[Rn] 5f¹⁴ 6d¹⁰ 7s²",
            electronShells: [2, 8, 18, 32, 18, 2],
            protons: 112,
            neutrons: 173,
            electrons: 112,
            uses: [
                "Studied for nuclear chemistry experiments"
            ],
            funFact: "Copernicium is **named after Nicolaus Copernicus**, who formulated the heliocentric model!"
        ),

        PeriodicElement(
            symbol: "Nh",
            atomicNumber: 113,
            name: "Nihonium",
            type: .Unknown_Properties,
            group: 13,
            period: 7,
            atomicMass: 286,
            density: nil,
            meltingPoint: nil,
            boilingPoint: nil,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f¹⁴ 6d¹⁰ 7s² 7p¹",
            electronShells: [2, 8, 18, 32, 18, 3],
            protons: 113,
            neutrons: 173,
            electrons: 113,
            uses: [
                "Only used in nuclear research"
            ],
            funFact: "Nihonium was **discovered in Japan** and named after 'Nihon' (日本), meaning Japan!"
        ),

        PeriodicElement(
            symbol: "Fl",
            atomicNumber: 114,
            name: "Flerovium",
            type: .Unknown_Properties,
            group: 14,
            period: 7,
            atomicMass: 289,
            density: nil,
            meltingPoint: nil,
            boilingPoint: nil,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f¹⁴ 6d¹⁰ 7s² 7p²",
            electronShells: [2, 8, 18, 32, 18, 4],
            protons: 114,
            neutrons: 175,
            electrons: 114,
            uses: [
                "Studied for properties of superheavy elements"
            ],
            funFact: "Flerovium is named after **Georgy Flerov**, a Russian physicist!"
        ),

        PeriodicElement(
            symbol: "Mc",
            atomicNumber: 115,
            name: "Moscovium",
            type: .Unknown_Properties,
            group: 15,
            period: 7,
            atomicMass: 290,
            density: nil,
            meltingPoint: nil,
            boilingPoint: nil,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f¹⁴ 6d¹⁰ 7s² 7p³",
            electronShells: [2, 8, 18, 32, 18, 5],
            protons: 115,
            neutrons: 175,
            electrons: 115,
            uses: [
                "Used in research for theoretical element stability"
            ],
            funFact: "Moscovium was discovered in **Dubna, Russia** and named after Moscow!"
        ),

        PeriodicElement(
            symbol: "Lv",
            atomicNumber: 116,
            name: "Livermorium",
            type: .Unknown_Properties,
            group: 16,
            period: 7,
            atomicMass: 293,
            density: nil,
            meltingPoint: nil,
            boilingPoint: nil,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f¹⁴ 6d¹⁰ 7s² 7p⁴",
            electronShells: [2, 8, 18, 32, 18, 6],
            protons: 116,
            neutrons: 177,
            electrons: 116,
            uses: [
                "Studied for nuclear stability and decay"
            ],
            funFact: "Livermorium is named after **Lawrence Livermore National Laboratory** in the USA!"
        ),

        PeriodicElement(
            symbol: "Ts",
            atomicNumber: 117,
            name: "Tennessine",
            type: .Unknown_Properties,
            group: 17,
            period: 7,
            atomicMass: 294,
            density: nil,
            meltingPoint: nil,
            boilingPoint: nil,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f¹⁴ 6d¹⁰ 7s² 7p⁵",
            electronShells:  [2, 8, 18, 32, 18, 7],
            protons: 117,
            neutrons: 177,
            electrons: 117,
            uses: [
                "Only studied in theoretical chemistry"
            ],
            funFact: "Tennessine is named after **Tennessee**, USA, where Oak Ridge National Laboratory is located!"
        ),

        PeriodicElement(
            symbol: "Og",
            atomicNumber: 118,
            name: "Oganesson",
            type: .Unknown_Properties,
            group: 18,
            period: 7,
            atomicMass: 294,
            density: nil,
            meltingPoint: nil,
            boilingPoint: nil,
            stateAtRoomTemp: "Gas (Predicted)",
            electronConfiguration: "[Rn] 5f¹⁴ 6d¹⁰ 7s² 7p⁶",
            electronShells: [2, 8, 18, 32, 18, 8],
            protons: 118,
            neutrons: 176,
            electrons: 118,
            uses: [
                "Used in scientific studies of superheavy elements"
            ],
            funFact: "Oganesson is named after **Yuri Oganessian**, a Russian physicist who helped discover many superheavy elements!"
        )
,
        
        //Row 8
        nil, nil, nil,
        PeriodicElement(
            symbol: "Ce",
            atomicNumber: 58,
            name: "Cerium",
            type: .Lanthanides,
            group: nil,
            period: 6,
            atomicMass: 140.12,
            density: 6.77,
            meltingPoint: 1068,
            boilingPoint: 3716,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f¹ 6s²",
            electronShells: [2, 8, 18, 18, 9, 2],
            protons: 58,
            neutrons: 82,
            electrons: 58,
            uses: [
                "Used in catalytic converters",
                "Component in self-cleaning ovens",
                "Found in some lighter flints"
            ],
            funFact: "Cerium is named after the dwarf planet **Ceres**, discovered in 1801!"
        ),

        PeriodicElement(
            symbol: "Pr",
            atomicNumber: 59,
            name: "Praseodymium",
            type: .Lanthanides,
            group: nil,
            period: 6,
            atomicMass: 140.91,
            density: 6.77,
            meltingPoint: 931,
            boilingPoint: 3520,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f³ 6s²",
            electronShells: [2, 8, 18, 21, 8, 2],
            protons: 59,
            neutrons: 82,
            electrons: 59,
            uses: [
                "Used in aircraft engines",
                "Key component in some magnets",
                "Alloyed to strengthen metals"
            ],
            funFact: "Praseodymium is responsible for the **yellow-green color in glass and ceramics**!"
        ),

        PeriodicElement(
            symbol: "Nd",
            atomicNumber: 60,
            name: "Neodymium",
            type: .Lanthanides,
            group: nil,
            period: 6,
            atomicMass: 144.24,
            density: 7.01,
            meltingPoint: 1024,
            boilingPoint: 3074,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f⁴ 6s²",
            electronShells: [2, 8, 18, 22, 8, 2],
            protons: 60,
            neutrons: 84,
            electrons: 60,
            uses: [
                "Used in high-strength permanent magnets",
                "Crucial in wind turbines and headphones",
                "Coloring agent in glass and ceramics"
            ],
            funFact: "**Neodymium magnets** are the strongest permanent magnets known!"
        ),

        PeriodicElement(
            symbol: "Pm",
            atomicNumber: 61,
            name: "Promethium",
            type: .Lanthanides,
            group: nil,
            period: 6,
            atomicMass: 145,
            density: 7.26,
            meltingPoint: 1100,
            boilingPoint: 3000,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f⁵ 6s²",
            electronShells: [2, 8, 18, 23, 8, 2],
            protons: 61,
            neutrons: 84,
            electrons: 61,
            uses: [
                "Used in nuclear batteries for satellites",
                "Potential application in luminous paint"
            ],
            funFact: "Promethium is named after **Prometheus**, the Titan who stole fire in Greek mythology!"
        ),

        PeriodicElement(
            symbol: "Sm",
            atomicNumber: 62,
            name: "Samarium",
            type: .Lanthanides,
            group: nil,
            period: 6,
            atomicMass: 150.36,
            density: 7.52,
            meltingPoint: 1072,
            boilingPoint: 1900,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f⁶ 6s²",
            electronShells: [2, 8, 18, 24, 8, 2],
            protons: 62,
            neutrons: 88,
            electrons: 62,
            uses: [
                "Used in laser applications",
                "Component of **Samarium-Cobalt magnets**",
                "Neutron absorber in nuclear reactors"
            ],
            funFact: "Samarium is used in **high-temperature magnets**, ideal for space and military applications!"
        ),

        PeriodicElement(
            symbol: "Eu",
            atomicNumber: 63,
            name: "Europium",
            type: .Lanthanides,
            group: nil,
            period: 6,
            atomicMass: 151.96,
            density: 5.24,
            meltingPoint: 826,
            boilingPoint: 1529,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f⁷ 6s²",
            electronShells: [2, 8, 18, 25, 8, 2],
            protons: 63,
            neutrons: 89,
            electrons: 63,
            uses: [
                "Used in **TV phosphors** for red color",
                "Key element in Euro banknotes for anti-counterfeiting",
                "Component in glow-in-the-dark materials"
            ],
            funFact: "**Europium gives the red color in LED screens and televisions!**"
        ),

        PeriodicElement(
            symbol: "Gd",
            atomicNumber: 64,
            name: "Gadolinium",
            type: .Lanthanides,
            group: nil,
            period: 6,
            atomicMass: 157.25,
            density: 7.90,
            meltingPoint: 1313,
            boilingPoint: 3273,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f⁸ 6s²",
            electronShells: [2, 8, 18, 26, 8, 2],
            protons: 64,
            neutrons: 93,
            electrons: 64,
            uses: [
                "Used in **MRI contrast agents**",
                "Neutron shielding in nuclear reactors",
                "Component in some alloys and magnets"
            ],
            funFact: "**Gadolinium enhances MRI scans**, making it one of the most important medical imaging elements!"
        ),
        PeriodicElement(
            symbol: "Tb",
            atomicNumber: 65,
            name: "Terbium",
            type: .Lanthanides,
            group: nil,
            period: 6,
            atomicMass: 158.93,
            density: 8.23,
            meltingPoint: 1356,
            boilingPoint: 3230,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f⁹ 6s²",
            electronShells: [2, 8, 18, 27, 8, 2],
            protons: 65,
            neutrons: 94,
            electrons: 65,
            uses: [
                "Used in green phosphors for LED and TV screens",
                "Component in **solid-state devices**",
                "Used in fuel cells to improve efficiency"
            ],
            funFact: "Terbium’s green color is **vital for full-color TV screens and LED lighting!**"
        ),

        PeriodicElement(
            symbol: "Dy",
            atomicNumber: 66,
            name: "Dysprosium",
            type: .Lanthanides,
            group: nil,
            period: 6,
            atomicMass: 162.50,
            density: 8.55,
            meltingPoint: 1412,
            boilingPoint: 2562,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f¹⁰ 6s²",
            electronShells: [2, 8, 18, 28, 8, 2],
            protons: 66,
            neutrons: 97,
            electrons: 66,
            uses: [
                "Used in **high-strength magnets** for wind turbines",
                "Key material in nuclear reactor control rods",
                "Improves performance of magnetic storage media"
            ],
            funFact: "Dysprosium-based magnets retain **strength at high temperatures**, making them ideal for electric vehicles!"
        ),

        PeriodicElement(
            symbol: "Ho",
            atomicNumber: 67,
            name: "Holmium",
            type: .Lanthanides,
            group: nil,
            period: 6,
            atomicMass: 164.93,
            density: 8.80,
            meltingPoint: 1474,
            boilingPoint: 2700,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f¹¹ 6s²",
            electronShells: [2, 8, 18, 29, 8, 2],
            protons: 67,
            neutrons: 98,
            electrons: 67,
            uses: [
                "Used in **lasers for medical and dental applications**",
                "Neutron absorber in nuclear reactors",
                "Essential for **powerful magnets in MRI machines**"
            ],
            funFact: "Holmium has the **highest magnetic strength** of any element!"
        ),

        PeriodicElement(
            symbol: "Er",
            atomicNumber: 68,
            name: "Erbium",
            type: .Lanthanides,
            group: nil,
            period: 6,
            atomicMass: 167.26,
            density: 9.07,
            meltingPoint: 1529,
            boilingPoint: 2868,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f¹² 6s²",
            electronShells: [2, 8, 18, 30, 8, 2],
            protons: 68,
            neutrons: 99,
            electrons: 68,
            uses: [
                "Used in **fiber optic communication networks**",
                "Component in **infrared lasers** for medical treatments",
                "Alloyed with vanadium for **nuclear reactor materials**"
            ],
            funFact: "Erbium is crucial for **fiber optics, enabling high-speed internet!**"
        ),

        PeriodicElement(
            symbol: "Tm",
            atomicNumber: 69,
            name: "Thulium",
            type: .Lanthanides,
            group: nil,
            period: 6,
            atomicMass: 168.93,
            density: 9.32,
            meltingPoint: 1545,
            boilingPoint: 1950,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f¹³ 6s²",
            electronShells: [2, 8, 18, 31, 8, 2],
            protons: 69,
            neutrons: 100,
            electrons: 69,
            uses: [
                "Used in **portable X-ray machines**",
                "Component of high-temperature superconductors",
                "Used in nuclear reactors for neutron shielding"
            ],
            funFact: "Thulium is one of the **rarest and most expensive lanthanides!**"
        ),

        PeriodicElement(
            symbol: "Yb",
            atomicNumber: 70,
            name: "Ytterbium",
            type: .Lanthanides,
            group: nil,
            period: 6,
            atomicMass: 173.05,
            density: 6.90,
            meltingPoint: 819,
            boilingPoint: 1196,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f¹⁴ 6s²",
            electronShells: [2, 8, 18, 32, 8, 2],
            protons: 70,
            neutrons: 103,
            electrons: 70,
            uses: [
                "Used in **quantum computing and atomic clocks**",
                "Essential for **fiber optic lasers**",
                "Component in stress gauges for monitoring earthquakes"
            ],
            funFact: "Ytterbium is used in **next-generation quantum technology**!"
        ),

        PeriodicElement(
            symbol: "Lu",
            atomicNumber: 71,
            name: "Lutetium",
            type: .Lanthanides,
            group: nil,
            period: 6,
            atomicMass: 174.97,
            density: 9.84,
            meltingPoint: 1663,
            boilingPoint: 3402,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Xe] 4f¹⁴ 5d¹ 6s²",
            electronShells: [2, 8, 18, 32, 9, 2],
            protons: 71,
            neutrons: 104,
            electrons: 71,
            uses: [
                "Used in **PET scan detectors for cancer diagnosis**",
                "Key element in oil refining catalysts",
                "Used in next-gen radiation therapy"
            ],
            funFact: "**Lutetium is the most expensive rare earth metal!**"
        )
,
        nil,
        
        //Row 9
        nil, nil, nil,
        PeriodicElement(
            symbol: "Th",
            atomicNumber: 90,
            name: "Thorium",
            type: .Actinides,
            group: nil,
            period: 7,
            atomicMass: 232.04,
            density: 11.72,
            meltingPoint: 2023,
            boilingPoint: 5061,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 6d² 7s²",
            electronShells: [2, 8, 18, 32, 10, 2],
            protons: 90,
            neutrons: 142,
            electrons: 90,
            uses: [
                "Used in nuclear reactors as an alternative to uranium",
                "Component in high-temperature resistant materials",
                "Used in gas mantles for bright lighting"
            ],
            funFact: "Thorium-based nuclear power is **considered safer than uranium!**"
        ),

        PeriodicElement(
            symbol: "Pa",
            atomicNumber: 91,
            name: "Protactinium",
            type: .Actinides,
            group: nil,
            period: 7,
            atomicMass: 231.04,
            density: 15.37,
            meltingPoint: 1845,
            boilingPoint: 4300,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f² 6d¹ 7s²",
            electronShells: [2, 8, 18, 32, 11, 2],
            protons: 91,
            neutrons: 140,
            electrons: 91,
            uses: [
                "Mainly used for **scientific research** due to its scarcity",
                "Has applications in **nuclear fuel cycles**",
                "Used to study chemical behavior of actinides"
            ],
            funFact: "Protactinium is **one of the rarest naturally occurring elements!**"
        ),

        PeriodicElement(
            symbol: "U",
            atomicNumber: 92,
            name: "Uranium",
            type: .Actinides,
            group: nil,
            period: 7,
            atomicMass: 238.03,
            density: 18.95,
            meltingPoint: 1405,
            boilingPoint: 4131,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f³ 6d¹ 7s²",
            electronShells: [2, 8, 18, 32, 12, 2],
            protons: 92,
            neutrons: 146,
            electrons: 92,
            uses: [
                "Fuel for nuclear reactors and power plants",
                "Used in nuclear weapons",
                "Depleted uranium is used in armor-piercing military rounds"
            ],
            funFact: "Uranium was the first element used in nuclear fission, leading to the **development of atomic energy!**"
        ),

        PeriodicElement(
            symbol: "Np",
            atomicNumber: 93,
            name: "Neptunium",
            type: .Actinides,
            group: nil,
            period: 7,
            atomicMass: 237,
            density: 20.45,
            meltingPoint: 917,
            boilingPoint: 4273,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f⁴ 6d¹ 7s²",
            electronShells: [2, 8, 18, 32, 13, 2],
            protons: 93,
            neutrons: 144,
            electrons: 93,
            uses: [
                "Used in neutron detection equipment",
                "A byproduct of nuclear reactors",
                "Has applications in space exploration power sources"
            ],
            funFact: "Neptunium was the first **synthetic transuranium element discovered!**"
        ),

        PeriodicElement(
            symbol: "Pu",
            atomicNumber: 94,
            name: "Plutonium",
            type: .Actinides,
            group: nil,
            period: 7,
            atomicMass: 244,
            density: 19.86,
            meltingPoint: 912,
            boilingPoint: 3505,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f⁶ 7s²",
            electronShells: [2, 8, 18, 32, 24, 8, 2],
            protons: 94,
            neutrons: 150,
            electrons: 94,
            uses: [
                "Fuel for nuclear weapons and reactors",
                "Used in **spacecraft power sources**",
                "Medical applications in radioisotope therapy"
            ],
            funFact: "Plutonium is **named after Pluto, following Uranium (Uranus) and Neptunium (Neptune)!**"
        ),

        PeriodicElement(
            symbol: "Am",
            atomicNumber: 95,
            name: "Americium",
            type: .Actinides,
            group: nil,
            period: 7,
            atomicMass: 243,
            density: 13.69,
            meltingPoint: 1449,
            boilingPoint: 2880,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f⁷ 7s²",
            electronShells: [2, 8, 18, 32, 25, 8, 2],
            protons: 95,
            neutrons: 148,
            electrons: 95,
            uses: [
                "Used in smoke detectors",
                "Source of gamma radiation for industrial gauges",
                "Potential fuel for nuclear batteries"
            ],
            funFact: "**Your smoke detector contains Americium!**"
        ),

        PeriodicElement(
            symbol: "Cm",
            atomicNumber: 96,
            name: "Curium",
            type: .Actinides,
            group: nil,
            period: 7,
            atomicMass: 247,
            density: 13.51,
            meltingPoint: 1613,
            boilingPoint: 3383,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f⁷ 6d¹ 7s²",
            electronShells: [2, 8, 18, 32, 25, 9, 2],
            protons: 96,
            neutrons: 151,
            electrons: 96,
            uses: [
                "Power source for space probes",
                "Used in medical radiotherapy",
                "Aids in nuclear research"
            ],
            funFact: "Curium is named after **Marie and Pierre Curie, pioneers in radioactivity research!**"
        ),

        PeriodicElement(
            symbol: "Bk",
            atomicNumber: 97,
            name: "Berkelium",
            type: .Actinides,
            group: nil,
            period: 7,
            atomicMass: 247,
            density: 14.78,
            meltingPoint: 1259,
            boilingPoint: 2900,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f⁹ 7s²",
            electronShells: [2, 8, 18, 32, 27, 8, 2],
            protons: 97,
            neutrons: 150,
            electrons: 97,
            uses: [
                "Research material in nuclear chemistry",
                "Has potential uses in targeted cancer therapy"
            ],
            funFact: "Berkelium was discovered in **Berkeley, California!**"
        ),

        PeriodicElement(
            symbol: "Cf",
            atomicNumber: 98,
            name: "Californium",
            type: .Actinides,
            group: nil,
            period: 7,
            atomicMass: 251,
            density: 15.10,
            meltingPoint: 900,
            boilingPoint: 1740,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f¹⁰ 7s²",
            electronShells: [2, 8, 18, 32, 28, 8, 2],
            protons: 98,
            neutrons: 153,
            electrons: 98,
            uses: [
                "Used in neutron radiography",
                "Detects gold and silver in mining",
                "Can initiate nuclear reactions"
            ],
            funFact: "Californium is so powerful it can **ignite nuclear reactions!**"
        ),

        PeriodicElement(
            symbol: "Es",
            atomicNumber: 99,
            name: "Einsteinium",
            type: .Actinides,
            group: nil,
            period: 7,
            atomicMass: 252,
            density: 8.84,
            meltingPoint: 860,
            boilingPoint: nil,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f¹¹ 7s²",
            electronShells: [2, 8, 18, 32, 29, 8, 2],
            protons: 99,
            neutrons: 153,
            electrons: 99,
            uses: [
                "Used in **scientific research**",
                "Studies in nuclear physics"
            ],
            funFact: "Named after **Albert Einstein!**"
        ),
        PeriodicElement(
            symbol: "Fm",
            atomicNumber: 100,
            name: "Fermium",
            type: .Actinides,
            group: nil,
            period: 7,
            atomicMass: 257,
            density: nil,
            meltingPoint: 1527,
            boilingPoint: nil,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f¹² 7s²",
            electronShells: [2, 8, 18, 32, 30, 8, 2],
            protons: 100,
            neutrons: 157,
            electrons: 100,
            uses: [
                "Used in **scientific research** to study heavy elements",
                "Helps understand **nuclear reactions and synthesis**",
                "Not used commercially due to its rarity"
            ],
            funFact: "Fermium was first discovered in the aftermath of the **first hydrogen bomb test!**"
        ),

        PeriodicElement(
            symbol: "Md",
            atomicNumber: 101,
            name: "Mendelevium",
            type: .Actinides,
            group: nil,
            period: 7,
            atomicMass: 258,
            density: nil,
            meltingPoint: 1100,
            boilingPoint: nil,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f¹³ 7s²",
            electronShells: [2, 8, 18, 32, 31, 8, 2],
            protons: 101,
            neutrons: 157,
            electrons: 101,
            uses: [
                "Mainly used for **scientific study of transuranium elements**",
                "Aids research in **atomic structure and stability**"
            ],
            funFact: "Named after **Dmitri Mendeleev**, the creator of the periodic table!"
        ),

        PeriodicElement(
            symbol: "No",
            atomicNumber: 102,
            name: "Nobelium",
            type: .Actinides,
            group: nil,
            period: 7,
            atomicMass: 259,
            density: nil,
            meltingPoint: 827,
            boilingPoint: nil,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f¹⁴ 7s²",
            electronShells: [2, 8, 18, 32, 32, 8, 2],
            protons: 102,
            neutrons: 157,
            electrons: 102,
            uses: [
                "Used in **experimental physics** to explore atomic behavior",
                "No practical uses due to its **short half-life and instability**"
            ],
            funFact: "Named after **Alfred Nobel**, the inventor of dynamite and founder of the Nobel Prize!"
        ),

        PeriodicElement(
            symbol: "Lr",
            atomicNumber: 103,
            name: "Lawrencium",
            type: .Actinides,
            group: nil,
            period: 7,
            atomicMass: 266,
            density: nil,
            meltingPoint: 1627,
            boilingPoint: nil,
            stateAtRoomTemp: "Solid",
            electronConfiguration: "[Rn] 5f¹⁴ 7s² 7p¹",
            electronShells: [2, 8, 18, 32, 32, 9, 2],
            protons: 103,
            neutrons: 159,
            electrons: 103,
            uses: [
                "Studied for **understanding nuclear structure**",
                "Has no commercial applications"
            ],
            funFact: "Named after **Ernest Lawrence**, the inventor of the **cyclotron particle accelerator!**"
        ),
        nil
    ]
    
    
    @State private var zoomScale: CGFloat = 1.0
    private let minZoom: CGFloat = 0.5
    private let maxZoom: CGFloat = 5.0
    @State private var selectedElement: PeriodicElement? // for opening the detail view
    @State private var isElementTapped = false
    
    let columnCount = 18
    let rowCount = 9
    let elementSize: CGFloat = 50
    let spacing: CGFloat = 1
    
    
    var body: some View {
        GeometryReader { geometry in
            let gridWidth = CGFloat(columnCount) * (elementSize + spacing) * zoomScale
            let gridHeight = CGFloat(rowCount) * (elementSize + spacing) * zoomScale
            
            ScrollView([.horizontal, .vertical]) {
                VStack {
                    LazyVGrid(columns: Array(repeating: GridItem(.fixed(elementSize)), count: columnCount), spacing: spacing) {
                        ForEach(periodicTable.indices, id: \.self) { index in
                            if let element = periodicTable[index] {
                                ElementView(element: element, zoomScale: zoomScale, isTapped: selectedElement?.symbol == element.symbol)
                                    .onTapGesture {
                                        withAnimation(.spring(response: 0.3, dampingFraction: 0.6, blendDuration: 0)) {
                                            selectedElement = element
                                            isElementTapped = true
                                        }
                                    }
                            } else {
                                Color.clear.frame(width: elementSize, height: elementSize)
                            }
                        }
                    }
                    .frame(width: max(gridWidth * zoomScale, geometry.size.width),
                           height: max(gridHeight * zoomScale, geometry.size.height),
                           alignment: .center)
                    .scaleEffect(zoomScale)
                    .gesture(
                        MagnificationGesture()
                            .onChanged { value in
                                zoomScale = max(minZoom, min(value, maxZoom))
                            }
                    )
                }
                .padding([.leading, .trailing], 100) // prevents cropping
                .padding([.bottom, .top], 40)
                .frame(minWidth: gridWidth, minHeight: gridHeight)
                .shadow(radius: 10)
                .background(
                    Image("grid-background")
                        .resizable()
                        .scaledToFill()
                        .scaleEffect(1)
                        .ignoresSafeArea()
                )
            }
            .scrollIndicators(.hidden)
        }
        .sheet(item: $selectedElement) { element in
            ElementDetailView(element: element, dismiss: { selectedElement = nil })
        }
    }
}


struct ElementView: View {
    let element: PeriodicElement
    let zoomScale: CGFloat
    let isTapped: Bool
    
    var body: some View {
        VStack {
            if zoomScale > 1.0 {
                Text("\(element.atomicNumber)")
                    .font(.caption)
            }
            
            Text(element.symbol)
                .font(.system(size: 20, weight: .bold))
                
            if zoomScale > 1.5 {
                Text(element.name)
                    .font(.system(size: 7, weight: .heavy))
            }
        }
        .frame(width: 50, height: 50)
        .padding(5)
        .background(setColor(type: element.type), in: RoundedRectangle(cornerRadius: 2))
        .overlay(
            RoundedRectangle(cornerRadius: 2)
                .stroke(.black, lineWidth: 3)
        )
        .animation(.spring(response: 0.3, dampingFraction: 0.6, blendDuration: 0), value: isTapped)
        .zIndex(isTapped ? 10 : 1)
        .offset(y: isTapped ? -20 : 0)
    }
}

struct ElementDetailView: View {
    let element: PeriodicElement
    let dismiss: () -> Void

    var body: some View {
        VStack(spacing: 0) {
            VStack {
                HStack {
                    Spacer()
                    Button(action: dismiss) {
                        Image(systemName: "xmark.circle.fill")
                            .font(.title)
                            .foregroundColor(.blue)
                    }
                    .padding()
                }

                VStack {
                    Text("\(element.atomicNumber) - \(element.name)")
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.center) // Wraps long names properly
                    
                    Text("**Symbol:** \(element.symbol)")
                        .font(.title2)
                        .foregroundColor(.secondary)
                }
                .padding(.bottom, 20)
            }
            .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 4) // Adds shadow under title
            
            // scroll for info
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    // Electron Shell Model
                    if !element.electronShells.isEmpty {
                        ElectronShellView(electronConfiguration: element.electronShells, elementSymbol: element.symbol)
                            .padding(.bottom, 10)
                            .frame(maxWidth: .infinity, alignment: .center)
                    }

                    DetailRow(icon: "atom", label: "Electron Configuration", value: element.electronConfiguration)
                    
                    DetailRow(icon: "chart.bar.doc.horizontal", label: "Type", value: element.type.rawValue)
                    
                    if let group = element.group {
                        DetailRow(icon: "circle.grid.3x3.fill", label: "Group", value: "\(group)")
                    }
                    
                    DetailRow(icon: "tablecells.fill", label: "Period", value: "\(element.period)")
                    
                    DetailRow(icon: "scalemass", label: "Atomic Mass", value: "\(element.atomicMass) u")
                    
                    if let density = element.density {
                        DetailRow(icon: "thermometer.low", label: "Density", value: "\(density) g/cm³")
                    }
                    
                    if let meltingPoint = element.meltingPoint {
                        DetailRow(icon: "flame.fill", label: "Melting Point", value: "\(meltingPoint) K")
                    }
                    
                    if let boilingPoint = element.boilingPoint {
                        DetailRow(icon: "thermometer.sun", label: "Boiling Point", value: "\(boilingPoint) K")
                    }
                    
                    DetailRow(icon: "square.fill", label: "State at Room Temp", value: element.stateAtRoomTemp)
                    
                    DetailRow(icon: "plus.circle", label: "Protons", value: "\(element.protons)")
                    
                    if let neutrons = element.neutrons {
                        DetailRow(icon: "minus.circle", label: "Neutrons", value: "\(neutrons)")
                    }
                    
                    DetailRow(icon: "bolt.circle", label: "Electrons", value: "\(element.electrons)")
                    
                    // Uses Section
                    if !element.uses.isEmpty {
                        VStack(alignment: .leading, spacing: 8) {
                            Text(" **Uses**").font(.headline)
                            ForEach(element.uses, id: \.self) { use in
                                Text("• \(use)")
                                    .font(.body)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding(.top, 10)
                    }
                    
                    // Fun Fact
                    if !element.funFact.isEmpty {
                        Text("**Fun Fact:** \(element.funFact)")
                            .font(.headline)
                            .padding(.top, 10)
                            .foregroundColor(.blue)
                    }
                }
                .padding(.horizontal)
                .padding(.bottom, 50)
            }
            .frame(maxHeight: 800)
            .background(
                BottomShadowOverlay()
            )
        }
        .frame(maxWidth: 590)
        .background(setColor(type: element.type).opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(radius: 10)
        
    }
}

struct DetailRow: View {
    var icon: String
    var label: String
    var value: String

    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.blue)
            Text("\(label): ")
                .bold()
            Spacer()
            Text(value)
                .foregroundColor(.secondary)
        }
        .padding(.vertical, 4)
    }
}

struct BottomShadowOverlay: View {
    var body: some View {
        VStack {
            Spacer()
            LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black.opacity(0.2)]), startPoint: .top, endPoint: .bottom)
                .frame(height: 30)
        }
    }
}
 struct PeriodicElement: Identifiable {
     let id = UUID()
     let symbol: String
     let atomicNumber: Int
     let name: String
     let type: ElementType
     
     let group: Int?
     let period: Int
     let atomicMass: Double
     let density: Double?
     let meltingPoint: Double?
     let boilingPoint: Double?
     let stateAtRoomTemp: String
     let electronConfiguration: String
     let electronShells: [Int]
     let protons: Int
     let neutrons: Int?
     let electrons: Int
     let uses: [String]
     let funFact: String
 }

 func setColor(type: ElementType) -> Color {
     switch type {
     case .Alkali_Metals: return .yellow
     case .Metalloids: return .blue
     case .Actinides: return .red
     case .Alkaline_Earth_Metals: return .pink
     case .Reactive_NonMetals: return .orange
     case .Unknown_Properties: return .teal
     case .Noble_Gases: return .brown
     case .PostTransition_Metals: return .purple
     case .Lanthanides: return .green
     case .Transition_Metals: return .mint
     }
 }

 #Preview {
     PeriodicTableView()
 }
