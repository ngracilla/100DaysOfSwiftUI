import Cocoa
import SwiftUI
import PlaygroundSupport


let checkTotal = 49.99

Text(checkTotal, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))

