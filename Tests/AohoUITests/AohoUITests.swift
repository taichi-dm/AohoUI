import XCTest
import AohoUI
import SwiftUI

final class AohoUITests: XCTestCase {
    func testToken() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        
        // MARK: - CornerRadius
        
        XCTAssertEqual(AohoUI.Token.cornerRadius, 20.0)
        
        // MARK: - Tokens.
        
        XCTAssertEqual(AohoUI.Token.cornerRadius, 20.0)
        XCTAssertEqual(AohoUI.Token.spacing, 20.0)
        XCTAssertEqual(AohoUI.Token.padding, 16.0)
    }
}
