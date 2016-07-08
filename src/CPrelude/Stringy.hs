module CPrelude.Stringy where

import qualified Data.ByteString.Lazy
import qualified Data.ByteString as X (ByteString)

-- Text
import Data.Text as X (Text)
import qualified Data.Text.Lazy
import qualified Data.Text.IO
import qualified Data.Text as T

import TextShow (TextShow(..))

type LText = Data.Text.Lazy.Text
type LByteString = Data.ByteString.Lazy.ByteString
