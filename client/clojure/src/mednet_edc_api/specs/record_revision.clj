(ns mednet-edc-api.specs.record-revision
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def record-revision-data
  {
   (ds/opt :studyKey) string?
   (ds/opt :recordRevisionId) int?
   (ds/opt :recordId) int?
   (ds/opt :recordOid) string?
   (ds/opt :recordRevision) int?
   (ds/opt :dataRevision) int?
   (ds/opt :recordStatus) string?
   (ds/opt :subjectId) int?
   (ds/opt :subjectOid) string?
   (ds/opt :subjectKey) string?
   (ds/opt :siteId) int?
   (ds/opt :formKey) string?
   (ds/opt :intervalId) int?
   (ds/opt :role) string?
   (ds/opt :user) string?
   (ds/opt :reasonForChange) string?
   (ds/opt :deleted) boolean?
   (ds/opt :dateCreated) string?
   })

(def record-revision-spec
  (ds/spec
    {:name ::record-revision
     :spec record-revision-data}))
