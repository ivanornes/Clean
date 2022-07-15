# Swift Clean code case study

This project shows how to divide an iOS project into submodules, such that every module corresponds with a 
layer in Uncle Bob's Clean Architecture. It follows the dependency rule, so internal layers don't know 
about the external ones.

The use cases are incrementing and decrementing a number.

The project is divided in: 
- Entities: Number.
- Use cases: Increment and decrement interactors.
- Presenters: Adapts the model to what the UI should display.
- SwiftUI and Xib based views: Is the same interface implemented with two different UI frameworks. The 
project allows switching between UIs by changing the factory function in the composition root.

Any comments are welcome.
