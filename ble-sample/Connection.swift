import CoreBluetooth

class Connection: NSObject, CBCentralManagerDelegate {
    
    var centralManager: CBCentralManager!
    
    override init() {
        super.init()
        self.startScan()
    }
    
    func startScan() {
        println("Connection started")
        
        self.centralManager = CBCentralManager(delegate: self, queue: nil)
    }

    func stopScan() {
        self.centralManager.stopScan()
    }
    
    func centralManagerDidUpdateState(central: CBCentralManager!) {
        println("state: \(central.state)")
        switch (central.state) {
        case CBCentralManagerState.PoweredOn:
            self.centralManager.scanForPeripheralsWithServices(nil, options: nil)
            break
            
        default:
            break
        }
    }
    
    func centralManager(central: CBCentralManager,
        didDiscoverPeripheral peripheral: CBPeripheral!,
        advertisementData: [NSObject : AnyObject]!,
        RSSI: NSNumber!)
    {
        println("Found device: \(peripheral)")
    }
}