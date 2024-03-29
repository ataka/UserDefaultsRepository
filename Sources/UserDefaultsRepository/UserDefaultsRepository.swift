// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public final class UserDefaultsRepository {
    public protocol KeyConvertible {
        var key: Key { get }
    }
    public struct Key: RawRepresentable {
        public let rawValue: String
        public init(rawValue: String) {
            self.rawValue = rawValue
        }
    }

    public static let shared: UserDefaultsRepository = UserDefaultsRepository()
    private let userDefaults: UserDefaults = UserDefaults()

    // MARK: Wrapper functions

    public func string(for key: any KeyConvertible) -> String? { string(for: key.key) }
    public func set(_ value: String, for key: any KeyConvertible) { set(value, for: key.key) }

    func string(for key: Key) -> String? { userDefaults.string(forKey: key.rawValue) }
    func set(_ value: String, for key: Key) { userDefaults.setValue(value, forKey: key.rawValue) }

    public func remove(for key: any KeyConvertible) { remove(for: key.key) }
    func remove(for key: Key) {
        userDefaults.removeObject(forKey: key.rawValue)
    }
}
