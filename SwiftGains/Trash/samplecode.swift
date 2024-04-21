/*import SwiftUI

struct ContentView: View {
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
                
                NavigationLink(destination: GoalSelectionView()) {
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
    @State private var selectedGoal: String? = nil
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("What's your main goal?")
                .font(.title)
                .padding()
            
            NavigationLink(destination: GenderSelectionView(selectedGender: $selectedGoal), tag: "Lose Weight", selection: $selectedGoal) {
                Button(action: {
                    selectedGoal = "Lose Weight"
                }) {
                    Text("Lose Weight")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .padding()
            
            NavigationLink(destination: GenderSelectionView(selectedGender: $selectedGoal), tag: "Build Muscle", selection: $selectedGoal) {
                Button(action: {
                    selectedGoal = "Build Muscle"
                }) {
                    Text("Build Muscle")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .padding()
            
            NavigationLink(destination: GenderSelectionView(selectedGender: $selectedGoal), tag: "Stay Fit", selection: $selectedGoal) {
                Button(action: {
                    selectedGoal = "Stay Fit"
                }) {
                    Text("Stay Fit")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .padding()
            
            Spacer()
        }
    }
}

struct GenderSelectionView: View {
    @Binding var selectedGender: String?
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("What's your gender?")
                .font(.title)
                .padding()
            
            NavigationLink(destination: AgeInputView(age: .constant("")), tag: "Male", selection: $selectedGender) {
                Button(action: {
                    selectedGender = "Male"
                }) {
                    Text("Male")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .padding()
            
            NavigationLink(destination: AgeInputView(age: .constant("")), tag: "Female", selection: $selectedGender) {
                Button(action: {
                    selectedGender = "Female"
                }) {
                    Text("Female")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .padding()
            
            Spacer()
        }
    }
}

struct AgeInputView: View {
    @Binding var age: String
    
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
            
            NavigationLink(destination: HeightInputView(height: .constant(""))) {
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
            
            NavigationLink(destination: WeightInputView(weight: .constant(""))) {
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
            
            NavigationLink(destination: ActivityLevelSelectionView(selectedActivityLevel: .constant(""))) {
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
    @Binding var selectedActivityLevel: String?
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("What's your activity level?")
                .font(.title)
                .padding()
            
            // Navigation links for each activity level button
            NavigationLink(destination: NextScreenView(), tag: "Sedentary", selection: $selectedActivityLevel) {
                Button(action: {
                    selectedActivityLevel = "Sedentary"
                }) {
                    Text("Sedentary")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .padding()
            
            NavigationLink(destination: NextScreenView(), tag: "Lightly Active", selection: $selectedActivityLevel) {
                Button(action: {
                    selectedActivityLevel = "Lightly Active"
                }) {
                    Text("Lightly Active")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .padding()
            
            NavigationLink(destination: NextScreenView(), tag: "Moderately Active", selection: $selectedActivityLevel) {
                Button(action: {
                    selectedActivityLevel = "Moderately Active"
                }) {
                    Text("Moderately Active")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .padding()
            
            NavigationLink(destination: NextScreenView(), tag: "Very Active", selection: $selectedActivityLevel) {
                Button(action: {
                    selectedActivityLevel = "Very Active"
                }) {
                    Text("Very Active")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .padding()
            
            Spacer()
        }
    }
}

struct NextScreenView: View {
    var body: some View {
        Text("Next Screen")
            .font(.title)
            .padding()
    }
}

struct SummaryView: View {
    let gender: Gender
    let age: Int
    let weight: Double
    let height: Double
    let activityLevel: ActivityLevel
    let mainGoal: MainGoal
    
    var body: some View {
        let bmr = calculateBMR()
        let calories = calculateCalories(bmr: bmr)
        let adjustedCalories = adjustCalories(calories: calories)
        
        VStack {
            Text("Summary")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Text("Your calculated BMR is \(Int(bmr))")
                .padding()
            
            Text("Your recommended daily calorie intake is \(Int(adjustedCalories))")
                .padding()
            
            Text(recommendExercise())
                .padding()
        }
    }
    
    func calculateBMR() -> Double {
        if gender == .male {
            return (13.397 * weight) + (4.799 * height) - (5.677 * Double(age)) + 88.362
        } else {
            return (9.247 * weight) + (3.098 * height) - (4.330 * Double(age)) + 447.593
        }
    }
    
    func calculateCalories(bmr: Double) -> Double {
        switch activityLevel {
        case .sedentary: return bmr * 1.2
        case .lightlyActive: return bmr * 1.375
        case .moderatelyActive: return bmr * 1.55
        case .veryActive: return bmr * 1.725
        }
    }
    
    func adjustCalories(calories: Double) -> Double {
        switch mainGoal {
        case .loseWeight: return calories - 250
        case .buildMuscle: return calories + 250
        case .keepFit: return calories + 100
        }
    }
    
    func recommendExercise() -> String {
        switch mainGoal {
        case .loseWeight: return "Moderate exercise of any kind is recommended."
        case .buildMuscle: return "Weight training is recommended."
        case .keepFit: return "Light exercise of any kind is recommended."
        }
    }
}

enum Gender {
    case male
    case female
}

enum ActivityLevel {
    case sedentary
    case lightlyActive
    case moderatelyActive
    case veryActive
}

enum MainGoal {
    case loseWeight
    case buildMuscle
    case keepFit
}
*/


================= 4/21/ ==================
struct ActivityLevelOptionView: View {
    let title: String
    @Binding var selectedActivityLevel: String
    
    var body: some View {
        Button(action: {
            selectedActivityLevel = title
            
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