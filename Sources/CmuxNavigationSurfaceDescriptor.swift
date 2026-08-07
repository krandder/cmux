import Foundation

/// One tab (panel) inside a workspace, described by both of its identities.
struct CmuxNavigationSurfaceDescriptor: Equatable {
    /// Session-scoped panel identifier (`Panel.id`).
    let panelId: UUID
    /// Previous session-scoped panel identifiers that still identify this
    /// logical surface for copied live-ID links after restore remaps a panel.
    let panelIdAliases: [UUID]
    /// Restart-stable surface identifier (`Panel.stableSurfaceId`).
    let stableSurfaceId: UUID

    init(panelId: UUID, panelIdAliases: [UUID] = [], stableSurfaceId: UUID) {
        self.panelId = panelId
        self.panelIdAliases = panelIdAliases
        self.stableSurfaceId = stableSurfaceId
    }
}
