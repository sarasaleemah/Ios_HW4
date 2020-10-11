//
//  ViewController.swift
//  homework4
//
//  Created by Haya Saleemah on 10/8/20.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var songData : song!
    public var position: Int = 0

  
    @IBOutlet weak var playPauseButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet var holder: UIView!


    var audioPlayre = AVAudioPlayer()
    var player: AVAudioPlayer?
    
    @IBOutlet weak var meem: UIImageView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        meem.image = UIImage(named: songData.img)
        meem.clipsToBounds = true
            configure()
    }

//    @IBAction func playSound(_ sender: AnyObject) {
////        sound (name: songData.name)
//        }
//
//
    func configure() {
        // set up player
        let song1 = songData.name

        let urlString = Bundle.main.path(forResource: songData.name , ofType: "m4a")

        do {
            try AVAudioSession.sharedInstance().setMode(.default)
            try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)

            guard let urlString = urlString else {
                print("urlstring is nil")
                return
            }

            player = try AVAudioPlayer(contentsOf: URL(string: urlString)!)

            guard let player = player else {
                print("player is nil")
                return
            }
            player.volume = 0.5

            player.play()
        }
        catch {
            print("error occurred")
        }
        
        // Add actions
        playPauseButton.addTarget(self, action: #selector(didTapPlayPauseButton), for: .touchUpInside)
        nextButton.addTarget(self, action: #selector(didTapNextButton), for: .touchUpInside)


        playPauseButton.setBackgroundImage(UIImage(named: "pause1"), for: .normal)

        nextButton.setBackgroundImage(UIImage(named: "arrow"), for: .normal)

        slider.addTarget(self, action: #selector(didSlideSlider(_:)), for: .valueChanged)
        
    }

    @objc func didTapNextButton() {
        if position < (songData.name.count - 1) {
            position = position + 1
            player?.stop()
            configure()
        }
    }

    @objc func didTapPlayPauseButton() {
        if player?.isPlaying == true {
            // pause
            player?.pause()
            // show play button
            playPauseButton.setBackgroundImage(UIImage(named: "play1"), for: .normal)

        
        }
        else {
            // play
            player?.play()
            playPauseButton.setBackgroundImage(UIImage(named: "pause1"), for: .normal)
        
        }
    }


    @objc func didSlideSlider(_ slider: UISlider) {
        let value = slider.value
        player?.volume = value
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if let player = player {
            player.stop()
        }
    }

}

 
    
    
    

//func sound (name: String)
//{
//
//let pathToSound2 = Bundle.main.path(forResource: name, ofType: "m4a")!
// let url = URL(fileURLWithPath: pathToSound2)
// do{
//      audioPlayre = try AVAudioPlayer(contentsOf: url)
//      audioPlayre.play()
//        }
// catch {       }
//}
//}
