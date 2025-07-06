module SetupHooks ( setupHooks ) where

import Distribution.XCFramework.SetupHooks

setupHooks :: SetupHooks
setupHooks = xcframeworkHooks "_build/MyHaskellLib.xcframework"

