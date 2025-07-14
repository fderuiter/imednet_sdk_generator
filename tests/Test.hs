{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE PartialTypeSignatures #-}

module Main where

import Data.Typeable (Proxy(..))
import Test.Hspec
import Test.Hspec.QuickCheck

import PropMime
import Instances ()

import MednetEDC.Model
import MednetEDC.MimeTypes

main :: IO ()
main =
  hspec $ modifyMaxSize (const 10) $ do
    describe "JSON instances" $ do
      pure ()
      propMimeEq MimeJSON (Proxy :: Proxy Coding)
      propMimeEq MimeJSON (Proxy :: Proxy CodingList)
      propMimeEq MimeJSON (Proxy :: Proxy ComponentsSchemasIntervalFormsItem)
      propMimeEq MimeJSON (Proxy :: Proxy ComponentsSchemasMetadataError)
      propMimeEq MimeJSON (Proxy :: Proxy ComponentsSchemasRecordCreateRequestItem)
      propMimeEq MimeJSON (Proxy :: Proxy Form)
      propMimeEq MimeJSON (Proxy :: Proxy FormList)
      propMimeEq MimeJSON (Proxy :: Proxy InlineObject)
      propMimeEq MimeJSON (Proxy :: Proxy InlineObject1)
      propMimeEq MimeJSON (Proxy :: Proxy InlineObject2)
      propMimeEq MimeJSON (Proxy :: Proxy InlineObject3)
      propMimeEq MimeJSON (Proxy :: Proxy InlineObject4)
      propMimeEq MimeJSON (Proxy :: Proxy InlineObject5)
      propMimeEq MimeJSON (Proxy :: Proxy Interval)
      propMimeEq MimeJSON (Proxy :: Proxy IntervalList)
      propMimeEq MimeJSON (Proxy :: Proxy Job)
      propMimeEq MimeJSON (Proxy :: Proxy Keyword)
      propMimeEq MimeJSON (Proxy :: Proxy Metadata)
      propMimeEq MimeJSON (Proxy :: Proxy Pagination)
      propMimeEq MimeJSON (Proxy :: Proxy Query)
      propMimeEq MimeJSON (Proxy :: Proxy QueryComment)
      propMimeEq MimeJSON (Proxy :: Proxy QueryList)
      propMimeEq MimeJSON (Proxy :: Proxy Record)
      propMimeEq MimeJSON (Proxy :: Proxy RecordJobStatus)
      propMimeEq MimeJSON (Proxy :: Proxy RecordList)
      propMimeEq MimeJSON (Proxy :: Proxy RecordRevision)
      propMimeEq MimeJSON (Proxy :: Proxy RecordRevisionList)
      propMimeEq MimeJSON (Proxy :: Proxy Role)
      propMimeEq MimeJSON (Proxy :: Proxy Site)
      propMimeEq MimeJSON (Proxy :: Proxy SiteList)
      propMimeEq MimeJSON (Proxy :: Proxy Sort)
      propMimeEq MimeJSON (Proxy :: Proxy Study)
      propMimeEq MimeJSON (Proxy :: Proxy StudyList)
      propMimeEq MimeJSON (Proxy :: Proxy Subject)
      propMimeEq MimeJSON (Proxy :: Proxy SubjectList)
      propMimeEq MimeJSON (Proxy :: Proxy User)
      propMimeEq MimeJSON (Proxy :: Proxy UserList)
      propMimeEq MimeJSON (Proxy :: Proxy Variable)
      propMimeEq MimeJSON (Proxy :: Proxy VariableList)
      propMimeEq MimeJSON (Proxy :: Proxy Visit)
      propMimeEq MimeJSON (Proxy :: Proxy VisitList)
      
