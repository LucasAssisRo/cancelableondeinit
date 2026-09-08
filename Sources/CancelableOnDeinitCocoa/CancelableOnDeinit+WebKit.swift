#if canImport(WebKit)
  import CancelableOnDeinit
  import Foundation
  import WebKit

  @available(iOS 14.5, macOS 11.3, visionOS 1.0, *)
  extension WKDownload: CancelableOnDeinit {
    public nonisolated func cancelOnDeinit() {
      onMainActor { self.cancel(nil) }
    }
  }

  extension WKWebView: CancelableOnDeinit {
    public nonisolated func cancelOnDeinit() {
      onMainActor { self.stopLoading() }
    }
  }

  private func onMainActor(_ body: @escaping @MainActor @Sendable () -> Void) {
    if Thread.isMainThread {
      MainActor.assumeIsolated(body)
    } else {
      Task { @MainActor in body() }
    }
  }
#endif
