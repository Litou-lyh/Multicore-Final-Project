#include <iostream>
#include <fstream>
#include <opencv2/opencv.hpp>
#include <opencv2/features2d.hpp>

int main(int argc, char** argv) {
    // Check for correct number of arguments
    if(argc != 3) {
        std::cout << "Usage: ./program <path_to_image> <path_to_output_txt>" << std::endl;
        return -1;
    }

    // Load the image
    cv::Mat image = cv::imread(argv[1], cv::IMREAD_GRAYSCALE);
    if(image.empty()) {
        std::cout << "Could not open or find the image!" << std::endl;
        return -1;
    }

    // Initialize ORB detector
    cv::Ptr<cv::ORB> orb = cv::ORB::create();

    // Detect ORB keypoints and compute the descriptors
    std::vector<cv::KeyPoint> keypoints;
    cv::Mat descriptors;
    orb->detectAndCompute(image, cv::noArray(), keypoints, descriptors);

    // Save descriptors to a txt file
    std::ofstream outputFile(argv[2]);
    if(!outputFile) {
        std::cout << "Could not open the output file!" << std::endl;
        return -1;
    }

    for(int i = 0; i < descriptors.rows; i++) {
        for(int j = 0; j < descriptors.cols; j++) {
            outputFile << static_cast<int>(descriptors.at<unsigned char>(i, j));
            if(j < descriptors.cols - 1) {
                outputFile << ",";
            }
        }
        outputFile << std::endl;
    }

    outputFile.close();
    std::cout << "Descriptors saved to " << argv[2] << std::endl;

    return 0;
}
