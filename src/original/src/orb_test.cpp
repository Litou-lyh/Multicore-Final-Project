#include <iostream>
#include <fstream>
#include <vector>
#include <opencv2/opencv.hpp>
#include <opencv2/features2d.hpp>
#include <omp.h>

void writeKeypoints(const std::vector<cv::KeyPoint>& keypoints, const std::string& filename)
{
  std::ofstream outputFile(filename);
  if (!outputFile.is_open()) {
    throw std::runtime_error("Could not open the keypoints file for writing.");
  }

  for (const auto& kp : keypoints) {
    outputFile << kp.pt.x << " " << kp.pt.y << " " << kp.size << " "
               << kp.angle << " " << kp.response << " " << kp.octave << " "
               << kp.class_id << "\n";
  }

  outputFile.close();
}

std::vector<cv::KeyPoint> readKeypoints(const std::string& filename)
{
  std::vector<cv::KeyPoint> keypoints;
  std::ifstream inputFile(filename);
  if (!inputFile.is_open()) {
    throw std::runtime_error("Could not open the keypoints file for reading.");
  }

  cv::KeyPoint kp;
  while (inputFile >> kp.pt.x >> kp.pt.y >> kp.size >> kp.angle
         >> kp.response >> kp.octave >> kp.class_id) {
    keypoints.push_back(kp);
  }

  inputFile.close();
  return keypoints;
}

void writeDescriptors(const cv::Mat& descriptors, const std::string& filename)
{
  std::ofstream outputFile(filename);
  if (!outputFile.is_open()) {
    throw std::runtime_error("Could not open the descriptors file for writing.");
  }

  for (int i = 0; i < descriptors.rows; i++) {
    for (int j = 0; j < descriptors.cols; j++) {
      outputFile << static_cast<int>(descriptors.at<unsigned char>(i, j));
      if (j < descriptors.cols - 1)
        outputFile << " ";
    }
    outputFile << "\n";
  }

  outputFile.close();
}

int main(int argc, char** argv)
{
  // Check for correct number of arguments
  if (argc != 4) {
    std::cout << "Usage: ./feature_extractor <path_to_image> <path_to_keypoints_file> <path_to_descriptors_file>" << std::endl;
    return -1;
  }


  double program_start = omp_get_wtime();
  // Load the image
  cv::Mat image = cv::imread(argv[1], cv::IMREAD_GRAYSCALE);

  if (image.empty()) {
    std::cout << "Could not open or find the image!" << std::endl;
    return -1;
  }

  // Detect keypoints
  // std::vector<cv::KeyPoint> keypoints;
  // orb->detect(image, keypoints);

  // // Write keypoints to file
  // try {
  //     writeKeypoints(keypoints, argv[2]);
  //     std::cout << "Keypoints have been written to " << argv[2] << std::endl;
  // } catch (const std::exception& e) {
  //     std::cerr << "Error writing keypoints: " << e.what() << std::endl;
  //     return -1;
  // }

  // Read keypoints
  std::vector<cv::KeyPoint> keypoints;
  try {
    keypoints = readKeypoints(argv[2]);
    std::cout << "Keypoints have been read from " << argv[2] << std::endl;
  } catch (const std::exception& e) {
    std::cerr << "Error reading keypoints: " << e.what() << std::endl;
    return -1;
  }

  // Initialize ORB detector
  cv::Ptr<cv::ORB> orb = cv::ORB::create();

  // Compute descriptors for the detected keypoints
  cv::Mat descriptors;
  double compute_start = omp_get_wtime();

  orb->compute(image, keypoints, descriptors);
  double compute_end = omp_get_wtime();

  // Write descriptors to file
  try {
    writeDescriptors(descriptors, argv[3]);
    std::cout << "Descriptors have been written to " << argv[3] << std::endl;
  } catch (const std::exception& e) {
    std::cerr << "Error writing descriptors: " << e.what() << std::endl;
    return -1;
  }
  double program_end = omp_get_wtime();
  printf("[Total Comp Time]: %.4lf us : from %.4lf to %.4lf\n",
         (compute_end - compute_start) * 1000000,
         compute_end * 1000000,
         compute_start * 1000000);
  printf("[Total Exec Time]: %.4lf us : from %.4lf to %.4lf\n",
         (program_end - program_start) * 1000000,
         program_start * 1000000,
         program_end * 1000000);

  return 0;
}
// #include <opencv2/opencv.hpp>
// using namespace cv;
// using namespace std;

// int main( int argc, char** argv )
// {
//   cout << "OpenCV version : " << CV_VERSION << endl;
//   cout << "Major version : " << CV_MAJOR_VERSION << endl;
//   cout << "Minor version : " << CV_MINOR_VERSION << endl;
//   cout << "Subminor version : " << CV_SUBMINOR_VERSION << endl;

//   if ( CV_MAJOR_VERSION < 3)
//   {
//       // Old OpenCV 2 code goes here.
//   } else
//   {
//       // New OpenCV 3 code goes here.
//   }
// }