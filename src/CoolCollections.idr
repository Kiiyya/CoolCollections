module CoolCollections

import CoolCollections.SimpleMap

total export
sample : SimpleMap Nat
sample = insert "Key1" 111 $ insert "SomeOtherKey" 2222 $ new

total export
demo : String
demo = show @{myshow} sample
