// lib/services/size_recommendation_service.dart

class SizeRecommendationService {
  static Map<String, Map<String, double>> sizeCharts = {
    'M': {'bust': 36.0, 'waist': 30.0, 'hip': 38.0},
    'L': {'bust': 38.0, 'waist': 32.0, 'hip': 40.0},
    // Add more sizes as needed
  };

  static String getRecommendedSize(double bust, double waist, double hip) {
    String recommendedSize = 'Unknown';
    double minDifference = double.infinity;

    sizeCharts.forEach((size, measurements) {
      double difference = (measurements['bust']! - bust).abs() +
                          (measurements['waist']! - waist).abs() +
                          (measurements['hip']! - hip).abs();

      if (difference < minDifference) {
        minDifference = difference;
        recommendedSize = size;
      }
    });

    return recommendedSize;
  }
}
