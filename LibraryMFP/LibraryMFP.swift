//
//  LibraryMFP.swift
//  LibraryMFP
//
//  Created by Raja Rahul on 16/01/19.
//  Copyright © 2019 IBM. All rights reserved.
//

import Foundation
import IBMMobileFirstPlatformFoundation

public func connectToMFP() -> String {
    let serverURL = WLClient.sharedInstance().serverUrl()
    var x="";
    WLAuthorizationManager.sharedInstance().obtainAccessToken(forScope: nil) { (token, error) -> Void in
        
        if (error != nil) {
            //            self.titleLabel.text = "Bummer..."
            //            self.connectionStatusLabel.text = "Failed to connect to MobileFirst Server\n\(serverURL)"
            x="Failed to connect to MobileFirst Server\n\(String(describing: serverURL))";
            print("Did not recieve an access token from server: " + error.debugDescription);
        } else {
            //            self.titleLabel.text = "Yay!"
            //            self.connectionStatusLabel.text = "Connected to MobileFirst Server\n\(serverURL)"
            x="Connected to MobileFirst Server\n\(String(describing: serverURL))";
            print("Recieved the following access token value: " + (token?.value)!);
        }
        
        //        self.testServerButton.isEnabled = true
    }
    return x;
}
