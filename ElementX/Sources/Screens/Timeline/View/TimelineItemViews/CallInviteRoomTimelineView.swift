//
// Copyright 2024 New Vector Ltd.
//
// SPDX-License-Identifier: AGPL-3.0-only
// Please see LICENSE in the repository root for full details.
//

import Compound
import Foundation
import SwiftUI

struct CallInviteRoomTimelineView: View {
    let timelineItem: CallInviteRoomTimelineItem
    
    var body: some View {
        Label {
            Text(L10n.screenRoomTimelineLegacyCall)
        } icon: {
            CompoundIcon(\.voiceCall, size: .medium, relativeTo: .compound.bodyMD)
        }
        .font(.compound.bodyMD)
        .foregroundColor(.compound.textSecondary)
        .frame(maxWidth: .infinity, alignment: .center)
        .padding()
    }
}

struct CallInviteRoomTimelineView_Previews: PreviewProvider, TestablePreview {
    static let viewModel = TimelineViewModel.mock
    
    static var previews: some View {
        body.environmentObject(viewModel.context)
    }
    
    static var body: some View {
        CallInviteRoomTimelineView(timelineItem: .init(id: .randomEvent,
                                                       timestamp: "Now",
                                                       isEditable: false,
                                                       canBeRepliedTo: false,
                                                       sender: .init(id: "Bob")))
    }
}
