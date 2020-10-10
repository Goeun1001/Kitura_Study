import Kitura
import HeliumLogger
import LoggerAPI

public class App {
  
  // 1
  let router = Router()
  
  public func run() {
    // 2
    Kitura.addHTTPServer(onPort: 8080, with: router)
    // 3
    Kitura.run()
  }
}

HeliumLogger.use()

let app = App()
app.run()
