# Swift Clean code case study

This project shows how to divide an iOS project into submodules, such that every module corresponds with a 
layer in Uncle Bob's Clean Architecture. It follows the dependency rule, so internal layers don't know 
about the external ones.

The use cases are incrementing and decrementing a number.

The project is divided in: 
- ๐จโ๐ฉโ๐งโ๐ฆ Entities: Number.
- ๐ผ Use cases: Increment and decrement interactors.
- ๐จ Presenters: Adapts the model to what the UI should display.
- ๐ฅ SwiftUI and Xib based views: Is the same interface implemented with two different UI frameworks. The 
project allows switching between UIs by changing the factory function in the composition root.

Any comments are welcome.
