class NetworkManager {
  static NetworkManager _instance =NetworkManager._init();
    static NetworkManager get instance {
    if (_instance == null) {
     _instance = NetworkManager._init();
     }
    return _instance ;
    }
    NetworkManager._init();
   
   
}