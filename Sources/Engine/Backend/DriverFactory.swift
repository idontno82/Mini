//
//  DriverFactory.swift
//  Mini
//
//  Created by Jack Pemberton on 23/4/2026.
//

internal enum DriverFactory {
    static func makeDriver() throws -> any RenderDriver {
        #if canImport(Metal)
        return MetalDriver()
        #else
        throw BackendError.unsupportedPlatform
        #endif
    }
}

i have renamed the api folder to "Drivers" and your DriverFactory to "Drivers.swift" also i am targeting .v26 macos for the macos development and am using the latest version of sswift which includes import Testing so redo the Test file with that import.
