//
//  ViewController.swift
//  MyStory
//
//  Created by Omar Madjitov on 2/28/23.
//

import UIKit

class ViewController: UIViewController {
    // Create individual Dinosaurs using Dinosaur model
    let background = Deadpool(description:
"""
I'm Wade Wilson, and I'm not exactly your typical superhero. I used to be a mercenary, until I was diagnosed with cancer. That's when I signed up for an experimental program that was supposed to cure me, but instead left me with some serious superpowers.

My body can heal from just about anything, which is pretty cool, but it also left me looking like a walking avocado. And it didn't exactly do wonders for my mental health either. I mean, I'm a little crazy now. I decided to adopt the name Deadpool and started using my powers for good, sort of.

I'm not exactly a \"nice guy,\" but I do try to help people when I can. I've had some run-ins with some pretty powerful villains, like Ajax and the mutant Juggernaut, but I always manage to come out on top. I've also teamed up with some other heroes from time to time, like the X-Men and Spider-Man. They don't exactly love my methods, but they put up with me.

Overall, being Deadpool has been one wild ride. It's not always easy, but it's never boring. And hey, at least I'm not dying of cancer anymore.
""", image: UIImage(named: "lab")!)
    let heart = Deadpool(description:
"""
As Deadpool, I have had a complicated and often tumultuous love life. My girlfriend's name is Vanessa Carlysle, also known as Copycat.
                         
Vanessa is a shape-shifter who can take on the appearance of anyone she desires, and we first met when she was working as a prostitute.
                         
Despite our unconventional beginning, Vanessa and I quickly became close and started a romantic relationship. We have been through a lot together, including my cancer diagnosis and my transformation into Deadpool, which left me physically and mentally scarred.Over the years, Vanessa and I have had many ups and downs in our relationship.
                         
At times, our love has been a source of stability and comfort for both of us, but at other times, it has been strained by my erratic behavior and tendency to get involved in dangerous situations.
""", image: UIImage(named: "heart")!)
    let fast = Deadpool(description:
"""
As Deadpool, one of my most notable abilities is my powerful regenerative healing factor. This ability allows me to heal from nearly any injury, no matter how severe, and to do so at an incredibly fast rate.When I am wounded, I can feel my body begin to knit itself back together almost immediately.

My flesh and bone rapidly regenerate, and even severed limbs can grow back in a matter of minutes. This means that I am almost impossible to kill, as even the most fatal of injuries can be quickly repaired by my healing factor.However, this rapid regeneration comes with a downside.

While I may be able to heal from any injury, I still feel pain just like anyone else. In fact, my heightened senses mean that I experience pain even more acutely than most people, making injuries all the more agonizing.
""", image: UIImage(named: "fast")!)
    
    @IBOutlet weak var deadImage: UIImageView!
    
    // Array for storing Deadool Info
    var deadpoolInfo: [Deadpool] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set the image view's layer properties
        deadImage.layer.cornerRadius = min(deadImage.frame.size.width, deadImage.frame.size.height) / 2.0
        deadImage.clipsToBounds = true
        
        // Store Deadpool info
        deadpoolInfo = [background, heart, fast]
    }

    @IBAction func didTapButton(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.deadpool = deadpoolInfo[0]
            } else if tappedView.tag == 1 {
                detailViewController.deadpool = deadpoolInfo[1]
            } else if tappedView.tag == 2 {
                detailViewController.deadpool = deadpoolInfo[2]
            } else {
                print("no Button was tapped, please check your selection.")
            }
        }
    }
    
}

