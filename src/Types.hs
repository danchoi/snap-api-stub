{-# LANGUAGE OverloadedStrings, DeriveGeneric #-}

module Types where

import Control.Applicative
import Data.Text (Text)
import GHC.Generics (Generic)
import Data.Aeson 
import Data.Time.Clock
import Database.PostgreSQL.Simple.FromRow


data Note = Note { noteId :: Int 
                 , noteTitle :: Text
                 , noteCreated :: UTCTime
                 } deriving (Generic, Show)

instance ToJSON Note where
    toJSON note = object [ "note_id" .= (noteId note)
                         , "title" .= (noteTitle note)
                         , "created" .= (noteCreated note) ]

instance FromRow Note where
    fromRow = Note <$> field <*> field <*> field
