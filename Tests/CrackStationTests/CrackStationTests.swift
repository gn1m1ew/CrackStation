import XCTest
@testable import CrackStation

final class CrackStationTests: XCTestCase {
//    func testLoadingLookupTableFromDisk1() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct
//        // results.
//        let lookUptable = try! CrackStation.loadDictionaryFromDisk()
//        _ = lookUptable["some_mysterious_hash"]
//
//        XCTAssertNotNil("you got me")
//    }
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
}
