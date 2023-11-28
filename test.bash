#!/bin/bash

declare -A directories=(
    ["/scratch/Multicore-Final-Project/code/cuda/build"]="gpu"
    ["/scratch/Multicore-Final-Project/code/ziyue_attempt_on_other_part/build"]="parallel"
    ["/scratch/Multicore-Final-Project/code/original/build"]="serial"
)

# Define the sizes
keypoint_sizes=(1000 2000 3000 4000 5000 6000 7000 8000 9000 10000)

# Output directory
output_dir="/scratch/Multicore-Final-Project/tests/"

mkdir -p "$output_dir"

# Loop through each directory
for dir in "${!directories[@]}"; do
    version=${directories[$dir]}
    echo "Processing $version version in directory: $dir"

    # Change to the dir
    cd "$dir"

    # Check if the dir works
    if [ $? -ne 0 ]; then
        echo "Failed to change directory to $dir. Skipping..."
        continue
    fi

    # Loop through keypoints
    for size in "${keypoint_sizes[@]}"; do
        echo "Running test with keypoints size: $size for $version version"

        # Output file name
        output_file="${output_dir}/output_${version}_keypoints_${size}.txt"

        # Run the command and save the output
        ./ORBExtractor ../../../train4.jpg ../../../keypoints/keypoints_${size}.txt output_dir > "$output_file"

        echo "Output saved to $output_file"
    done

    # Go back
    cd -
done

echo "All tests completed."

