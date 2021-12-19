module CoolCollections.SimpleMap

total export
SimpleMap : Type -> Type
SimpleMap t = List (String, t)

total export
remove : String -> SimpleMap t -> SimpleMap t
remove key ((k, v) :: kvs) = (if k == key then remove key kvs else (k, v) :: (remove key kvs))
remove key [] = []

total export
insert : String -> t -> SimpleMap t -> SimpleMap t
insert key val map = (key, val) :: (remove key map)

total export
lookup : String -> SimpleMap t -> Maybe t
lookup key ((k, v) :: kvs) = (if k == key then Just v else lookup key kvs)
lookup key [] = Nothing

total export
new : SimpleMap t
new = []

total export
[myshow] Show t => Show (SimpleMap t) where
  show [] = ""
  show ((k, v) :: kvs) = k ++ " => " ++ (show v) ++ "\n" ++ (show @{myshow} kvs)

