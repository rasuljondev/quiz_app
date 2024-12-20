// For random number generation

// AdditionalQuestions model
class AdditionalQuestions {
  final String questionText;
  final List<String>? options; // Possible answers
  final String? correctAnswer; // Correct answer
  final String type; // Given time for that question
  final String passageText;
  final List<String>? answers;

  AdditionalQuestions({
    this.passageText = "",
    this.answers,
    required this.questionText,
    this.options,
    this.correctAnswer,
    required this.type,
  });
}

// List of easy, medium, and hard questions
final List<AdditionalQuestions> additonalQuestions = [
  // Easy Questions
  AdditionalQuestions(
      questionText: "What is the chemical symbol for Potassium?",
      options: ["P", "K", "Po", "Pt"],
      correctAnswer: "K",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "What is the chemical name of table salt?",
      options: [
        "Sodium chloride",
        "Potassium iodide",
        "Calcium sulfate",
        "Magnesium carbonate"
      ],
      correctAnswer: "Sodium chloride",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "What is the pH value of an acidic solution?",
      options: ["Less than 7", "Equal to 7", "Greater than 7", "Equal to 14"],
      correctAnswer: "Less than 7",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "Which gas is used in fire extinguishers?",
      options: ["Carbon dioxide", "Oxygen", "Nitrogen", "Helium"],
      correctAnswer: "Carbon dioxide",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "Which element is represented by the symbol 'Mg'?",
      options: ["Manganese", "Magnesium", "Mercury", "Molybdenum"],
      correctAnswer: "Magnesium",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "What is the chemical formula of ozone?",
      options: ["O2", "O3", "O4", "O"],
      correctAnswer: "O3",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "Which acid is found in lemons?",
      options: ["Citric acid", "Lactic acid", "Acetic acid", "Formic acid"],
      correctAnswer: "Citric acid",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "What color does phenolphthalein turn in a basic solution?",
      options: ["Red", "Pink", "Green", "Blue"],
      correctAnswer: "Pink",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "Which element is the primary component of diamonds?",
      options: ["Carbon", "Silicon", "Hydrogen", "Oxygen"],
      correctAnswer: "Carbon",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "What is the unit used to measure atomic mass?",
      options: ["Kilograms", "Grams", "Atomic mass unit", "Moles"],
      correctAnswer: "Atomic mass unit",
      type: "test"), // Easy

// Medium Questions
  AdditionalQuestions(
      questionText: "What is the molar mass of water (H2O)?",
      options: ["16 g/mol", "18 g/mol", "20 g/mol", "22 g/mol"],
      correctAnswer: "18 g/mol",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "Which element has the atomic number 26?",
      options: ["Nickel", "Iron", "Copper", "Cobalt"],
      correctAnswer: "Iron",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "What is the process of converting a liquid into a gas?",
      options: ["Condensation", "Evaporation", "Sublimation", "Precipitation"],
      correctAnswer: "Evaporation",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "What is the main ore of aluminum?",
      options: ["Bauxite", "Galena", "Hematite", "Pyrite"],
      correctAnswer: "Bauxite",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText:
          "What type of chemical reaction involves breaking down a compound into simpler substances?",
      options: ["Synthesis", "Decomposition", "Combustion", "Neutralization"],
      correctAnswer: "Decomposition",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "Which gas is produced during photosynthesis?",
      options: ["Carbon dioxide", "Oxygen", "Nitrogen", "Hydrogen"],
      correctAnswer: "Oxygen",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "What is the oxidation state of oxygen in most compounds?",
      options: ["-1", "-2", "0", "+2"],
      correctAnswer: "-2",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "Which element has the highest electronegativity?",
      options: ["Fluorine", "Oxygen", "Nitrogen", "Chlorine"],
      correctAnswer: "Fluorine",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText:
          "What is the term for the energy required to start a chemical reaction?",
      options: [
        "Activation energy",
        "Potential energy",
        "Kinetic energy",
        "Bond energy"
      ],
      correctAnswer: "Activation energy",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "What is the most abundant metal in Earth’s crust?",
      options: ["Iron", "Aluminum", "Calcium", "Magnesium"],
      correctAnswer: "Aluminum",
      type: "test"), // Medium

// Additional Easy and Medium Questions
  AdditionalQuestions(
      questionText: "Which gas is known as laughing gas?",
      options: [
        "Nitric oxide",
        "Nitrous oxide",
        "Carbon dioxide",
        "Hydrogen sulfide"
      ],
      correctAnswer: "Nitrous oxide",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "What is the chemical formula of sulfur dioxide?",
      options: ["SO2", "SO3", "H2SO4", "HSO4"],
      correctAnswer: "SO2",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "Which element is used in making semiconductor devices?",
      options: ["Silicon", "Gold", "Iron", "Silver"],
      correctAnswer: "Silicon",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "What is the term for the smallest particle of an element?",
      options: ["Molecule", "Atom", "Compound", "Ion"],
      correctAnswer: "Atom",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "Which acid is used in the manufacture of fertilizers?",
      options: [
        "Phosphoric acid",
        "Acetic acid",
        "Formic acid",
        "Carbonic acid"
      ],
      correctAnswer: "Phosphoric acid",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "What is the chemical formula for ethanol?",
      options: ["C2H6O", "C2H5OH", "C3H8", "C2H4"],
      correctAnswer: "C2H5OH",
      type: "test"), // Medium

  // Easy Questions
  AdditionalQuestions(
      questionText: "What is the symbol for the element Gold?",
      options: ["Go", "Au", "Ag", "Gd"],
      correctAnswer: "Au",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText:
          "What type of gas is commonly used in balloons to make them float?",
      options: ["Oxygen", "Helium", "Nitrogen", "Hydrogen"],
      correctAnswer: "Helium",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "What does the term 'H2O' refer to?",
      options: ["Oxygen", "Water", "Hydrogen Peroxide", "Hydroxide"],
      correctAnswer: "Water",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "Which planet’s atmosphere is mostly carbon dioxide?",
      options: ["Earth", "Venus", "Mars", "Jupiter"],
      correctAnswer: "Venus",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "Which element is liquid at room temperature?",
      options: ["Mercury", "Iron", "Zinc", "Aluminum"],
      correctAnswer: "Mercury",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "What is the main component of limestone?",
      options: [
        "Calcium carbonate",
        "Sodium chloride",
        "Potassium hydroxide",
        "Silicon dioxide"
      ],
      correctAnswer: "Calcium carbonate",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "Which element is known as the lightest metal?",
      options: ["Lithium", "Magnesium", "Aluminum", "Sodium"],
      correctAnswer: "Lithium",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "Which gas is used in the manufacturing of ammonia?",
      options: ["Hydrogen", "Oxygen", "Carbon dioxide", "Nitrogen"],
      correctAnswer: "Hydrogen",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "Which acid is used in car batteries?",
      options: [
        "Sulfuric acid",
        "Nitric acid",
        "Acetic acid",
        "Phosphoric acid"
      ],
      correctAnswer: "Sulfuric acid",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "What color does litmus paper turn in an acidic solution?",
      options: ["Blue", "Red", "Green", "Purple"],
      correctAnswer: "Red",
      type: "test"), // Easy

// Medium Questions
  AdditionalQuestions(
      questionText: "Which type of radiation is the most penetrating?",
      options: ["Alpha", "Beta", "Gamma", "Neutron"],
      correctAnswer: "Gamma",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "What is the term for a reaction that releases heat?",
      options: ["Endothermic", "Exothermic", "Neutralization", "Electrolysis"],
      correctAnswer: "Exothermic",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "Which compound is commonly known as quicklime?",
      options: [
        "Calcium hydroxide",
        "Calcium oxide",
        "Calcium carbonate",
        "Calcium sulfate"
      ],
      correctAnswer: "Calcium oxide",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "What is the chemical name for rust?",
      options: [
        "Iron sulfate",
        "Iron oxide",
        "Iron hydroxide",
        "Iron carbonate"
      ],
      correctAnswer: "Iron oxide",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText:
          "Which chemical law states that mass is conserved in a chemical reaction?",
      options: [
        "Law of Conservation of Energy",
        "Law of Conservation of Mass",
        "Law of Definite Proportions",
        "Avogadro's Law"
      ],
      correctAnswer: "Law of Conservation of Mass",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText:
          "What is the term for a mixture where the components are not uniform?",
      options: ["Homogeneous", "Heterogeneous", "Solution", "Colloid"],
      correctAnswer: "Heterogeneous",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "What is the chemical formula of sulfuric acid?",
      options: ["H2SO4", "HCl", "HNO3", "H2CO3"],
      correctAnswer: "H2SO4",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "What is Avogadro’s number?",
      options: ["6.022 x 10^23", "9.81 x 10^9", "3.14", "1.62 x 10^-19"],
      correctAnswer: "6.022 x 10^23",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText:
          "What is the process of purifying a liquid by heating and cooling called?",
      options: ["Filtration", "Distillation", "Evaporation", "Sublimation"],
      correctAnswer: "Distillation",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "What type of bond is formed between two nonmetal atoms?",
      options: ["Ionic", "Covalent", "Metallic", "Hydrogen"],
      correctAnswer: "Covalent",
      type: "test"), // Medium

  // Easy Questions
  AdditionalQuestions(
      questionText: "What is the chemical formula for common baking soda?",
      options: ["NaCl", "NaHCO3", "CaCO3", "KOH"],
      correctAnswer: "NaHCO3",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "Which element is represented by the symbol 'Fe'?",
      options: ["Iron", "Fluorine", "Fermium", "Francium"],
      correctAnswer: "Iron",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText:
          "What is the primary gas found in the bubbles of a fizzy drink?",
      options: ["Oxygen", "Carbon dioxide", "Nitrogen", "Methane"],
      correctAnswer: "Carbon dioxide",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "What is the common use of calcium carbonate?",
      options: ["Toothpaste", "Chalk", "Vinegar", "Fertilizer"],
      correctAnswer: "Chalk",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "What is the chemical symbol for Helium?",
      options: ["H", "He", "Hi", "Hm"],
      correctAnswer: "He",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "What is the main gas in LPG (liquefied petroleum gas)?",
      options: ["Propane", "Methane", "Butane", "Hydrogen"],
      correctAnswer: "Propane",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "Which acid is present in the human stomach?",
      options: [
        "Sulfuric acid",
        "Hydrochloric acid",
        "Nitric acid",
        "Acetic acid"
      ],
      correctAnswer: "Hydrochloric acid",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "Which element is commonly used in thermometers?",
      options: ["Mercury", "Lead", "Zinc", "Silver"],
      correctAnswer: "Mercury",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "What is the chemical formula of methane?",
      options: ["CH4", "C2H6", "C3H8", "C4H10"],
      correctAnswer: "CH4",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "What is the most common element in the universe?",
      options: ["Oxygen", "Hydrogen", "Helium", "Carbon"],
      correctAnswer: "Hydrogen",
      type: "test"), // Easy

// Medium Questions
  AdditionalQuestions(
      questionText:
          "Which process separates a solid from a liquid using a filter?",
      options: ["Evaporation", "Filtration", "Decantation", "Distillation"],
      correctAnswer: "Filtration",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText:
          "What type of chemical reaction involves the exchange of ions between two compounds?",
      options: ["Decomposition", "Combination", "Double displacement", "Redox"],
      correctAnswer: "Double displacement",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "Which element has the highest melting point?",
      options: ["Iron", "Tungsten", "Platinum", "Titanium"],
      correctAnswer: "Tungsten",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText:
          "What is the process called when a gas turns into a liquid?",
      options: ["Evaporation", "Condensation", "Sublimation", "Freezing"],
      correctAnswer: "Condensation",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText:
          "What is the name for a solution that resists changes in pH?",
      options: ["Acid", "Base", "Buffer", "Salt"],
      correctAnswer: "Buffer",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText:
          "What is the most reactive group of nonmetals in the periodic table?",
      options: ["Halogens", "Alkali metals", "Noble gases", "Lanthanides"],
      correctAnswer: "Halogens",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "What is the atomic number of neon?",
      options: ["8", "9", "10", "11"],
      correctAnswer: "10",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText:
          "What is the process of extracting metals from ores using electricity?",
      options: ["Smelting", "Electrolysis", "Refining", "Distillation"],
      correctAnswer: "Electrolysis",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText:
          "What type of chemical bond is formed by the transfer of electrons?",
      options: [
        "Covalent bond",
        "Ionic bond",
        "Metallic bond",
        "Hydrogen bond"
      ],
      correctAnswer: "Ionic bond",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "What is the main component of glass?",
      options: ["Silica", "Carbon", "Aluminum", "Calcium"],
      correctAnswer: "Silica",
      type: "test"), // Medium

  // Easy Questions
  AdditionalQuestions(
      questionText: "What is the common name for sodium chloride?",
      options: ["Sugar", "Salt", "Baking soda", "Vinegar"],
      correctAnswer: "Salt",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "What is the symbol for the element Oxygen?",
      options: ["O", "Ox", "Og", "On"],
      correctAnswer: "O",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "What is the physical state of water at 0°C?",
      options: ["Solid", "Liquid", "Gas", "Plasma"],
      correctAnswer: "Solid",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "What is the boiling point of water at sea level?",
      options: ["100°C", "50°C", "200°C", "0°C"],
      correctAnswer: "100°C",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "What is the main element in the air we breathe?",
      options: ["Oxygen", "Nitrogen", "Carbon Dioxide", "Hydrogen"],
      correctAnswer: "Nitrogen",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "Which element is commonly used in pencils?",
      options: ["Lead", "Graphite", "Carbon", "Iron"],
      correctAnswer: "Graphite",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "What type of charge does a proton carry?",
      options: ["Positive", "Negative", "Neutral", "Variable"],
      correctAnswer: "Positive",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "What is the chemical formula of table sugar?",
      options: ["C6H12O6", "C12H22O11", "CH4", "C2H6O"],
      correctAnswer: "C12H22O11",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "What is the primary component of diamonds?",
      options: ["Graphite", "Carbon", "Silicon", "Quartz"],
      correctAnswer: "Carbon",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "Which metal is the best conductor of electricity?",
      options: ["Gold", "Copper", "Silver", "Aluminum"],
      correctAnswer: "Silver",
      type: "test"), // Easy

// Medium Questions
  AdditionalQuestions(
      questionText: "Which element is known as the 'King of Chemicals'?",
      options: ["Sulfur", "Hydrogen", "Chlorine", "Ammonia"],
      correctAnswer: "Sulfur",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "What is the term for a reaction that absorbs heat?",
      options: ["Exothermic", "Endothermic", "Combustion", "Sublimation"],
      correctAnswer: "Endothermic",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "Which gas is known as laughing gas?",
      options: ["Nitrogen dioxide", "Nitric oxide", "Nitrous oxide", "Ammonia"],
      correctAnswer: "Nitrous oxide",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "What is the main chemical component of vinegar?",
      options: ["Acetic acid", "Citric acid", "Lactic acid", "Sulfuric acid"],
      correctAnswer: "Acetic acid",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "What is the pH of a neutral solution?",
      options: ["7", "0", "14", "10"],
      correctAnswer: "7",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText:
          "Which metal reacts vigorously with water to form hydrogen gas?",
      options: ["Sodium", "Iron", "Copper", "Zinc"],
      correctAnswer: "Sodium",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "What is the chemical symbol for Potassium?",
      options: ["P", "Pt", "K", "Po"],
      correctAnswer: "K",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "Which gas is produced during photosynthesis?",
      options: ["Carbon dioxide", "Nitrogen", "Oxygen", "Methane"],
      correctAnswer: "Oxygen",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "What is the term for a solid turning directly into a gas?",
      options: ["Melting", "Condensation", "Sublimation", "Evaporation"],
      correctAnswer: "Sublimation",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "What is the chemical formula for ozone?",
      options: ["O2", "O3", "O4", "O"],
      correctAnswer: "O3",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "Which element has the atomic number 1?",
      options: ["Oxygen", "Hydrogen", "Helium", "Carbon"],
      correctAnswer: "Hydrogen",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "What is the chemical formula for water?",
      options: ["H2O", "CO2", "O2", "NaCl"],
      correctAnswer: "H2O",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "What is the most abundant gas in Earth's atmosphere?",
      options: ["Oxygen", "Nitrogen", "Carbon Dioxide", "Argon"],
      correctAnswer: "Nitrogen",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "Which of the following is a halogen?",
      options: ["Chlorine", "Sulfur", "Phosphorus", "Magnesium"],
      correctAnswer: "Chlorine",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "What is the chemical symbol for Gold?",
      options: ["Ag", "Au", "Gd", "Ge"],
      correctAnswer: "Au",
      type: "test"), // Easy

  AdditionalQuestions(
      questionText: "Which acid is commonly found in lemons?",
      options: [
        "Citric acid",
        "Acetic acid",
        "Lactic acid",
        "Hydrochloric acid"
      ],
      correctAnswer: "Citric acid",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText:
          "What is the process by which plants convert sunlight into energy?",
      options: ["Respiration", "Fermentation", "Photosynthesis", "Oxidation"],
      correctAnswer: "Photosynthesis",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "Which element is liquid at room temperature?",
      options: ["Mercury", "Iron", "Aluminum", "Copper"],
      correctAnswer: "Mercury",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "What is the molar mass of carbon dioxide (CO2)?",
      options: ["12 g/mol", "32 g/mol", "44 g/mol", "28 g/mol"],
      correctAnswer: "44 g/mol",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "What is the main component of natural gas?",
      options: ["Methane", "Ethane", "Propane", "Butane"],
      correctAnswer: "Methane",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "What is the strongest type of chemical bond?",
      options: ["Ionic bond", "Covalent bond", "Hydrogen bond", "Triple bond"],
      correctAnswer: "Triple bond",
      type: "test"), // Hard

  AdditionalQuestions(
      questionText: "What is the oxidation state of sulfur in H2SO4?",
      options: ["+4", "+6", "-2", "0"],
      correctAnswer: "+6",
      type: "test"), // Hard

  AdditionalQuestions(
      questionText: "What is the Avogadro's number?",
      options: ["6.022 x 10^23", "3.14 x 10^22", "9.8 x 10^24", "1.6 x 10^-19"],
      correctAnswer: "6.022 x 10^23",
      type: "test"), // Hard

  AdditionalQuestions(
      questionText:
          "Which isotope of uranium is used as fuel in nuclear reactors?",
      options: ["U-235", "U-238", "U-234", "U-239"],
      correctAnswer: "U-235",
      type: "test"), // Hard

  AdditionalQuestions(
      questionText:
          "What is the primary type of intermolecular force in water?",
      options: [
        "Dipole-dipole",
        "London dispersion",
        "Hydrogen bonding",
        "Ionic bonding"
      ],
      correctAnswer: "Hydrogen bonding",
      type: "test"), // Hard

  AdditionalQuestions(
      questionText: "What is the chemical formula of sulfuric acid?",
      options: ["H2SO4", "HCl", "HNO3", "H3PO4"],
      correctAnswer: "H2SO4",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText: "What color does phenolphthalein turn in a basic solution?",
      options: ["Red", "Blue", "Pink", "Colorless"],
      correctAnswer: "Pink",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText:
          "What is the pH of a solution with a hydrogen ion concentration of 1 x 10^-3 M?",
      options: ["3", "7", "10", "1"],
      correctAnswer: "3",
      type: "test"), // Hard

  AdditionalQuestions(
      questionText: "Which allotrope of carbon is used as a lubricant?",
      options: ["Graphite", "Diamond", "Fullerene", "Graphene"],
      correctAnswer: "Graphite",
      type: "test"), // Medium

  AdditionalQuestions(
      questionText:
          "What is the name of the process used to extract metals from ores using heat?",
      options: ["Distillation", "Electrolysis", "Smelting", "Crystallization"],
      correctAnswer: "Smelting",
      type: "test"), // Medium
];
