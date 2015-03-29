class Connection {
    
    class var sharedInstance: Connection {
        struct Static {
            static let instance: Connection = Connection()
        }
        return Static.instance
    }
    
    func start() -> String {
        return "Connection started"
    }
    
}