//
//  Engine.swift
//  Mini
//
//  Created by Jack Pemberton on 23/4/2026.
//

public final class Engine {
    private var context: BackendContext?

    public init() {}

    public func start(width: Int, height: Int) throws {
        let driver = try DriverFactory.makeDriver()
        try driver.initialize(width: width, height: height)
        context = BackendContext(driver: driver)
        print("[Engine] started")
    }

    public func shutdown() {
        context?.driver.shutdown()
        context = nil
        print("[Engine] shut down")
    }
}
