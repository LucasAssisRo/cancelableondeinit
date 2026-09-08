# ``CancelableOnDeinitCocoa``

Ready-made conformances for the Apple SDK frameworks.

## Overview

Importing this module conforms the framework types you already use to
`CancelableOnDeinit`, so a connection, request or session goes straight into a
`@CancelOnDeinit` property without an extension of your own:

```swift
import CancelableOnDeinitCocoa

final class Client {
  @CancelOnDeinit private var connection: NWConnection?

  func connect(to endpoint: NWEndpoint) {
    connection = NWConnection(to: endpoint, using: .tcp)
    connection?.start(queue: .main)
  }
}
```

The connection is cancelled when a second `connect(to:)` replaces it, and again
when the `Client` goes away.

Conformances cover networking through `Network`, `MultipeerConnectivity` and
`WatchConnectivity`; the web through `WebKit` and `AuthenticationServices`;
searches and requests through `MapKit`, `CoreLocation`, `CoreSpotlight`,
`Vision`, `Speech` and `SoundAnalysis`; playback, capture and editing through
`AVFoundation`, `AVFAudio`, `Photos` and `MediaPlayer`; and the long lived
sessions of `ARKit`, `CoreMotion`, `HealthKit`, `HomeKit`, `CallKit`, `GameKit`,
`StoreKit`, `PassKit`, `CoreData`, `QuartzCore` and `AppKit`. Each one forwards
to the framework's own call: `cancel()` where the type has one, otherwise its
single unambiguous `stop`, `invalidate`, `end` or `disconnect`.

Types that already cancel themselves when they are deallocated, such as
`AnyCancellable` and `NSKeyValueObservation`, gain nothing from a conformance
and are absent. So are types offering several competing ways to stop, like
`CLLocationManager` and its five `stopUpdating` methods, and calls that reach
beyond the object itself, like `NEVPNConnection.stopVPNTunnel()`.

Every conformance is behind a `canImport` check and the availability of its own
type, so the module still builds where a framework is absent. The listing below
reflects the platform this documentation was built for.
