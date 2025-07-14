(ns mednet-edc-api.specs.query
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [mednet-edc-api.specs.query-comment :refer :all]
            )
  (:import (java.io File)))


(def query-data
  {
   (ds/opt :studyKey) string?
   (ds/opt :subjectId) int?
   (ds/opt :subjectOid) string?
   (ds/opt :annotationType) string?
   (ds/opt :annotationId) int?
   (ds/opt :type) string?
   (ds/opt :description) string?
   (ds/opt :recordId) int?
   (ds/opt :variable) string?
   (ds/opt :subjectKey) string?
   (ds/opt :dateCreated) string?
   (ds/opt :dateModified) string?
   (ds/opt :queryComments) (s/coll-of query-comment-spec)
   })

(def query-spec
  (ds/spec
    {:name ::query
     :spec query-data}))
