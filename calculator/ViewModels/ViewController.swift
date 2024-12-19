//
//  ViewController.swift
//  calculator
//
//  Created by Albert on 12/19/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let firstOperandLabel = UILabel()
    let secondOperandLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground // Added for better visibility

        // Set label properties (good practice to do this early)
        firstOperandLabel.font = .systemFont(ofSize: 24, weight: .semibold)
        secondOperandLabel.font = .systemFont(ofSize: 24, weight: .semibold)
        firstOperandLabel.textAlignment = .center
        secondOperandLabel.textAlignment = .center

        // Calculate and set text
        let quotient = 1860 / 8
        let remainder = 1860 % 8
        firstOperandLabel.text = "Quotient: \(quotient)"
        secondOperandLabel.text = "Remainder: \(remainder)"

        // Add subviews
        view.addSubview(firstOperandLabel)
        view.addSubview(secondOperandLabel)

        // Use SnapKit for constraints (much cleaner and more readable)
        firstOperandLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }

        secondOperandLabel.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(20) // Added inset for spacing
            make.centerX.equalToSuperview()
        }
    }
}

#Preview {
    ViewController()
}
