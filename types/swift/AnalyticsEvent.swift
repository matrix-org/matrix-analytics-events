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

/// All generated event types are nested inside of this struct.
public struct AnalyticsEvent { }

/// An event that can be sent to an analytics service.
public protocol AnalyticsEventProtocol {
    /// The name of the event being reported.
    var eventName: String { get }
    /// A dictionary containing all additional properties that are reported.
    var properties: [String: Any] { get }
}

/// An event that can be sent to an analytics service which represents the display of a screen .
public protocol AnalyticsScreenProtocol {
    /// The name of the event being reported.
    var screenName: AnalyticsEvent.MobileScreen.ScreenName { get }
    /// A dictionary containing all additional properties that are reported.
    var properties: [String: Any] { get }
}
