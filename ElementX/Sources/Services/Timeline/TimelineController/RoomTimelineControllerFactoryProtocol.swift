//
// Copyright 2022-2024 New Vector Ltd.
//
// SPDX-License-Identifier: AGPL-3.0-only
// Please see LICENSE in the repository root for full details.
//

import Foundation

@MainActor
protocol RoomTimelineControllerFactoryProtocol {
    func buildRoomTimelineController(roomProxy: JoinedRoomProxyProtocol,
                                     initialFocussedEventID: String?,
                                     timelineItemFactory: RoomTimelineItemFactoryProtocol,
                                     mediaProvider: MediaProviderProtocol) -> RoomTimelineControllerProtocol
    func buildRoomPinnedTimelineController(roomProxy: JoinedRoomProxyProtocol,
                                           timelineItemFactory: RoomTimelineItemFactoryProtocol,
                                           mediaProvider: MediaProviderProtocol) async -> RoomTimelineControllerProtocol?
}

// sourcery: AutoMockable
extension RoomTimelineControllerFactoryProtocol { }
