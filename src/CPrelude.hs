{-# LANGUAGE NoImplicitPrelude #-}
module CPrelude
  ( identity
  , module X
  , MIO.MonadIO(liftIO)
  )
  where

import qualified Prelude.Compat as X

import qualified Data.Either.Compat as X
import qualified Data.Bifunctor as X
import qualified Data.Semigroup as X
import qualified Data.Monoid as X
import qualified Data.Proxy as X
import qualified Data.Void as X
import qualified Control.Monad.Compat as X
import qualified Data.String.Compat as X (IsString(fromString))
import qualified Data.Function.Compat as X ((&), on, fix)

import qualified Data.Profunctor as X (Profunctor(dimap, lmap, rmap))
import qualified Data.Functor.Contravariant as X (Contravariant(contramap))
import qualified Data.Functor.Contravariant.Divisible as X (Divisible(..), Decidable)


import qualified Control.Applicative as X

import qualified Control.Monad.IO.Class as MIO

import Generics.Deriving as X (Generic)


import Safe as X
  ( headMay
  , headDef
  , lastMay
  , lastDef
  , tailMay
  , tailDef
  , initMay
  , initDef
  , atMay
  , atDef
  , readMay
  , readDef
  )

import qualified Data.String.Conversions as X (cs, ConvertibleStrings(convertString))

import qualified CPrelude.Debugging as X
import qualified CPrelude.Stringy as X

identity :: a -> a
identity x = x

