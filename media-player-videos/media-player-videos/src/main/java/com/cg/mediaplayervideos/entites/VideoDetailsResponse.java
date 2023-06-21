package com.cg.mediaplayervideos.entites;

public class VideoDetailsResponse {
    private Videos video;
    private byte[] videoData;

    public VideoDetailsResponse(Videos video, byte[] videoData) {
        this.video = video;
        this.videoData = videoData;
    }

    public Videos getVideo() {
        return video;
    }

    public void setVideo(Videos video) {
        this.video = video;
    }

    public byte[] getVideoData() {
        return videoData;
    }

    public void setVideoData(byte[] videoData) {
        this.videoData = videoData;
    }
}

