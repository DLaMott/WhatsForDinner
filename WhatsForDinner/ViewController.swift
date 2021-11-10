//
//  ViewController.swift
//  WhatsForDinner
//
//  Created by Dylan LaMott on 2/25/21.
//
/* School project addtions: Sound, user text field guessing, label displaying if user was correct, about app button. Designed for IPhone 11 */
//

import UIKit
// Sound module
import AVFoundation

class ViewController: UIViewController {
    //Variable for Sound
    var audioPlay = AVAudioPlayer()
    
  // Variables for labels and text boxes
    @IBOutlet var labelView: UILabel!
    @IBOutlet var labelView2: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var textView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // Function to clear textfield
    func clearInput(){
        textView.text = ""
    }

    @IBAction func guessButtonPressed(_ sender: Any) {
        
    
        //Button guesses randomized
        let guess = Int.random(in: 0...7)
        
        //Switch statemtent to implement guessing
        switch guess {
        case 0:
            
            //Sound handling
            let pathToSound = Bundle.main.path(forResource: "smb_stomp", ofType: "wav")!
            let url = URL(fileURLWithPath: pathToSound)
            do{
                audioPlay = try AVAudioPlayer(contentsOf: url)
                audioPlay.play()
            }catch{
                print(error)
            }
            
            
            //Generate images and change label text
            imageView.image = UIImage(named: "subs")
            labelView.text = "Subs!"
            labelView.textColor = .blue
            labelView.textAlignment = .center
            view.backgroundColor = .systemRed
            
            // Check if user text matches result
            if textView.text == "subs"{
                labelView2.text = "You got it!!!"
            }else if textView.text == "Subs"{
                labelView2.text = "You got it!!!"
            }else{
                labelView2.text = "Try Again!"}
            
            // Clear text
            clearInput()
            break
            
        case 1:
            
            // Sound handling
            let pathToSound = Bundle.main.path(forResource: "smb_fireball", ofType: "wav")!
            let url = URL(fileURLWithPath: pathToSound)
            do{
                audioPlay = try AVAudioPlayer(contentsOf: url)
                audioPlay.play()
            }catch{
                print(error)
            }
            
            // Generate new image and text
            imageView.image = UIImage(named: "pizza")
            labelView.text = "Pizza!"
            labelView.textColor = .orange
            labelView.textAlignment = .center
            view.backgroundColor = .blue
            
            // Check if user text matches result
            if textView.text == "pizza"{
                labelView2.text = "You got it!!!"
            }else if textView.text == "Pizza"{
                labelView2.text = "You got it!!!"
            }else{
                labelView2.text = "Try Again!"}
            
            // Clear text
            clearInput()
            break
            
        case 2:
            
            // Sound handling
            let pathToSound = Bundle.main.path(forResource: "smb_coin", ofType: "wav")!
            let url = URL(fileURLWithPath: pathToSound)
            do{
                audioPlay = try AVAudioPlayer(contentsOf: url)
                audioPlay.play()
            }catch{
                print(error)
            }
            
            // Generate new image and text
            imageView.image = UIImage(named: "salmonsalad")
            labelView.text = "salmonsalad!"
            labelView.textColor = .cyan
            labelView.textAlignment = .center
            view.backgroundColor = .systemRed
            
            // Check if user text matches result
            if textView.text == "salmonsalad"{
                labelView2.text = "You got it!!!"
            }else if textView.text == "Salmonsalad"{
                labelView2.text = "You got it!!!"
            }else{
                labelView2.text = "Try Again!"}
            
            // Clear text
            clearInput()
            break
            
        case 3:
            
            // Sound handling
            let pathToSound = Bundle.main.path(forResource: "smb_powerup", ofType: "wav")!
            let url = URL(fileURLWithPath: pathToSound)
            do{
                audioPlay = try AVAudioPlayer(contentsOf: url)
                audioPlay.play()
            }catch{
                print(error)
            }
            
            // Generate new image and text
            imageView.image = UIImage(named: "sushi")
            labelView.text = "sushi!"
            labelView.textColor = .cyan
            labelView.textAlignment = .center
            view.backgroundColor = .blue
            
            // Check if user text matches result
            if textView.text == "sushi"{
                labelView2.text = "You got it!!!"
            }else if textView.text == "Sushi"{
                labelView2.text = "You got it!!!"
            }else{
                labelView2.text = "Try Again!"}
            
            // Clear text
            clearInput()
            break
            
        case 4:
            
            // Sound handling
            let pathToSound = Bundle.main.path(forResource: "smb_fireball", ofType: "wav")!
            let url = URL(fileURLWithPath: pathToSound)
            do{
                audioPlay = try AVAudioPlayer(contentsOf: url)
                audioPlay.play()
            }catch{
                print(error)
            }
            
            // Generate new image and text
            imageView.image = UIImage(named: "steak")
            labelView.text = "Steak!"
            labelView.textColor = .orange
            labelView.textAlignment = .center
            view.backgroundColor = .blue
            
            // Check if user guess matches result
            if textView.text == "steak"{
                labelView2.text = "You got it!!!"
            }else if textView.text == "Steak"{
                labelView2.text = "You got it!!!"
            }else{
                labelView2.text = "Try Again!"}
            
            // Clear text
            clearInput()
            break
            
        case 5:
            
            // Sound handling
            let pathToSound = Bundle.main.path(forResource: "smb_coin", ofType: "wav")!
            let url = URL(fileURLWithPath: pathToSound)
            do{
                audioPlay = try AVAudioPlayer(contentsOf: url)
                audioPlay.play()
            }catch{
                print(error)
            }
            
            // Generate new image and text
        
            imageView.image = UIImage(named: "doughnut")
            labelView.text = "Doughnuts!!"
            labelView.textColor = .cyan
            labelView.textAlignment = .center
            view.backgroundColor = .systemRed
            
            // Check if user text matches result
            if textView.text == "doughnuts"{
                labelView2.text = "You got it!!!"
            }else if textView.text == "Doughnuts"{
                labelView2.text = "You got it!!!"
            }else{
                labelView2.text = "Try Again!"}
            
            // Clear text
            clearInput()
            break
            
        case 6:
            
            // Sound handling
            let pathToSound = Bundle.main.path(forResource: "smb_powerup", ofType: "wav")!
            let url = URL(fileURLWithPath: pathToSound)
            do{
                audioPlay = try AVAudioPlayer(contentsOf: url)
                audioPlay.play()
            }catch{
                print(error)
            }
            
            // Generate new image and text
            imageView.image = UIImage(named: "burger")
            labelView.text = "Burgers!"
            labelView.textColor = .cyan
            labelView.textAlignment = .center
            view.backgroundColor = .systemRed
            
            // Check if user text matches result
            if textView.text == "burger"{
                labelView2.text = "You got it!!!"
            }else if textView.text == "Burger"{
                labelView2.text = "You got it!!!"
            }else{
                labelView2.text = "Try Again!"}
            
            // Clear text
            clearInput()
            break
        case 7:
            //Sound handling
            let pathToSound = Bundle.main.path(forResource: "smb_stomp", ofType: "wav")!
            let url = URL(fileURLWithPath: pathToSound)
            do{
                audioPlay = try AVAudioPlayer(contentsOf: url)
                audioPlay.play()
            }catch{
                print(error)
            }
            
            
            //Generate images and change label text
            imageView.image = UIImage(named: "pancakes")
            labelView.text = "Pancakes!"
            labelView.textColor = .blue
            labelView.textAlignment = .center
            view.backgroundColor = .systemRed
            
            // Check if user text matches result
            if textView.text == "pancakes"{
                labelView2.text = "You got it!!!"
            }else if textView.text == "Pancakes"{
                labelView2.text = "You got it!!!"
            }else{
                labelView2.text = "Try Again!"}
            
            // Clear text
            clearInput()
            break
            
        default:
            
            //Generate sound
            let pathToSound = Bundle.main.path(forResource: "smb_coin", ofType: "wav")!
            let url = URL(fileURLWithPath: pathToSound)
            do{
                audioPlay = try AVAudioPlayer(contentsOf: url)
                audioPlay.play()
            }catch{
                print(error)
            }
            
            //Generate new image and text
            clearInput()
            imageView.image = UIImage(named: "pancakes")
            labelView.text = "Pancakes!"
            labelView.textColor = .black
            labelView.textAlignment = .center
            view.backgroundColor = .blue
            
            // Check if user text matches result
            if textView.text == "pancakes"{
                labelView2.text = "You got it!!!"
            }else if textView.text == "Pancakes"{
                labelView2.text = "You got it!!!"
            }else{
                labelView2.text = "Try Again!"}
            
            // Clear text
            clearInput()
            break
        }
    }
    
}

