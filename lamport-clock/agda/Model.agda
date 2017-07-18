module Model where

open import Prelude




record PEvent : Set where
  field
    name : String
    localTime : Nat


infixr 5 _↦_

record _↦_  (a b : PEvent) : Set where
  field
    wellOrdered : LessNat (PEvent.localTime a) (PEvent.localTime b)
