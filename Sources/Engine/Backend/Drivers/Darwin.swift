//
//  Darwin.swift
//  Mini
//
//  Created by Jack Pemberton on 23/4/2026.
//

#if canImport(Metal)
import Metal

internal final class MetalDriver: RenderDriver {
    private var device: MTLDevice?
    private var commandQueue: MTLCommandQueue?

    var isReady: Bool { device != nil }

    func initialize(width: Int, height: Int) throws {
        guard let device = MTLCreateSystemDefaultDevice() else {
            throw BackendError.deviceNotFound
        }
        self.device = device
        self.commandQueue = device.makeCommandQueue()
        print("[MetalDriver] initialized on: \(device.name)")
    }

    func beginFrame() {
        // will fill this out in Unit 3
    }

    func endFrame() {
        // will fill this out in Unit 3
    }

    func shutdown() {
        commandQueue = nil
        device = nil
        print("[MetalDriver] shut down")
    }
}
#endif
