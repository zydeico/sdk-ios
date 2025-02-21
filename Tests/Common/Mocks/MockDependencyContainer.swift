//
//  DependencyContainerMock.swift
//  MercadoPagoSDK-iOS
//
//  Created by Guilherme Prata Costa on 14/02/25.
//
import MPAnalytics
@testable import MPCore
import XCTest

package struct MockDependencyContainer: Sendable, HasKeyChain, HasNetwork, HasAnalytics {
    package let keyChainService: KeyChainManagerProtocol

    package let networkService: NetworkServiceProtocol

    package var analytics: AnalyticsInterface

    package let mockSession: MockURLSession
    package let mockKeyChainService: MockKeyChainService
    package let mockAnalytics: MockAnalytics

    package init(
        session: MockURLSession = MockURLSession(),
        keyChainService: MockKeyChainService = MockKeyChainService(),
        analytics: MockAnalytics = MockAnalytics()
    ) {
        self.mockSession = session
        self.mockKeyChainService = keyChainService
        self.mockAnalytics = analytics

        self.networkService = NetworkService(session: session)
        self.keyChainService = keyChainService
        self.analytics = analytics
    }
}
