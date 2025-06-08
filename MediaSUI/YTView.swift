//
//  YTView.swift
//  MediaSUI
//
//  Created by Ángel González on 07/06/25.
//

import SwiftUI
import YouTubeiOSPlayerHelper


struct YTView: UIViewRepresentable {
    var videoID : String
    
    func makeUIView(context: Context) -> YTPlayerView {
        let playerView = YTPlayerView()
        playerView.load(withVideoId: videoID)
        return playerView
    }
    
    func updateUIView(_ uiView: YTPlayerView, context: Context) {
        //
    }
}
