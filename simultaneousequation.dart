void main() {
  double a1, a2, b1, b2, c1, c2;

  // Get coefficients from user
  stdout.write("Enter the coefficient of x in equation 1 (a1): ");
  String? inputA1 = stdin.readLineSync();
  if (inputA1 != null) {
    try {
      a1 = double.parse(inputA1);
    } on FormatException {
      print("Invalid input for a1. Please enter a number.");
      return;
    }
  } else {
    print("An error occurred while reading input.");
    return;
  }

  // Similar input prompts and validations for other coefficients (a2, b1, b2, c1, c2)

  // Check for non-solvable case (determinant = 0)
  double determinant = (a1 * b2) - (a2 * b1);
  if (determinant == 0) {
    print("The equations are dependent or parallel. No unique solution exists.");
    return;
  }

  // Solve for x and y using Cramer's rule
  double x = ((b2 * c1) - (b1 * c2)) / determinant;
  double y = ((a1 * c2) - (a2 * c1)) / determinant;

  // Print the solution
  print("The solution is: x = $x, y = $y");
}

// Explanation:

// Variables: We declare variables for all coefficients (a1, a2, b1, b2, c1, c2).
// User Input:
// We use stdin.readLineSync to get user input for each coefficient with error handling using a try...catch block.
// Solvable Check:
// We calculate the determinant, which determines if the equations have a unique solution.
// If the determinant is zero, the equations are dependent or parallel, and we display an error message.
// Cramer's Rule:
// Assuming a non-zero determinant, we use Cramer's rule to solve for x and y:
// x = ((b2 * c1) - (b1 * c2)) / determinant
// y = ((a1 * c2) - (a2 * c1)) / determinant
// Output:
// We print the calculated values of x and y as the solution.
// Note:

// This program assumes the equations are in the form ax + by = c and uses Cramer's rule for a direct solution.
// Cramer's rule may not be the most efficient method for solving large systems of equations.