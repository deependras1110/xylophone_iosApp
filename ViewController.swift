import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        //plays the sound
        playSound(soundName:sender.currentTitle!)
        //sets the opacity to 50% when clicked
        sender.alpha=0.5
        //execute the opacity with delay of 0.2 seconds and bring back the 100% original shade
        DispatchQueue.main.asyncAfter(deadline: .now()+0.2){
            UIView.animate(withDuration:0.2){
                sender.alpha=1.0
            }
            
        }
        
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource:soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}


