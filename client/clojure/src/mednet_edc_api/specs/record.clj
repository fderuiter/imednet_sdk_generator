(ns mednet-edc-api.specs.record
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [mednet-edc-api.specs.keyword :refer :all]
            [mednet-edc-api.specs.any-type :refer :all]
            )
  (:import (java.io File)))


(def record-data
  {
   (ds/opt :studyKey) string?
   (ds/opt :intervalId) int?
   (ds/opt :formId) int?
   (ds/opt :formKey) string?
   (ds/opt :siteId) int?
   (ds/opt :recordId) int?
   (ds/opt :recordOid) string?
   (ds/opt :recordType) string?
   (ds/opt :recordStatus) string?
   (ds/opt :deleted) boolean?
   (ds/opt :dateCreated) string?
   (ds/opt :dateModified) string?
   (ds/opt :subjectId) int?
   (ds/opt :subjectOid) string?
   (ds/opt :subjectKey) string?
   (ds/opt :visitId) int?
   (ds/opt :parentRecordId) int?
   (ds/opt :keywords) (s/coll-of keyword-spec)
   (ds/opt :recordData) (s/map-of string? s/any?)
   })

(def record-spec
  (ds/spec
    {:name ::record
     :spec record-data}))
