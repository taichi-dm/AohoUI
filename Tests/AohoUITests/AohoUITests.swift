import XCTest
import AohoUI
import SwiftUI

final class AohoUITests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(AohoUI.aoho_green, Color("aoho_green"))
        XCTAssertEqual(AohoUI.cornerRadius, 20.0)
    }
}
