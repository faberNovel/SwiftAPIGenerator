//
//  InputCommand.swift
//  
//
//  Created by Benjamin Lavialle on 05/08/2021.
//

import Foundation
import ArgumentParser

struct InputCommand: ParsableCommand {

    @Argument()
    var sdkPath: String

    @Argument()
    var frameworkPath: String

    @Argument()
    var moduleName: String

    @Argument()
    var output: String

  func run() throws {
    do {
        let request = SwiftInterfaceRequestBuilder(
            sdkPath: sdkPath,
            frameworkPath: frameworkPath,
            moduleName: moduleName
        ).build()
        let generatedHeader = try KotlinSwiftAPIGenerator().generateInterface(for: request) ?? "<null>"
        try SwiftInterfaceWriter(interfaceString: generatedHeader, outputPath: output).write()
    } catch {
        print(error)
    }
  }
}
