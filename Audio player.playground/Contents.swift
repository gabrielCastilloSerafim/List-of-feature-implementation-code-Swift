//IMPLEMENTING AUDIO PLAYER

import AVFoundation

var player: AVAudioPlayer!

playSound()

func playSound() {
    let url = Bundle.main.url(forResource: "soundName", withExtension: "wav")
    player = try! AVAudioPlayer(contentsOf: url!)
    player.play()
}
