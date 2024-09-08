//
//  SpotifyLoading.swift
//  Apps_Rebuild
//
//  Created by Layza Maria Rodrigues Carneiro on 07/08/24.
//

import SwiftUI
import Lottie

struct SpotifyLoading: View {
    
    var fileName: String = "LoadingAnimation.json"
    var contentMode: UIView.ContentMode = .scaleAspectFill
    var playLoopMode: LottieLoopMode = .playOnce
    var onAnimationDidFinish: (() -> Void)? = nil
    
    var body: some View {
        LottieView(animation: .named(fileName))
            .configure({ LottieAnimationView in
                LottieAnimationView.contentMode = contentMode
//                LottieAnimationView.shouldRasterizeWhenIdle = true
            })
            .playbackMode(.playing(.toProgress(1, loopMode: playLoopMode)))
            .animationDidFinish { completed in
                onAnimationDidFinish?()
            }
    }
}

#Preview {
    SpotifyLoading()
}
