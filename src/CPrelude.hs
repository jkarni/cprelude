{-# LANGUAGE NoImplicitPrelude #-}
module CPrelude
  ( identity
  , module X
  , MIO.MonadIO(liftIO)
  )
  where

import qualified Prelude.Compat as X

import qualified Control.Applicative as X
import qualified Data.Either.Compat as X
  ( either
  , lefts
  , rights
  , isLeft
  , isRight
  , partitionEithers
  )
import qualified Data.Bifunctor as X
  ( Bifunctor (bimap, first, second)
  )
import qualified Data.Semigroup as X
  ( Semigroup((<>), sconcat)
  , Min(..)
  , Max(..)
  )
import qualified Data.Monoid as X
  ( All(..)
  , Any(..)
  , Endo(..)
  , First(..)
  , Last(..)
  , Product(..)
  , Sum(..)
  , Dual(..)
  , Monoid(mempty, mappend, mconcat)
  )
import qualified Data.Proxy as X
  ( Proxy(Proxy)
  , asProxyTypeOf
  )
import qualified Data.Void as X
  ( Void
  , absurd
  )
import qualified Control.Monad.Compat as X
import qualified Data.String.Compat as X
  ( IsString(fromString)
  )
import qualified Data.Function.Compat as X
  ( (&)
  , on
  , fix
  )
import qualified Data.List.Compat as X

-- * Profunctors
import qualified Data.Profunctor as X
  ( Profunctor(dimap, lmap, rmap)
  )

-- * Contravariant
import qualified Data.Functor.Contravariant as X
  ( Contravariant(contramap)
  )
import qualified Data.Functor.Contravariant.Divisible as X
  ( Divisible(..)
  , Decidable
  )


import qualified Control.Monad.IO.Class as MIO

import Generics.Deriving as X (Generic)

-- * Safe
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

