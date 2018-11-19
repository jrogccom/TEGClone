//
//  DiceCell.swift
//  TEGClone
//
//  Created by Javier Osorio on 11/18/18.
//

import UIKit

class DiceCell: UICollectionViewCell {
    
    @IBOutlet weak var label: UILabel!
    private(set) var outcome: DiceOutcome?
    
    func set(outcome: DiceOutcome) {
        self.outcome = outcome
        
        label.text = text(for: outcome)
    }
}

fileprivate extension DiceCell {
    func text(for outcome: DiceOutcome) -> String {
        switch outcome {
        case .culture:
            return "🏛"
        case .energy:
            return "⚡️"
        case .planetAction:
            return "🌎"
        case .ship:
            return "🚀"
        case .wealth:
            return "💰"
        case .science:
            return "🧠"
        }
    }
}
