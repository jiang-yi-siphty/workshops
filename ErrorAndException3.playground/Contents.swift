//: Error and Exception
//:------------------------------------------------------------------------------

import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

//:Simple domain error
//This is a kind of error we don't need know reason.
//We just need to know it happened. And, we need do something.
//------------------------------------------------------------------------------
//let num = Int("hello world")
//
//let dic = ["a": 100, "b": 200]
//let element0 = dic["a"]
//let element1 = dic["key_not_exist"]
//
//func process() {
//    guard let element2 = dic["key_not_exist"] else { return }
//    print(element2)
//}


//:Recoverable error
// API request
//------------------------------------------------------------------------------
//class ServerManager {
//    let fileUrl = URL(fileURLWithPath: NSTemporaryDirectory())
//
//    func callAPI() {
//        URLCache.shared.removeAllCachedResponses()
//        let url = URL(string: "https://www.OneFakeUrl.com/0/api")!
////        let url = URL(string: "https://api.ipify.org?format=json")!
////        let url = URL(string: "http://public-api.adsbexchange.com/VirtualRadar/AircraftList.json?lat=33.433638&lng=-112.008113&fDstL=0&fDstU=100")!
//        let task = URLSession.shared.dataTask(with: url) { (data, response, error) -> Void  in
//            if let error = error {
//                // let user beware this error
//                self.showErrorAlert("Network Error: \(error.localizedDescription)")
//            } else if let data = data {
//                let contents = NSString(data:data, encoding: String.Encoding.utf8.rawValue)
//                print(contents!)
//                self.write(data: data, to: self.fileUrl)
//            }
//        }
//        task.resume()
//    }
//
//    func showErrorAlert(_ errorMessage: String) {
//        print(errorMessage)
//    }
//
//    // Write file
//    func write(data: Data, to url: URL) {
//        do {
//            try data.write(to: url)
//        } catch let error as NSError {
//            if error.code == NSFileWriteOutOfSpaceError {
//                removeUnusedFiles()
//                write(data: data, to: url)
//            } else {
//                // Other error, show error to user
//                showErrorAlert("Write file Error: \(error.localizedDescription)")
//            }
//        } catch {
//            showErrorAlert("Error: \(error.localizedDescription)")
//        }
//    }
//
//    func removeUnusedFiles() {
//        //...
//    }
//}
//
//ServerManager().callAPI()


//:Universal error

// 内存不足
let a = [Int](repeating: 10, count: 3)
print(a)
//let b = [Int](repeating: 100, count: .max)

// 调用栈溢出
//func foo() { foo() }
//foo()


//:Logic failure
//// 强制解包一个 `nil` 可选值
//var name: String? = nil
//name!
//
//// 数组越界访问
//let arr = [1,2,3]
//let num = arr[3]
//
//// 计算溢出
//var a = Int.max
//a += 1
//
//// 强制 try 但是出现错误
//try! JSONDecoder().decode(Foo.self, from: Data())

