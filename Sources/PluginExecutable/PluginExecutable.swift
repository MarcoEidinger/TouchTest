//
//  File.swift
//  
//
//  Created by Eidinger, Marco on 4/20/23.
//

import Foundation

@main
struct PluginExecutable {
    static func main() {
        print("Checking Arguments: " + ProcessInfo().arguments.debugDescription)
        print("Checking PWD: " + (Process().currentDirectoryURL?.absoluteString ?? "") )
        print("done")
    }
}
