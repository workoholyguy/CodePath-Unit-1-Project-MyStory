//
//  DetailViewController.swift
//  MyStory
//
//  Created by Omar Madjitov on 3/1/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    // Property
    var deadpool: Deadpool?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        if let deadpool = deadpool {
            print(deadpool.description)
            
            deadPoolImageView.image = deadpool.image
            textLabel.text = deadpool.description
            
        }
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
    
    @IBOutlet weak var deadPoolImageView: UIImageView!
    
    @IBOutlet weak var textLabel: UILabel!
}
