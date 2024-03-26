//
// Copyright 2021 New Vector Ltd
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import Foundation

// GENERATED FILE, DO NOT EDIT. FOR MORE INFORMATION VISIT
// https://github.com/matrix-org/matrix-analytics-events/

/// Super Properties are properties associated with events that are set once and then sent with every capture call, be it a $pageview, an autocaptured button click, or anything else.
extension AnalyticsEvent {
    public struct SuperProperties {

        /// Used by web to identify the platform (Web Platform/Electron Platform)
        public let appPlatform: String?
        /// Which crypto backend is the client currently using.
        public let cryptoSDK: CryptoSDK?
        /// Version of the crypto backend.
        public let cryptoSDKVersion: String?

        public init(appPlatform: String?, cryptoSDK: CryptoSDK?, cryptoSDKVersion: String?) {
            self.appPlatform = appPlatform
            self.cryptoSDK = cryptoSDK
            self.cryptoSDKVersion = cryptoSDKVersion
        }

        public enum CryptoSDK: String {
            /// Legacy crypto backend specific to each platform.
            case Legacy
            /// Cross-platform crypto backend written in Rust.
            case Rust
        }

        public var properties: [String: Any?] {
            return [
                "appPlatform": appPlatform,
                "cryptoSDK": cryptoSDK?.rawValue,
                "cryptoSDKVersion": cryptoSDKVersion
            ]
        }
    }
}
