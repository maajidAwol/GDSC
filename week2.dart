void main() {
  final numbers = [1, 8, 3, 3, 4, 45, 5, 69, 10, 39, 91, 10];
  print('Maximum: ${findMaximum(numbers)}');
  print('Minimum: ${findMinimum(numbers)}');
  print('Sum: ${calculateSum(numbers)}');
  print('Average: ${calculateAverage(numbers)}');
}

int findMaximum(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('The list is empty');
  }

  int max = numbers[0];

  for (int number in numbers) {
    if (number > max) {
      max = number;
    }
  }

  return max;
}

int findMinimum(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('The list is empty');
  }

  int min = numbers[0];

  for (int number in numbers) {
    if (number < min) {
      min = number;
    }
  }

  return min;
}

int calculateSum(List<int> numbers) {
  int sum = 0;

  for (int number in numbers) {
    sum += number;
  }

  return sum;
}

double calculateAverage(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('The list is empty');
  }

  int sum = calculateSum(numbers);
  return sum / numbers.length;
}
