//
//  ViewController.swift
//  Music Player
//
//  Created by Neel Patel on 07/11/16.
//  Copyright © 2016 Neel Patel. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,UIPickerViewDelegate{
    
    
    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    
    var neel = ["Select from below :)","Maps","Payphone","One Last Time","Sorry","This is how we roll","Perfect Strangers"]

    @IBOutlet weak var pickerview: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return neel.count
    }
    
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        
        return neel[row]
    }
    
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        let Selectedrow : String
            Selectedrow = neel[row]
        
        switch(Selectedrow)
        {
            case "Maps":
                
                    label.text = "Maps - Maroon 5"
                    label.textColor = UIColor.black
                    image.image = UIImage(named: "maps.jpeg")
                    do
                    {
                        
                        self.audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Maps", ofType: "mp3")!))
                        self.audioPlayer.prepareToPlay()
                        
                        var audioSession = AVAudioSession.sharedInstance()
                        do
                        {
                            try audioSession.setCategory(AVAudioSessionCategoryPlayback)
                        }
                        catch
                        {
                            
                        }
                        
                    }
                    catch
                    {
                        print(error)
                    }
            
            

            
            case "Payphone":
            
                label.text = "Payphone - Maroon 5"
                 label.textColor = UIColor.black
                image.image = UIImage(named: "maroon.jpeg")
                do
                {
                    
                    self.audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Payphone", ofType: "mp3")!))
                    self.audioPlayer.prepareToPlay()
                    
                    var audioSession = AVAudioSession.sharedInstance()
                    do
                    {
                        try audioSession.setCategory(AVAudioSessionCategoryPlayback)
                    }
                    catch
                    {
                        
                    }
                    
                }
                catch
                {
                    print(error)
                }
            
            case "One Last Time":
            
                label.text = "One Last Time"
                 label.textColor = UIColor.black
                image.image = UIImage(named: "onelasttime.jpeg")
                do
                {
                    
                    self.audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "One Last Time", ofType: "mp3")!))
                    self.audioPlayer.prepareToPlay()
                    
                    var audioSession = AVAudioSession.sharedInstance()
                    do
                    {
                        try audioSession.setCategory(AVAudioSessionCategoryPlayback)
                    }
                    catch
                    {
                        
                    }
                    
                }
                catch
                {
                    print(error)
                }
            
            case "Sorry":
            
                label.text = "Sorry - Justin B."
                 label.textColor = UIColor.black
                image.image = UIImage.animatedImageNamed("sorry.jpeg", duration: 2)
                do
                {
                    
                    self.audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Sorry", ofType: "m4a")!))
                    self.audioPlayer.prepareToPlay()
                    
                    var audioSession = AVAudioSession.sharedInstance()
                    do
                    {
                        try audioSession.setCategory(AVAudioSessionCategoryPlayback)
                    }
                    catch
                    {
                        
                    }
                    
                }
                catch
                {
                    print(error)
                }
            
            case "This is how we roll":
            
                label.text = "This how we roll"
                 label.textColor = UIColor.black
                image.image = UIImage.animatedImageNamed("fift.jpeg", duration: 2)
                do
                {
                    
                    self.audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "This Is How We Roll", ofType: "mp3")!))
                    self.audioPlayer.prepareToPlay()
                    
                    var audioSession = AVAudioSession.sharedInstance()
                    do
                    {
                        try audioSession.setCategory(AVAudioSessionCategoryPlayback)
                    }
                    catch
                    {
                        
                    }
                    
                }
                catch
                {
                    print(error)
                }
            
            case "Perfect Strangers":
            
                label.text = "Perfrect Strangers"
                 label.textColor = UIColor.black
                image.image = UIImage.animatedImageNamed("blue.jpeg", duration: 2)
                do
                {
                    
                    self.audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Perfect Strangers", ofType: "mp3")!))
                    self.audioPlayer.prepareToPlay()
                    
                    var audioSession = AVAudioSession.sharedInstance()
                    do
                    {
                        try audioSession.setCategory(AVAudioSessionCategoryPlayback)
                    }
                    catch
                    {
                        
                    }
                    
                }
                catch
                {
                    print(error)
            }
            
        default:
            
            label.text = "Please Select"
             label.textColor = UIColor.black
        }
        
        
    }
    
    @IBAction func play(_ sender: Any) {
        audioPlayer.play()
    }
    
    @IBAction func pause(_ sender: Any) {
        if audioPlayer.isPlaying
        {
            audioPlayer.pause()
        }
        else
        {
            audioPlayer.play()
        }
    }
    
    @IBAction func restart(_ sender: Any) {
        
        if audioPlayer.isPlaying
        {
            audioPlayer.currentTime = 0
            audioPlayer.play()
        }
        else
        {
            audioPlayer.play()
        }

        
    }
    


}

