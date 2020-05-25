//
//  DirectionsViewController.swift
//  SandwichApp
//
//  Created by marvin evins on 5/22/20.
//  Copyright © 2020 websavantmedia. All rights reserved.
//

import UIKit
import AVKit
import YoutubePlayer_in_WKWebView
class DirectionsViewController: UIViewController, AVPlayerViewControllerDelegate{

    var playerController = AVPlayerViewController()
    
    @IBOutlet weak var player: WKYTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func videoPopUpBtn(_ sender: Any) {
        
//
        player.load(withVideoId: "YeEe8QasV5s")
        
        

        
        
        
    }
    
    

}



////dismiss this//////////////////////////////////////////////
//               // guard let url = URL(string: "How to make a sandwich")else {return }
//                let path = Bundle.main.path(forResource: "sandwich", ofType: ".mp4" )
//                //player = AVPlayer(url: URL(fileURLWithPath: path!))
//                //let player = AVPlayer(url: url)
//                 let player = AVPlayer(url: URL(fileURLWithPath: path!))
//
//                playerController = AVPlayerViewController()
//                playerController.player = player
//                playerController.allowsPictureInPicturePlayback = true
//                playerController.delegate = self
//                playerController.player?.play()
//
//                self.present(playerController, animated: true, completion: nil)
//        guard let url = URL(string: "")else {return }
//
//        let player = AVPlayer(url: url)
//
//        playerController = AVPlayerViewController()
//        playerController.player = player
//        playerController.allowsPictureInPicturePlayback = true
//        playerController.delegate = self
//        playerController.player?.play()
//
//        self.present(playerController, animated: true, completion: nil)
        
        
