import XCTest
@testable import CrackStation

final class CrackStationTests: XCTestCase {
    func testLoadingLookupTableFromDisk() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let Hash1 = "e3f284cae2097a55ddbaf92f45b91ea8506b49bf"
        let answer = CrackStation().decrypt(shaHash: Hash1)
        XCTAssertEqual(answer, "bd")
    }
    func testLoadingLookupTableFromDisk1() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let Hash2 = "86f7e437faa5a7fce15d1ddcb9eaeaea377667b8"
        let answer = CrackStation().decrypt(shaHash: Hash2)
        XCTAssertEqual(answer, "a")
    }
    func testLoadingLookupTableFromDisk3() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let Hash1 = "df211ccdd94a63e0bcb9e6ae427a249484a49d60"
        let answer = CrackStation().decrypt(shaHash: Hash1)
        XCTAssertEqual(answer, "as")
    }
    func testLoadingLookupTableFromDisk4() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let Hash1 = "7e240de74fb1ed08fa08d38063f6a6a91462a815"
        let answer = CrackStation().decrypt(shaHash: Hash1)
        XCTAssertEqual(answer, "aaa")
    }
    func testLoadingLookupTableFromDisk5() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let Hash1 = "eb7c8e5b7b855ed2712d5ffcc21b68d5e3b8a16b"
        let answer = CrackStation().decrypt(shaHash: Hash1)
        XCTAssertEqual(answer, "aEA")
    }
    func testLoadingLookupTableFromDisk6() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let Hash1 = "aee2326864930b66ffd5c055164acbad9cefde0a"
        let answer = CrackStation().decrypt(shaHash: Hash1)
        XCTAssertEqual(answer, "aC!")
    }

}
