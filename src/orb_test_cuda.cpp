#include <iostream>
#include <fstream>
#include <vector>
#include <opencv2/opencv.hpp>
#include <opencv2/cudafeatures2d.hpp>

void writeKeypoints(const std::vector<cv::KeyPoint>& keypoints, const std::string& filename) {
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

std::vector<cv::KeyPoint> readKeypoints(const std::string& filename) {
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

void writeDescriptors(const cv::Mat& descriptors, const std::string& filename) {
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

int main(int argc, char** argv) {
    // Check for correct number of arguments
    if (argc != 4) {
        std::cout << "Usage: ./feature_extractor <path_to_image> <path_to_keypoints_file> <path_to_descriptors_file>" << std::endl;
        return -1;
    }

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
    cv::Ptr<cv::cuda::ORB> orb = cv::cuda::ORB::create();

    // Initialize cuda Mats
    cv::cuda::GpuMat image_gpu;
    cv::cuda::GpuMat descriptors_gpu;

    // upload image to gpu
    image_gpu.upload(image);

    // Compute descriptors for the detected keypoints
    cv::Mat descriptors;
    orb->compute(image_gpu, keypoints, descriptors_gpu);

    // download image from gpu
    descriptors_gpu.download(descriptors);

    // Write descriptors to file
    try {
        writeDescriptors(descriptors, argv[3]);
        std::cout << "Descriptors have been written to " << argv[3] << std::endl;
    } catch (const std::exception& e) {
        std::cerr << "Error writing descriptors: " << e.what() << std::endl;
        return -1;
    }

    return 0;
}
