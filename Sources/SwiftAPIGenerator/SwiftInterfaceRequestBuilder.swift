//
//  SwiftInterfaceRequestBuilder.swift
//  
//
//  Created by Benjamin Lavialle on 05/08/2021.
//

import Foundation
import SourceKittenFramework

struct SwiftInterfaceRequestBuilder {
    let sdkPath: String
    let frameworkPath: String
    let moduleName: String

    func build() -> SourceKitObject {
        [
            "key.request": UID("source.request.editor.open.interface"),
            "key.name": UUID().uuidString,
            "key.compilerargs": ["-sdk", sdkPath, "-F", frameworkPath, "" ],
            "key.modulename": moduleName,
            "key.toolchains": ["com.apple.dt.toolchain.XcodeDefault"],
            "key.synthesizedextensions": 1
        ]
    }
}
