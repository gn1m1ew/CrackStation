import Foundation

public class CrackStation: Decrypter {
    
    public var lookUptable: [String : String] = [:]
    
    public required init(){
        self.lookUptable = try! CrackStation.loadDictionaryFromDisk()
    }
    
    static func loadDictionaryFromDisk() throws -> [String : String] {
        guard let path = Bundle.module.url(forResource: "data", withExtension: "json") else { return [:] }

        let data = try Data(contentsOf: path)
        let jsonResult = try JSONSerialization.jsonObject(with: data)

        if let lookUptable: Dictionary = jsonResult as? Dictionary<String, String> {
            return lookUptable
        } else {
            return [:]
        }
    }
    
    public func decrypt(shaHash: String) -> String? {

        let answer = lookUptable[shaHash]
            return answer
    }
}
