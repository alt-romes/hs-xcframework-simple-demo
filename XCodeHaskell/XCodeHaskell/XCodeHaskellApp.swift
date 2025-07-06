//
//  XCodeHaskellApp.swift
//  XCodeHaskell
//
//  Created by Rodrigo Mesquita on 06/07/2025.
//

import SwiftUI
import Haskell.Foreign.Rts

@main
struct XCodeHaskellApp: App {
    init() {
        hs_init(nil, nil)

        NotificationCenter.default
          .addObserver(forName: NSApplication.willTerminateNotification,
                       object: nil, queue: .main) { _ in
          hs_exit()
        }
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
