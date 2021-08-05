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

    @Flag
    var verbose = false

  func run() throws {
    let logger = Logger(verbose: verbose)
    logger.log("Starting Swift API Generator")
    do {
        let request = SwiftInterfaceRequestBuilder(
            sdkPath: sdkPath,
            frameworkPath: frameworkPath,
            moduleName: moduleName
        ).build()
        logger.log("Starting interface generation")
        let generatedHeader = try SwiftInterfaceGenerator().generateInterface(for: request) ?? "<null>"
        logger.log("Interface generation succeeded:\n\(generatedHeader)")
        try SwiftInterfaceWriter(interfaceString: generatedHeader, outputPath: output).write()
        logger.log("Interface writing succeeded at \(output)")
        logger.log("Swift API Generator ended successfully")
    } catch {
        if verbose {
            print(error)
        }
        throw error
    }
  }
}
