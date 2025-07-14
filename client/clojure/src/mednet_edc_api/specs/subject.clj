(ns mednet-edc-api.specs.subject
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [mednet-edc-api.specs.keyword :refer :all]
            )
  (:import (java.io File)))


(def subject-data
  {
   (ds/opt :studyKey) string?
   (ds/opt :subjectId) int?
   (ds/opt :subjectOid) string?
   (ds/opt :subjectKey) string?
   (ds/opt :subjectStatus) string?
   (ds/opt :siteId) int?
   (ds/opt :siteName) string?
   (ds/opt :deleted) boolean?
   (ds/opt :enrollmentStartDate) string?
   (ds/opt :dateCreated) string?
   (ds/opt :dateModified) string?
   (ds/opt :keywords) (s/coll-of keyword-spec)
   })

(def subject-spec
  (ds/spec
    {:name ::subject
     :spec subject-data}))
