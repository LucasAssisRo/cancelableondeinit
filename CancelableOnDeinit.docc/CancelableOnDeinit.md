# ``CancelableOnDeinit``

Contains a convenience protocol to cancel operations on `deinit`. 

## Usage

```swift
extension Foo: CancelableOnDeinit {
  func cancelOnDeinit() { cancel() }
}

@CancelOnDeinit var bar = Foo()
$bar()
```

## Topics

### Cancelable
- ``CancelableOnDeinit/CancelableOnDeinit``

### Property Wrapper
- ``CancelOnDeinit``
