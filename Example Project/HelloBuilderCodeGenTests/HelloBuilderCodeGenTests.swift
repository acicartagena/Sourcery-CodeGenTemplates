// 

import XCTest
@testable import HelloBuilderCodeGen

class HelloBuilderCodeGenTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let name = try UserNameBuilder().with(first: "AA").with(last: "CC").build()
        let user = try UserBuilder().with(name: name).with(email: "me@email.com").build()
        XCTAssertNotNil(user)
    }
}
