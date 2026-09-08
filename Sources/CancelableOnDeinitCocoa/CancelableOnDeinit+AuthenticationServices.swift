#if canImport(AuthenticationServices) && !os(watchOS)
  import AuthenticationServices
  import CancelableOnDeinit

  @available(iOS 16.0, macOS 13.0, tvOS 18.0, visionOS 1.0, *)
  extension ASAuthorizationController: CancelableOnDeinit {
    public func cancelOnDeinit() {
      cancel()
    }
  }

  #if !os(tvOS)
    extension ASWebAuthenticationSession: CancelableOnDeinit {
      public func cancelOnDeinit() {
        cancel()
      }
    }
  #endif
#endif
