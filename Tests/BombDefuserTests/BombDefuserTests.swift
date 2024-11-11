import Testing
@testable import BombDefuser

struct BombDefuserTests {
    
    let stringify = { (tuple: (String, String, String)) in "\(tuple)" }
    
    @Test func testFlip() async throws {
        let expected = ("Dabba", "Yabba", "Doo")
        let got = flip(("Yabba", "Dabba", "Doo"))
        #expect(stringify(expected) == stringify(got))
    }
    
    @Test func testRotate() async throws {
        let expected = ("Dooby", "Doo", "Scooby")
        let got = rotate(("Scooby", "Dooby", "Doo"))
        #expect(stringify(expected) == stringify(got))
    }
    
    @Test func testShuffle1() async throws {
        let wires = ("Red", "Yellow", "Black")
        let shuffle = makeShuffle(flipper: flip, rotator: rotate)
        let expected = ("Yellow", "Black", "Red")
        let got = shuffle(113, wires)
        #expect(stringify(expected) == stringify(got))
    }
    
    @Test func testShuffle2() async throws {
        let wires = ("Purple", "Cyan", "Marigold")
        let shuffle = makeShuffle(flipper: flip, rotator: rotate)
        let expected = ("Marigold", "Cyan", "Purple")
        let got = shuffle(253, wires)
        #expect(stringify(expected) == stringify(got))
    }
    
    @Test func testShuffle3() async throws {
        let wires = ("Brown", "Orange", "White")
        let shuffle = makeShuffle(flipper: flip, rotator: rotate)
        let expected = ("Brown", "Orange", "White")
        let got = shuffle(0, wires)
        #expect(stringify(expected) == stringify(got))
    }

}
