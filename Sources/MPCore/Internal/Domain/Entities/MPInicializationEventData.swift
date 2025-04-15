//
//  MPInicializationEventData.swift
//  MercadoPagoSDK-iOS
//
//  Created by Guilherme Prata Costa on 12/02/25.
//

#if SWIFT_PACKAGE
    import MPAnalytics
#endif

struct MPInicializationEventData: AnalyticsEventData {
    let locale: String
    let distribution: String
    let minimumVersionApp: String

    func toDictionary() -> [String: any Sendable] {
        return [
            "locale": self.locale,
            "distribution": self.distribution,
            "minimum_version_app": self.minimumVersionApp
        ]
    }
}
