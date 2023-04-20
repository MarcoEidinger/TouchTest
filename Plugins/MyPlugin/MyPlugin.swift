//
//  File.swift
//  
//
//  Created by Eidinger, Marco on 4/20/23.
//

import Foundation
import PackagePlugin

@main
struct MyPlugin: BuildToolPlugin {
    func createBuildCommands(context: PluginContext, target: Target) async throws -> [Command] {
        return [
            .buildCommand(
                displayName: "Protocol Extraction!",
                executable: try context.tool(named: "PluginExecutable").path,
                arguments: [
                    "FindThis",
                    "🤷",
                    "--input",
                    "🤷",
                    "--output",
                    "🤷"
                ],
                environment: ["IN_PROCESS_SOURCEKIT": "YES"],
                outputFiles: []
            )
        ]
    }
}
