double findBMI(height, weight) {
  double heightInMeter = height / 100;
  double bmi = weight / (heightInMeter * heightInMeter);
  return bmi;
}

String getResponse(bmi) {
  String response = "Normal Weight";
  if (bmi <= 18.5) {
    response = "UnderWeight";
  } else if (bmi > 18.5 && bmi <= 24.9) {
    response = "Normal Weight";
  } else if (bmi >= 25 && bmi <= 29.9) {
    response = "Over Weight";
  } else {
    response = "Obesity";
  }
  return response;
}
