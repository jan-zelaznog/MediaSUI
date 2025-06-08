//
//  ContentView.swift
//  MediaSUI
//
//  Created by Ángel González on 07/06/25.
//

import SwiftUI
import AVKit

struct ContentView: View {
    private let mediaPlayer = MediaPlayer()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Button {
                    mediaPlayer.stopSound()
                }
                label: {
                    Image(systemName:"stop.circle")
                }
                
                NavigationLink {
                    if let url = Bundle.main.url(forResource:"luvia-tiktok", withExtension:"mp4"){
                        let player = mediaPlayer.playVideo(withURL: url)
                        VideoView(vPlayer:player)
                    }
                } label: {
                    Image(systemName: "photo.circle")
                }
                    
                NavigationLink {
                    YTView(videoID: "jQtP1dD6jQ0")
                } label: {
                    Image(systemName:"play.rectangle")
                            .foregroundColor(.red)
                }
            }
            .onAppear {
                if let url = Bundle.main.url(forResource:"1", withExtension:"mp3") {
                    mediaPlayer.playSound(withURL: url)
                }
            }
            .onDisappear {
                mediaPlayer.stopSound()
            }
        }
    }
}

#Preview {
    ContentView()
}
