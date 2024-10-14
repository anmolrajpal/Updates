//
//  Updates+UIDevice.swift
//  Updates
//
//  Created by Ross Butler on 8/8/19.
//

#if canImport(UIKit)
import UIKit

public extension Updates {
   static func checkForUpdates(completion: @escaping (UpdatesResult) -> Void) {
      Updates.checkForUpdates(currentOSVersion: UIDevice.current.systemVersion, completion: completion)
   }
}
#endif

#if canImport(AppKit)
import AppKit

public extension Updates {
   static func checkForUpdates(completion: @escaping (UpdatesResult) -> Void) {
      let version = ProcessInfo.processInfo.operatingSystemVersion
      let versionString = "\(version.majorVersion).\(version.minorVersion).\(version.patchVersion)"
      Updates.checkForUpdates(currentOSVersion: versionString, completion: completion)
   }
}
#endif
