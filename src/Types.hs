{-# LANGUAGE OverloadedStrings, DeriveGeneric #-}

module Types where

import Data.Text (Text)
import GHC.Generics (Generic)
import Data.Aeson 
import Data.Time.Clock

data Note = Note { noteId :: Int 
                 , noteTitle :: Text
                 , numParticipants :: Int
                 , noteCreated :: UTCTime
                 } deriving (Generic, Show)


