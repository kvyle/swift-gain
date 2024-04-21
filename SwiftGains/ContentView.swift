import SwiftUI

struct ContentView: View {
    @State private var goal: String = ""
    @State private var gender: String = ""
    @State private var activityLevel: String = ""
    @State private var age: String = ""
    @State private var height: String = ""
    @State private var weight: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Text("Swift Gains")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Text("Hello! Welcome to Swift Gains. Here are some questions to tailor a personalized plan for you.")
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
                
                NavigationLink(destination: GoalSelectionView(goal: $weight, gender: $goal, activityLevel: $gender, age: $activityLevel, height: $age, weight: $height)) {
                    Text("Start")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct GoalSelectionView: View {
//    @Binding var goal: String
//    @Binding var gender: String
//    @Binding var activityLevel: String
//    @Binding var age: String
//    @Binding var height: String
//    @Binding var weight: String
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("What's your main goal?")
                .font(.title)
                .padding()
            
            HStack(spacing: 30) {
                GoalOptionView(title: "Lose Weight", selectedGoal: self.goal)
                GoalOptionView(title: "Build Muscle", selectedGoal: self.goal)
                GoalOptionView(title: "Keep Fit", selectedGoal: self.goal)
            }
            
            Spacer()
            
            NavigationLink(destination: GenderSelectionView(goal: self.weight, gender: self.goal, activityLevel: self.gender, age: self.activityLevel, height: self.age, weight: self.height)) {
                Text("Next")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}

struct GenderSelectionView: View {
    @Binding var goal: String
    @Binding var gender: String
    @Binding var activityLevel: String
    @Binding var age: String
    @Binding var height: String
    @Binding var weight: String
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("What's your gender?")
                .font(.title)
                .padding()
            
            HStack(spacing: 30) {
                GenderOptionView(title: "Male", selectedGender: $gender)
                GenderOptionView(title: "Female", selectedGender: $gender)
            }
            
            Spacer()
            
            NavigationLink(destination: ActivityLevelSelectionView(goal: $weight, gender: $goal, activityLevel: $gender, age: $activityLevel, height: $age, weight: $height)) {
                Text("Next")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}

struct ActivityLevelSelectionView: View {
    @Binding var goal: String
    @Binding var gender: String
    @Binding var activityLevel: String
    @Binding var age: String
    @Binding var height: String
    @Binding var weight: String
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("What's your activity level?")
                .font(.title)
                .padding()
            
            HStack(spacing: 30) {
                ActivityLevelOptionView(title: "Sedentary", selectedActivityLevel: $activityLevel) {
                    self.activityLevel = "Sedentary"
                }
                ActivityLevelOptionView(title: "Lightly Active", selectedActivityLevel: $activityLevel) {
                    self.activityLevel = "Lightly Active"
                }
                ActivityLevelOptionView(title: "Moderately Active", selectedActivityLevel: $activityLevel) {
                    self.activityLevel = "Moderately Active"
                }
                ActivityLevelOptionView(title: "Very Active", selectedActivityLevel: $activityLevel) {
                    self.activityLevel = "Very Active"
                }
            }
            
            
            
            Spacer()
            
            NavigationLink(destination: AgeInputView(goal: $weight, gender: $goal, activityLevel: $gender, age: $activityLevel, height: $age, weight: $height)) {
                Text("Next")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}

struct AgeInputView: View {
    @Binding var goal: String
    @Binding var gender: String
    @Binding var activityLevel: String
    @Binding var age: String
    @Binding var height: String
    @Binding var weight: String
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("What's your age?")
                .font(.title)
                .padding()
            
            TextField("Enter your age", text: $age)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Spacer()
            
            NavigationLink(destination: HeightInputView(weight: $weight, goal: $goal, gender: $gender, activityLevel: $activityLevel, age: $age, height: $height)) {
                Text("Next")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}

struct HeightInputView: View {
    @Binding var weight: String
    @Binding var goal: String
    @Binding var gender: String
    @Binding var activityLevel: String
    @Binding var age: String
    @Binding var height: String
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("What's your height?")
                .font(.title)
                .padding()
            
            TextField("Enter your height", text: $height)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Spacer()
            
            NavigationLink(destination: WeightInputView(weight: $weight, goal: $goal, gender: $gender, activityLevel: $activityLevel, age: $age, height: $height)) {
                Text("Next")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()

        }
    }
}

struct WeightInputView: View {
    @Binding var weight: String
    @Binding var goal: String
    @Binding var gender: String
    @Binding var activityLevel: String
    @Binding var age: String
    @Binding var height: String
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("What's your weight?")
                .font(.title)
                .padding()
            
            TextField("Enter your weight", text: $weight)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Spacer()
            
            NavigationLink(destination: SummaryView(
                weight: weight, goal: goal,
                gender: gender,
                activityLevel: activityLevel,
                age: age,
                height: height)) {
                Text("Next")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
        }
    }
}

struct SummaryView: View {
//    @Binding var weight: String
//    @Binding var goal: String
//    @Binding var gender: String
//    @Binding var activityLevel: String
//    @Binding var age: String
//    @Binding var height: String
    var weight: String
    var goal: String
    var gender: String
    var activityLevel: String
    var age: String
    var height: String
    
    var body: some View {
        let bmr = calculateBMR()
        let calories = calculateCalories(bmr: bmr)
        let recommendation = generateRecommendation()
        
        VStack {
            Text("Summary Page")
                .font(.title)
                .padding()
            
            Text("BMR: \(bmr)")
                .padding()
            
            Text("Calories: \(calories)")
                .padding()
            
            Text("Recommendation:, \(recommendation)")
                .padding()
            
            Spacer()
        }
    }
    
    func calculateBMR() -> Double {
        let weightDouble = Double(weight) ?? 0
        let heightDouble = Double(height) ?? 0
        let ageDouble = Double(age) ?? 0
        
        if gender == "Male" {
            return (13.397 * weightDouble) + (4.799 * heightDouble) - (5.677 * ageDouble) + 88.362
        } else {
            return (9.247 * weightDouble) + (3.098 * heightDouble) - (4.330 * ageDouble) + 447.593
        }
    }
    
    func calculateCalories(bmr: Double) -> Double {
        var activityMultiplier: Double = 1.0
        
        switch self.activityLevel {
        case "Sedentary":
            activityMultiplier = 1.2
        case "Lightly Active":
            activityMultiplier = 1.375
        case "Moderately Active":
            activityMultiplier = 1.55
        case "Very Active":
            activityMultiplier = 1.725
        default:
            break
        }
        
        return bmr * activityMultiplier
    }
    
    func generateRecommendation() -> String {
        var calories = calculateCalories(bmr: calculateBMR())
        
        switch goal {
        case "Lose Weight":
            calories -= 250
            return "Moderate exercise of any kind is recommended."
        case "Build Muscle":
            calories += 250
            return "Weight training is recommended."
        case "Keep Fit":
            calories += 100
            return "Light exercise of any kind is recommended."
        default:
            return ""
        }
    }
}


struct GoalOptionView: View {
    let title: String
    @Binding var selectedGoal: String
    
    var body: some View {
        Button(action: {
            selectedGoal = title
        }) {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(selectedGoal == title ? Color.blue : Color.gray)
                .cornerRadius(10)
        }
    }
}

struct GenderOptionView: View {
    let title: String
    @Binding var selectedGender: String
    
    var body: some View {
        Button(action: {
            selectedGender = title
        }) {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(selectedGender == title ? Color.blue : Color.gray)
                .cornerRadius(10)
        }
    }
}

struct ActivityLevelOptionView: View {
    let title: String
    @Binding var selectedActivityLevel: String
    let action: () -> Void // Closure to set the activity level
    
    var body: some View {
        Button(action: {
            action()
        }) {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(selectedActivityLevel == title ? Color.blue : Color.gray)
                .cornerRadius(10)
        }
    }
}
