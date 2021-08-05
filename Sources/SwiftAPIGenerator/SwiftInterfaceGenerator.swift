//
//  SwiftInterfaceGenerator.swift
//  
//
//  Created by Benjamin Lavialle on 05/08/2021.
//

import Foundation
import SourceKittenFramework

struct KotlinSwiftAPIGenerator {

    func generateInterface(for request: SourceKitObject) throws -> String? {
        try Request
            .customRequest(request: request)
            .send()["key.sourcetext"]
            .represented()
            .string
    }
}
