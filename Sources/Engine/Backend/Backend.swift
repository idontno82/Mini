//
//  Backend.swift
//  Mini
//
//  Created by Jack Pemberton on 23/4/2026.
//

internal protocol RenderDriver: AnyObject {
    func initialize(width: Int, height: Int) throws
    func beginFrame()
    func endFrame()
    func shutdown()
    var isReady: Bool { get }
}

internal protocol GPUBuffer: AnyObject {
    var size: Int { get }
    var label: String? { get set }
}

internal protocol GPUTexture: AnyObject {
    var width: Int { get }
    var height: Int { get }
    var label: String? { get set }
}

internal final class BackendContext {
    let driver: any RenderDriver
    init(driver: any RenderDriver) {
        self.driver = driver
    }
}

public enum BackendError: Error {
    case deviceNotFound
    case initializationFailed(String)
    case unsupportedPlatform
}
