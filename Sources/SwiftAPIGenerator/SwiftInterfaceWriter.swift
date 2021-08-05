//
//  SwiftInterfaceWriter.swift
//  
//
//  Created by Benjamin Lavialle on 05/08/2021.
//

import Foundation

struct SwiftInterfaceWriter {

    let interfaceString: String
    let outputPath: String

    func write() throws {
        guard let data = interfaceString.data(using: .utf8) else {
            throw NSError(
                domain: "KotlinSwiftAPIGenerator",
                code: 1,
                userInfo: ["description": "Unable to encode header"]
            )
        }
        try data.write(to: URL(fileURLWithPath: outputPath))
    }
}
