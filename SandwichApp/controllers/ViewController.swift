import UIKit
import AVFoundation
class ViewController: UIViewController {
    
   var player: AVPlayer?
    @IBOutlet weak var roundButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        playBackgroundVideo()
        roundButton.layer.cornerRadius = 10.0
        roundButton.layer.masksToBounds = true

    }

    
    func playBackgroundVideo(){
        let path = Bundle.main.path(forResource: "introVid", ofType: ".mp4" )
        player = AVPlayer(url: URL(fileURLWithPath: path!))
        player!.actionAtItemEnd = AVPlayer.ActionAtItemEnd.none
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.frame
        playerLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
        self.view.layer.insertSublayer(playerLayer, at: 0)
        NotificationCenter.default.addObserver(self, selector: #selector(playerItemDidReachEnd), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: player!.currentItem)
        player!.seek(to: CMTime.zero)
        player!.play()
        self.player?.isMuted = true
    }
    @objc func playerItemDidReachEnd(){
        player!.seek(to: CMTime.zero)
    }


}
