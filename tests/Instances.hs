{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-unused-imports -fno-warn-unused-matches #-}

module Instances where

import MednetEDC.Model
import MednetEDC.Core

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.HashMap.Strict as HM
import qualified Data.Set as Set
import qualified Data.Text as T
import qualified Data.Time as TI
import qualified Data.Vector as V
import Data.String (fromString)

import Control.Monad
import Data.Char (isSpace)
import Data.List (sort)
import Test.QuickCheck

import ApproxEq

instance Arbitrary T.Text where
  arbitrary = T.pack <$> arbitrary

instance Arbitrary TI.Day where
  arbitrary = TI.ModifiedJulianDay . (2000 +) <$> arbitrary
  shrink = (TI.ModifiedJulianDay <$>) . shrink . TI.toModifiedJulianDay

instance Arbitrary TI.UTCTime where
  arbitrary =
    TI.UTCTime <$> arbitrary <*> (TI.secondsToDiffTime <$> choose (0, 86401))

instance Arbitrary BL.ByteString where
    arbitrary = BL.pack <$> arbitrary
    shrink xs = BL.pack <$> shrink (BL.unpack xs)

instance Arbitrary ByteArray where
    arbitrary = ByteArray <$> arbitrary
    shrink (ByteArray xs) = ByteArray <$> shrink xs

instance Arbitrary Binary where
    arbitrary = Binary <$> arbitrary
    shrink (Binary xs) = Binary <$> shrink xs

instance Arbitrary DateTime where
    arbitrary = DateTime <$> arbitrary
    shrink (DateTime xs) = DateTime <$> shrink xs

instance Arbitrary Date where
    arbitrary = Date <$> arbitrary
    shrink (Date xs) = Date <$> shrink xs

#if MIN_VERSION_aeson(2,0,0)
#else
-- | A naive Arbitrary instance for A.Value:
instance Arbitrary A.Value where
  arbitrary = arbitraryValue
#endif

arbitraryValue :: Gen A.Value
arbitraryValue =
  frequency [(3, simpleTypes), (1, arrayTypes), (1, objectTypes)]
    where
      simpleTypes :: Gen A.Value
      simpleTypes =
        frequency
          [ (1, return A.Null)
          , (2, liftM A.Bool (arbitrary :: Gen Bool))
          , (2, liftM (A.Number . fromIntegral) (arbitrary :: Gen Int))
          , (2, liftM (A.String . T.pack) (arbitrary :: Gen String))
          ]
      mapF (k, v) = (fromString k, v)
      simpleAndArrays = frequency [(1, sized sizedArray), (4, simpleTypes)]
      arrayTypes = sized sizedArray
      objectTypes = sized sizedObject
      sizedArray n = liftM (A.Array . V.fromList) $ replicateM n simpleTypes
      sizedObject n =
        liftM (A.object . map mapF) $
        replicateM n $ (,) <$> (arbitrary :: Gen String) <*> simpleAndArrays

-- | Checks if a given list has no duplicates in _O(n log n)_.
hasNoDups
  :: (Ord a)
  => [a] -> Bool
hasNoDups = go Set.empty
  where
    go _ [] = True
    go s (x:xs)
      | s' <- Set.insert x s
      , Set.size s' > Set.size s = go s' xs
      | otherwise = False

instance ApproxEq TI.Day where
  (=~) = (==)

arbitraryReduced :: Arbitrary a => Int -> Gen a
arbitraryReduced n = resize (n `div` 2) arbitrary

arbitraryReducedMaybe :: Arbitrary a => Int -> Gen (Maybe a)
arbitraryReducedMaybe 0 = elements [Nothing]
arbitraryReducedMaybe n = arbitraryReduced n

arbitraryReducedMaybeValue :: Int -> Gen (Maybe A.Value)
arbitraryReducedMaybeValue 0 = elements [Nothing]
arbitraryReducedMaybeValue n = do
  generated <- arbitraryReduced n
  if generated == Just A.Null
    then return Nothing
    else return generated

-- * Models

instance Arbitrary Coding where
  arbitrary = sized genCoding

genCoding :: Int -> Gen Coding
genCoding n =
  Coding
    <$> arbitraryReducedMaybe n -- codingStudyKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- codingSiteName :: Maybe Text
    <*> arbitraryReducedMaybe n -- codingSiteId :: Maybe Int
    <*> arbitraryReducedMaybe n -- codingSubjectId :: Maybe Int
    <*> arbitraryReducedMaybe n -- codingSubjectKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- codingFormId :: Maybe Int
    <*> arbitraryReducedMaybe n -- codingFormName :: Maybe Text
    <*> arbitraryReducedMaybe n -- codingFormKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- codingRevision :: Maybe Int
    <*> arbitraryReducedMaybe n -- codingRecordId :: Maybe Int
    <*> arbitraryReducedMaybe n -- codingVariable :: Maybe Text
    <*> arbitraryReducedMaybe n -- codingValue :: Maybe Text
    <*> arbitraryReducedMaybe n -- codingCodingId :: Maybe Int
    <*> arbitraryReducedMaybe n -- codingCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- codingCodedBy :: Maybe Text
    <*> arbitraryReducedMaybe n -- codingReason :: Maybe Text
    <*> arbitraryReducedMaybe n -- codingDictionaryName :: Maybe Text
    <*> arbitraryReducedMaybe n -- codingDictionaryVersion :: Maybe Text
    <*> arbitraryReducedMaybe n -- codingDateCoded :: Maybe Text
  
instance Arbitrary CodingList where
  arbitrary = sized genCodingList

genCodingList :: Int -> Gen CodingList
genCodingList n =
  CodingList
    <$> arbitraryReducedMaybe n -- codingListMetadata :: Maybe Metadata
    <*> arbitraryReducedMaybe n -- codingListPagination :: Maybe Pagination
    <*> arbitraryReducedMaybe n -- codingListData :: Maybe [Coding]
  
instance Arbitrary ComponentsSchemasIntervalFormsItem where
  arbitrary = sized genComponentsSchemasIntervalFormsItem

genComponentsSchemasIntervalFormsItem :: Int -> Gen ComponentsSchemasIntervalFormsItem
genComponentsSchemasIntervalFormsItem n =
  ComponentsSchemasIntervalFormsItem
    <$> arbitraryReducedMaybe n -- componentsSchemasIntervalFormsItemFormId :: Maybe Int
    <*> arbitraryReducedMaybe n -- componentsSchemasIntervalFormsItemFormKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- componentsSchemasIntervalFormsItemFormName :: Maybe Text
  
instance Arbitrary ComponentsSchemasMetadataError where
  arbitrary = sized genComponentsSchemasMetadataError

genComponentsSchemasMetadataError :: Int -> Gen ComponentsSchemasMetadataError
genComponentsSchemasMetadataError n =
  ComponentsSchemasMetadataError
    <$> arbitraryReducedMaybe n -- componentsSchemasMetadataErrorMessage :: Maybe Text
  
instance Arbitrary ComponentsSchemasRecordCreateRequestItem where
  arbitrary = sized genComponentsSchemasRecordCreateRequestItem

genComponentsSchemasRecordCreateRequestItem :: Int -> Gen ComponentsSchemasRecordCreateRequestItem
genComponentsSchemasRecordCreateRequestItem n =
  ComponentsSchemasRecordCreateRequestItem
    <$> arbitrary -- componentsSchemasRecordCreateRequestItemFormKey :: Text
    <*> arbitraryReducedMaybe n -- componentsSchemasRecordCreateRequestItemFormId :: Maybe Int
    <*> arbitraryReducedMaybe n -- componentsSchemasRecordCreateRequestItemSiteName :: Maybe Text
    <*> arbitraryReducedMaybe n -- componentsSchemasRecordCreateRequestItemSiteId :: Maybe Int
    <*> arbitraryReducedMaybe n -- componentsSchemasRecordCreateRequestItemSubjectKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- componentsSchemasRecordCreateRequestItemSubjectId :: Maybe Int
    <*> arbitraryReducedMaybe n -- componentsSchemasRecordCreateRequestItemSubjectOid :: Maybe Text
    <*> arbitraryReducedMaybe n -- componentsSchemasRecordCreateRequestItemIntervalName :: Maybe Text
    <*> arbitraryReducedMaybe n -- componentsSchemasRecordCreateRequestItemIntervalId :: Maybe Int
    <*> arbitraryReducedMaybe n -- componentsSchemasRecordCreateRequestItemRecordId :: Maybe Int
    <*> arbitraryReducedMaybe n -- componentsSchemasRecordCreateRequestItemRecordOid :: Maybe Text
    <*> arbitraryReduced n -- componentsSchemasRecordCreateRequestItemData :: (Map.Map String AnyType)
  
instance Arbitrary Form where
  arbitrary = sized genForm

genForm :: Int -> Gen Form
genForm n =
  Form
    <$> arbitraryReducedMaybe n -- formStudyKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- formFormId :: Maybe Int
    <*> arbitraryReducedMaybe n -- formFormKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- formFormName :: Maybe Text
    <*> arbitraryReducedMaybe n -- formFormType :: Maybe Text
    <*> arbitraryReducedMaybe n -- formRevision :: Maybe Int
    <*> arbitraryReducedMaybe n -- formEmbeddedLog :: Maybe Bool
    <*> arbitraryReducedMaybe n -- formEnforceOwnership :: Maybe Bool
    <*> arbitraryReducedMaybe n -- formUserAgreement :: Maybe Bool
    <*> arbitraryReducedMaybe n -- formSubjectRecordReport :: Maybe Bool
    <*> arbitraryReducedMaybe n -- formUnscheduledVisit :: Maybe Bool
    <*> arbitraryReducedMaybe n -- formOtherForms :: Maybe Bool
    <*> arbitraryReducedMaybe n -- formEproForm :: Maybe Bool
    <*> arbitraryReducedMaybe n -- formAllowCopy :: Maybe Bool
    <*> arbitraryReducedMaybe n -- formDisabled :: Maybe Bool
    <*> arbitraryReducedMaybe n -- formDateCreated :: Maybe Text
    <*> arbitraryReducedMaybe n -- formDateModified :: Maybe Text
  
instance Arbitrary FormList where
  arbitrary = sized genFormList

genFormList :: Int -> Gen FormList
genFormList n =
  FormList
    <$> arbitraryReducedMaybe n -- formListMetadata :: Maybe Metadata
    <*> arbitraryReducedMaybe n -- formListPagination :: Maybe Pagination
    <*> arbitraryReducedMaybe n -- formListData :: Maybe [Form]
  
instance Arbitrary InlineObject where
  arbitrary = sized genInlineObject

genInlineObject :: Int -> Gen InlineObject
genInlineObject n =
  InlineObject
    <$> arbitraryReducedMaybe n -- inlineObjectMetadata :: Maybe Metadata
  
instance Arbitrary InlineObject1 where
  arbitrary = sized genInlineObject1

genInlineObject1 :: Int -> Gen InlineObject1
genInlineObject1 n =
  InlineObject1
    <$> arbitraryReducedMaybe n -- inlineObject1Metadata :: Maybe Metadata
  
instance Arbitrary InlineObject2 where
  arbitrary = sized genInlineObject2

genInlineObject2 :: Int -> Gen InlineObject2
genInlineObject2 n =
  InlineObject2
    <$> arbitraryReducedMaybe n -- inlineObject2Metadata :: Maybe Metadata
  
instance Arbitrary InlineObject3 where
  arbitrary = sized genInlineObject3

genInlineObject3 :: Int -> Gen InlineObject3
genInlineObject3 n =
  InlineObject3
    <$> arbitraryReducedMaybe n -- inlineObject3Metadata :: Maybe Metadata
  
instance Arbitrary InlineObject4 where
  arbitrary = sized genInlineObject4

genInlineObject4 :: Int -> Gen InlineObject4
genInlineObject4 n =
  InlineObject4
    <$> arbitraryReducedMaybe n -- inlineObject4Metadata :: Maybe Metadata
  
instance Arbitrary InlineObject5 where
  arbitrary = sized genInlineObject5

genInlineObject5 :: Int -> Gen InlineObject5
genInlineObject5 n =
  InlineObject5
    <$> arbitraryReducedMaybe n -- inlineObject5Metadata :: Maybe Metadata
  
instance Arbitrary Interval where
  arbitrary = sized genInterval

genInterval :: Int -> Gen Interval
genInterval n =
  Interval
    <$> arbitraryReducedMaybe n -- intervalStudyKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- intervalIntervalId :: Maybe Int
    <*> arbitraryReducedMaybe n -- intervalIntervalName :: Maybe Text
    <*> arbitraryReducedMaybe n -- intervalIntervalDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- intervalIntervalSequence :: Maybe Int
    <*> arbitraryReducedMaybe n -- intervalIntervalGroupId :: Maybe Int
    <*> arbitraryReducedMaybe n -- intervalIntervalGroupName :: Maybe Text
    <*> arbitraryReducedMaybe n -- intervalTimeline :: Maybe Text
    <*> arbitraryReducedMaybe n -- intervalDefinedUsingInterval :: Maybe Text
    <*> arbitraryReducedMaybe n -- intervalWindowCalculationForm :: Maybe Text
    <*> arbitraryReducedMaybe n -- intervalWindowCalculationDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- intervalActualDateForm :: Maybe Text
    <*> arbitraryReducedMaybe n -- intervalActualDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- intervalDueDateWillBeIn :: Maybe Int
    <*> arbitraryReducedMaybe n -- intervalNegativeSlack :: Maybe Int
    <*> arbitraryReducedMaybe n -- intervalPositiveSlack :: Maybe Int
    <*> arbitraryReducedMaybe n -- intervalEproGracePeriod :: Maybe Int
    <*> arbitraryReducedMaybe n -- intervalForms :: Maybe [ComponentsSchemasIntervalFormsItem]
    <*> arbitraryReducedMaybe n -- intervalDisabled :: Maybe Bool
    <*> arbitraryReducedMaybe n -- intervalDateCreated :: Maybe Text
    <*> arbitraryReducedMaybe n -- intervalDateModified :: Maybe Text
  
instance Arbitrary IntervalList where
  arbitrary = sized genIntervalList

genIntervalList :: Int -> Gen IntervalList
genIntervalList n =
  IntervalList
    <$> arbitraryReducedMaybe n -- intervalListMetadata :: Maybe Metadata
    <*> arbitraryReducedMaybe n -- intervalListPagination :: Maybe Pagination
    <*> arbitraryReducedMaybe n -- intervalListData :: Maybe [Interval]
  
instance Arbitrary Job where
  arbitrary = sized genJob

genJob :: Int -> Gen Job
genJob n =
  Job
    <$> arbitraryReducedMaybe n -- jobJobId :: Maybe Text
    <*> arbitraryReducedMaybe n -- jobBatchId :: Maybe Text
    <*> arbitraryReducedMaybe n -- jobState :: Maybe Text
    <*> arbitraryReducedMaybe n -- jobDateCreated :: Maybe Text
    <*> arbitraryReducedMaybe n -- jobDateStarted :: Maybe Text
    <*> arbitraryReducedMaybe n -- jobDateFinished :: Maybe Text
  
instance Arbitrary Keyword where
  arbitrary = sized genKeyword

genKeyword :: Int -> Gen Keyword
genKeyword n =
  Keyword
    <$> arbitraryReducedMaybe n -- keywordKeywordName :: Maybe Text
    <*> arbitraryReducedMaybe n -- keywordKeywordKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- keywordKeywordId :: Maybe Int
    <*> arbitraryReducedMaybe n -- keywordDateAdded :: Maybe Text
  
instance Arbitrary Metadata where
  arbitrary = sized genMetadata

genMetadata :: Int -> Gen Metadata
genMetadata n =
  Metadata
    <$> arbitraryReducedMaybe n -- metadataStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- metadataMethod :: Maybe Text
    <*> arbitraryReducedMaybe n -- metadataPath :: Maybe Text
    <*> arbitraryReducedMaybe n -- metadataTimestamp :: Maybe DateTime
    <*> arbitraryReducedMaybe n -- metadataError :: Maybe ComponentsSchemasMetadataError
  
instance Arbitrary Pagination where
  arbitrary = sized genPagination

genPagination :: Int -> Gen Pagination
genPagination n =
  Pagination
    <$> arbitraryReducedMaybe n -- paginationCurrentPage :: Maybe Int
    <*> arbitraryReducedMaybe n -- paginationSize :: Maybe Int
    <*> arbitraryReducedMaybe n -- paginationTotalPages :: Maybe Int
    <*> arbitraryReducedMaybe n -- paginationTotalElements :: Maybe Int
    <*> arbitraryReducedMaybe n -- paginationSort :: Maybe [Sort]
  
instance Arbitrary Query where
  arbitrary = sized genQuery

genQuery :: Int -> Gen Query
genQuery n =
  Query
    <$> arbitraryReducedMaybe n -- queryStudyKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- querySubjectId :: Maybe Int
    <*> arbitraryReducedMaybe n -- querySubjectOid :: Maybe Text
    <*> arbitraryReducedMaybe n -- queryAnnotationType :: Maybe Text
    <*> arbitraryReducedMaybe n -- queryAnnotationId :: Maybe Int
    <*> arbitraryReducedMaybe n -- queryType :: Maybe Text
    <*> arbitraryReducedMaybe n -- queryDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- queryRecordId :: Maybe Int
    <*> arbitraryReducedMaybe n -- queryVariable :: Maybe Text
    <*> arbitraryReducedMaybe n -- querySubjectKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- queryDateCreated :: Maybe Text
    <*> arbitraryReducedMaybe n -- queryDateModified :: Maybe Text
    <*> arbitraryReducedMaybe n -- queryQueryComments :: Maybe [QueryComment]
  
instance Arbitrary QueryComment where
  arbitrary = sized genQueryComment

genQueryComment :: Int -> Gen QueryComment
genQueryComment n =
  QueryComment
    <$> arbitraryReducedMaybe n -- queryCommentSequence :: Maybe Int
    <*> arbitraryReducedMaybe n -- queryCommentAnnotationStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- queryCommentUser :: Maybe Text
    <*> arbitraryReducedMaybe n -- queryCommentComment :: Maybe Text
    <*> arbitraryReducedMaybe n -- queryCommentClosed :: Maybe Bool
    <*> arbitraryReducedMaybe n -- queryCommentDate :: Maybe Text
  
instance Arbitrary QueryList where
  arbitrary = sized genQueryList

genQueryList :: Int -> Gen QueryList
genQueryList n =
  QueryList
    <$> arbitraryReducedMaybe n -- queryListMetadata :: Maybe Metadata
    <*> arbitraryReducedMaybe n -- queryListPagination :: Maybe Pagination
    <*> arbitraryReducedMaybe n -- queryListData :: Maybe [Query]
  
instance Arbitrary Record where
  arbitrary = sized genRecord

genRecord :: Int -> Gen Record
genRecord n =
  Record
    <$> arbitraryReducedMaybe n -- recordStudyKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- recordIntervalId :: Maybe Int
    <*> arbitraryReducedMaybe n -- recordFormId :: Maybe Int
    <*> arbitraryReducedMaybe n -- recordFormKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- recordSiteId :: Maybe Int
    <*> arbitraryReducedMaybe n -- recordRecordId :: Maybe Int
    <*> arbitraryReducedMaybe n -- recordRecordOid :: Maybe Text
    <*> arbitraryReducedMaybe n -- recordRecordType :: Maybe Text
    <*> arbitraryReducedMaybe n -- recordRecordStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- recordDeleted :: Maybe Bool
    <*> arbitraryReducedMaybe n -- recordDateCreated :: Maybe Text
    <*> arbitraryReducedMaybe n -- recordDateModified :: Maybe Text
    <*> arbitraryReducedMaybe n -- recordSubjectId :: Maybe Int
    <*> arbitraryReducedMaybe n -- recordSubjectOid :: Maybe Text
    <*> arbitraryReducedMaybe n -- recordSubjectKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- recordVisitId :: Maybe Int
    <*> arbitraryReducedMaybe n -- recordParentRecordId :: Maybe Int
    <*> arbitraryReducedMaybe n -- recordKeywords :: Maybe [Keyword]
    <*> arbitraryReducedMaybe n -- recordRecordData :: Maybe (Map.Map String AnyType)
  
instance Arbitrary RecordJobStatus where
  arbitrary = sized genRecordJobStatus

genRecordJobStatus :: Int -> Gen RecordJobStatus
genRecordJobStatus n =
  RecordJobStatus
    <$> arbitraryReducedMaybe n -- recordJobStatusJobId :: Maybe Text
    <*> arbitraryReducedMaybe n -- recordJobStatusBatchId :: Maybe Text
    <*> arbitraryReducedMaybe n -- recordJobStatusState :: Maybe Text
  
instance Arbitrary RecordList where
  arbitrary = sized genRecordList

genRecordList :: Int -> Gen RecordList
genRecordList n =
  RecordList
    <$> arbitraryReducedMaybe n -- recordListMetadata :: Maybe Metadata
    <*> arbitraryReducedMaybe n -- recordListPagination :: Maybe Pagination
    <*> arbitraryReducedMaybe n -- recordListData :: Maybe [Record]
  
instance Arbitrary RecordRevision where
  arbitrary = sized genRecordRevision

genRecordRevision :: Int -> Gen RecordRevision
genRecordRevision n =
  RecordRevision
    <$> arbitraryReducedMaybe n -- recordRevisionStudyKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- recordRevisionRecordRevisionId :: Maybe Int
    <*> arbitraryReducedMaybe n -- recordRevisionRecordId :: Maybe Int
    <*> arbitraryReducedMaybe n -- recordRevisionRecordOid :: Maybe Text
    <*> arbitraryReducedMaybe n -- recordRevisionRecordRevision :: Maybe Int
    <*> arbitraryReducedMaybe n -- recordRevisionDataRevision :: Maybe Int
    <*> arbitraryReducedMaybe n -- recordRevisionRecordStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- recordRevisionSubjectId :: Maybe Int
    <*> arbitraryReducedMaybe n -- recordRevisionSubjectOid :: Maybe Text
    <*> arbitraryReducedMaybe n -- recordRevisionSubjectKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- recordRevisionSiteId :: Maybe Int
    <*> arbitraryReducedMaybe n -- recordRevisionFormKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- recordRevisionIntervalId :: Maybe Int
    <*> arbitraryReducedMaybe n -- recordRevisionRole :: Maybe Text
    <*> arbitraryReducedMaybe n -- recordRevisionUser :: Maybe Text
    <*> arbitraryReducedMaybe n -- recordRevisionReasonForChange :: Maybe Text
    <*> arbitraryReducedMaybe n -- recordRevisionDeleted :: Maybe Bool
    <*> arbitraryReducedMaybe n -- recordRevisionDateCreated :: Maybe Text
  
instance Arbitrary RecordRevisionList where
  arbitrary = sized genRecordRevisionList

genRecordRevisionList :: Int -> Gen RecordRevisionList
genRecordRevisionList n =
  RecordRevisionList
    <$> arbitraryReducedMaybe n -- recordRevisionListMetadata :: Maybe Metadata
    <*> arbitraryReducedMaybe n -- recordRevisionListPagination :: Maybe Pagination
    <*> arbitraryReducedMaybe n -- recordRevisionListData :: Maybe [RecordRevision]
  
instance Arbitrary Role where
  arbitrary = sized genRole

genRole :: Int -> Gen Role
genRole n =
  Role
    <$> arbitraryReducedMaybe n -- roleDateCreated :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- roleDateModified :: Maybe [Int]
    <*> arbitraryReducedMaybe n -- roleRoleId :: Maybe Text
    <*> arbitraryReducedMaybe n -- roleCommunityId :: Maybe Int
    <*> arbitraryReducedMaybe n -- roleName :: Maybe Text
    <*> arbitraryReducedMaybe n -- roleDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- roleLevel :: Maybe Int
    <*> arbitraryReducedMaybe n -- roleType :: Maybe Text
    <*> arbitraryReducedMaybe n -- roleInactive :: Maybe Bool
  
instance Arbitrary Site where
  arbitrary = sized genSite

genSite :: Int -> Gen Site
genSite n =
  Site
    <$> arbitraryReducedMaybe n -- siteStudyKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- siteSiteId :: Maybe Int
    <*> arbitraryReducedMaybe n -- siteSiteName :: Maybe Text
    <*> arbitraryReducedMaybe n -- siteSiteEnrollmentStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- siteDateCreated :: Maybe Text
    <*> arbitraryReducedMaybe n -- siteDateModified :: Maybe Text
  
instance Arbitrary SiteList where
  arbitrary = sized genSiteList

genSiteList :: Int -> Gen SiteList
genSiteList n =
  SiteList
    <$> arbitraryReducedMaybe n -- siteListMetadata :: Maybe Metadata
    <*> arbitraryReducedMaybe n -- siteListPagination :: Maybe Pagination
    <*> arbitraryReducedMaybe n -- siteListData :: Maybe [Site]
  
instance Arbitrary Sort where
  arbitrary = sized genSort

genSort :: Int -> Gen Sort
genSort n =
  Sort
    <$> arbitraryReducedMaybe n -- sortProperty :: Maybe Text
    <*> arbitraryReducedMaybe n -- sortDirection :: Maybe E'Direction
  
instance Arbitrary Study where
  arbitrary = sized genStudy

genStudy :: Int -> Gen Study
genStudy n =
  Study
    <$> arbitraryReducedMaybe n -- studySponsorKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- studyStudyKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- studyStudyId :: Maybe Int
    <*> arbitraryReducedMaybe n -- studyStudyName :: Maybe Text
    <*> arbitraryReducedMaybe n -- studyStudyDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- studyStudyType :: Maybe Text
    <*> arbitraryReducedMaybe n -- studyDateCreated :: Maybe Text
    <*> arbitraryReducedMaybe n -- studyDateModified :: Maybe Text
  
instance Arbitrary StudyList where
  arbitrary = sized genStudyList

genStudyList :: Int -> Gen StudyList
genStudyList n =
  StudyList
    <$> arbitraryReducedMaybe n -- studyListMetadata :: Maybe Metadata
    <*> arbitraryReducedMaybe n -- studyListPagination :: Maybe Pagination
    <*> arbitraryReducedMaybe n -- studyListData :: Maybe [Study]
  
instance Arbitrary Subject where
  arbitrary = sized genSubject

genSubject :: Int -> Gen Subject
genSubject n =
  Subject
    <$> arbitraryReducedMaybe n -- subjectStudyKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- subjectSubjectId :: Maybe Int
    <*> arbitraryReducedMaybe n -- subjectSubjectOid :: Maybe Text
    <*> arbitraryReducedMaybe n -- subjectSubjectKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- subjectSubjectStatus :: Maybe Text
    <*> arbitraryReducedMaybe n -- subjectSiteId :: Maybe Int
    <*> arbitraryReducedMaybe n -- subjectSiteName :: Maybe Text
    <*> arbitraryReducedMaybe n -- subjectDeleted :: Maybe Bool
    <*> arbitraryReducedMaybe n -- subjectEnrollmentStartDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- subjectDateCreated :: Maybe Text
    <*> arbitraryReducedMaybe n -- subjectDateModified :: Maybe Text
    <*> arbitraryReducedMaybe n -- subjectKeywords :: Maybe [Keyword]
  
instance Arbitrary SubjectList where
  arbitrary = sized genSubjectList

genSubjectList :: Int -> Gen SubjectList
genSubjectList n =
  SubjectList
    <$> arbitraryReducedMaybe n -- subjectListMetadata :: Maybe Metadata
    <*> arbitraryReducedMaybe n -- subjectListPagination :: Maybe Pagination
    <*> arbitraryReducedMaybe n -- subjectListData :: Maybe [Subject]
  
instance Arbitrary User where
  arbitrary = sized genUser

genUser :: Int -> Gen User
genUser n =
  User
    <$> arbitraryReducedMaybe n -- userUserId :: Maybe Text
    <*> arbitraryReducedMaybe n -- userLogin :: Maybe Text
    <*> arbitraryReducedMaybe n -- userFirstName :: Maybe Text
    <*> arbitraryReducedMaybe n -- userLastName :: Maybe Text
    <*> arbitraryReducedMaybe n -- userEmail :: Maybe Text
    <*> arbitraryReducedMaybe n -- userUserActiveInStudy :: Maybe Bool
    <*> arbitraryReducedMaybe n -- userRoles :: Maybe [Role]
  
instance Arbitrary UserList where
  arbitrary = sized genUserList

genUserList :: Int -> Gen UserList
genUserList n =
  UserList
    <$> arbitraryReducedMaybe n -- userListMetadata :: Maybe Metadata
    <*> arbitraryReducedMaybe n -- userListPagination :: Maybe Pagination
    <*> arbitraryReducedMaybe n -- userListData :: Maybe [User]
  
instance Arbitrary Variable where
  arbitrary = sized genVariable

genVariable :: Int -> Gen Variable
genVariable n =
  Variable
    <$> arbitraryReducedMaybe n -- variableStudyKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- variableVariableId :: Maybe Int
    <*> arbitraryReducedMaybe n -- variableVariableType :: Maybe E'VariableType
    <*> arbitraryReducedMaybe n -- variableVariableName :: Maybe Text
    <*> arbitraryReducedMaybe n -- variableSequence :: Maybe Int
    <*> arbitraryReducedMaybe n -- variableRevision :: Maybe Int
    <*> arbitraryReducedMaybe n -- variableDisabled :: Maybe Bool
    <*> arbitraryReducedMaybe n -- variableDateCreated :: Maybe Text
    <*> arbitraryReducedMaybe n -- variableDateModified :: Maybe Text
    <*> arbitraryReducedMaybe n -- variableFormId :: Maybe Int
    <*> arbitraryReducedMaybe n -- variableVariableOid :: Maybe Text
    <*> arbitraryReducedMaybe n -- variableDeleted :: Maybe Bool
    <*> arbitraryReducedMaybe n -- variableFormKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- variableFormName :: Maybe Text
    <*> arbitraryReducedMaybe n -- variableLabel :: Maybe Text
    <*> arbitraryReducedMaybe n -- variableBlinded :: Maybe Bool
  
instance Arbitrary VariableList where
  arbitrary = sized genVariableList

genVariableList :: Int -> Gen VariableList
genVariableList n =
  VariableList
    <$> arbitraryReducedMaybe n -- variableListMetadata :: Maybe Metadata
    <*> arbitraryReducedMaybe n -- variableListPagination :: Maybe Pagination
    <*> arbitraryReducedMaybe n -- variableListData :: Maybe [Variable]
  
instance Arbitrary Visit where
  arbitrary = sized genVisit

genVisit :: Int -> Gen Visit
genVisit n =
  Visit
    <$> arbitraryReducedMaybe n -- visitStudyKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- visitVisitId :: Maybe Int
    <*> arbitraryReducedMaybe n -- visitIntervalId :: Maybe Int
    <*> arbitraryReducedMaybe n -- visitIntervalName :: Maybe Text
    <*> arbitraryReducedMaybe n -- visitSubjectId :: Maybe Int
    <*> arbitraryReducedMaybe n -- visitSubjectKey :: Maybe Text
    <*> arbitraryReducedMaybe n -- visitStartDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- visitEndDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- visitDueDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- visitVisitDate :: Maybe Text
    <*> arbitraryReducedMaybe n -- visitVisitDateForm :: Maybe Text
    <*> arbitraryReducedMaybe n -- visitVisitDateQuestion :: Maybe Text
    <*> arbitraryReducedMaybe n -- visitDeleted :: Maybe Bool
    <*> arbitraryReducedMaybe n -- visitDateCreated :: Maybe Text
    <*> arbitraryReducedMaybe n -- visitDateModified :: Maybe Text
  
instance Arbitrary VisitList where
  arbitrary = sized genVisitList

genVisitList :: Int -> Gen VisitList
genVisitList n =
  VisitList
    <$> arbitraryReducedMaybe n -- visitListMetadata :: Maybe Metadata
    <*> arbitraryReducedMaybe n -- visitListPagination :: Maybe Pagination
    <*> arbitraryReducedMaybe n -- visitListData :: Maybe [Visit]
  



instance Arbitrary E'Direction where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'VariableType where
  arbitrary = arbitraryBoundedEnum

