//
//  Logger.swift
//  
//
//  Created by Benjamin Lavialle on 05/08/2021.
//

import Foundation

struct Logger {

    let verbose: Bool

    func log(_ message: String) {
        guard verbose else { return }
        print(message)
    }

}
