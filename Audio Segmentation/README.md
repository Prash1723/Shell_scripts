# Audio segmentation

**Aim**: To segment audio files into desired number segments along the time length.

**Usage**: While running the function mention the file location for $1 and the segment length(measured in seconds) of the audio or video file.

**Requirements**:
- ffmpeg

**Issues**: Earlier I tried using it for segmenting videos too and it does the job but when run on a video player it shows it's length based on the original file. It cuts out the video before it and the video timing is like cumulative.
