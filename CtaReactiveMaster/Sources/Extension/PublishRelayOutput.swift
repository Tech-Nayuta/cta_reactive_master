//
//  PublishRelayOutput.swift
//  CtaReactiveMaster
//
//  Created by 化田晃平 on R 3/05/01.
//

import RxRelay
import RxSwift

@propertyWrapper
final class PublishRelayOutput<Element> {

    fileprivate let relay: PublishRelay<Element>
    fileprivate let observable: Observable<Element>

    var wrappedValue: Observable<Element> {
        observable
    }
    var projectedValue: PublishRelay<Element> {
        relay
    }

    init() {
        relay = .init()
        observable = relay.asObservable()
    }
}

extension ObservableType {
    func bind(to relayWrapper: PublishRelayOutput<Element>) -> Disposable {
        bind(to: relayWrapper.relay)
    }
}

