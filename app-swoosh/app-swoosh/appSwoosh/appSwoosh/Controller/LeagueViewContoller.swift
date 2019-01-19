//
//  LeagueViewContoller.swift
//  appSwoosh
//
//  Created by Albert Leon on 1/19/19.
//  Copyright © 2019 Albert Leon. All rights reserved.
//

import UIKit

class LeagueViewContoller: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillViewControllerSegue", sender: self)
    }
    
    func selectLeague (leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }

    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillViewController = segue.destination as? SkillViewController {
            skillViewController.player = player
        }
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
