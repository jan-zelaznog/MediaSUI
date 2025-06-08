//
//  VideoView.swift
//  MediaSUI
//
//  Created by Ángel González on 07/06/25.
//

import SwiftUI
import AVFoundation
import AVKit

struct VideoView: View {
    @State var vPlayer: AVPlayer?
    
    var body: some View {
        VStack {
            VideoPlayer(player: vPlayer)
                .onAppear {
                    vPlayer?.play()
                }
                .onDisappear {
                    vPlayer?.pause()
                }
        }
        .padding()
    }
}
