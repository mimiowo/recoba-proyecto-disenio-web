#!/bin/zsh

# Specify the directory containing your videos
videos_directory="/Users/mimiuwu/Desktop/recoba-proyecto-disenio-web/public/videos"

# Iterate over each video in the directory
for video_path in ${videos_directory}/*.mp4; do
    # Get the video file name without extension
    video_name=$(basename -- "${video_path%.*}")

    # Specify the output thumbnail filename with .jpg extension
    thumbnail_name="${video_name}.jpg"

    # Run FFmpeg to extract a frame at 15 seconds and save it as the thumbnail
    ffmpeg -i "${video_path}" -ss 00:00:7 -vframes 1 "${videos_directory}/${thumbnail_name}"

    # sudo rm "${videos_directory}/${thumbnail_name}"

    # Optionally, you can also save thumbnails in .png format if desired
    # thumbnail_name="${video_name}.png"
    # ffmpeg -i "${video_path}" -ss 00:00:15 -vframes 1 "${videos_directory}/${thumbnail_name}"
done