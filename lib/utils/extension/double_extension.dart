extension BMICalculator on double {
  double calculateBMI(double weight) {
    if (this <= 0 || weight <= 0) return 0; // Validate inputs
    final heightInMeters = this / 100; // Convert cm to meters
    return weight / (heightInMeters * heightInMeters); // Calculate BMI
  }
}
