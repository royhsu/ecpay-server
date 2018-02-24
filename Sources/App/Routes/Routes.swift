import Vapor

extension Droplet {
    func setupRoutes() throws {
        
        post("payment/callback") { request in
            
            return request.description
            
        }
        
        get("hello") { req in
            var json = JSON()
            try json.set("hello", "world")
            return json
        }
        
        try resource("posts", PostController.self)
        
    }
}
