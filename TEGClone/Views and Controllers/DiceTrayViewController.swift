//
//  DiceTryViewController.swift
//  TEGClone
//
//  Created by Javier Osorio on 11/18/18.
//

import UIKit

class DiceTrayViewController: UIViewController, UICollectionViewDataSource {
    
    private let cellReuseId = "dice"
    private var dice: Int! = 6
    
    private(set) var hasRolled = false
    
    private(set) var outcomes = [DiceOutcome]()
    
    func set(dice: Int) {
        self.dice = dice
        collectionView?.dataSource = self
    }
    
    @IBAction func roll(_ sender: UIButton?) {
        outcomes = (0..<dice).map{ _ in DiceOutcome() }
        hasRolled = true
        collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        assert(dice != nil, "var dice should be set before datasource is.")
        guard hasRolled else {
            return 0
        }
        return dice
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellReuseId, for: indexPath) as! DiceCell
        
        cell.set(outcome: outcomes[indexPath.item])
        
        return cell
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
