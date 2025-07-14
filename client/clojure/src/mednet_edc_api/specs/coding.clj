(ns mednet-edc-api.specs.coding
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def coding-data
  {
   (ds/opt :studyKey) string?
   (ds/opt :siteName) string?
   (ds/opt :siteId) int?
   (ds/opt :subjectId) int?
   (ds/opt :subjectKey) string?
   (ds/opt :formId) int?
   (ds/opt :formName) string?
   (ds/opt :formKey) string?
   (ds/opt :revision) int?
   (ds/opt :recordId) int?
   (ds/opt :variable) string?
   (ds/opt :value) string?
   (ds/opt :codingId) int?
   (ds/opt :code) string?
   (ds/opt :codedBy) string?
   (ds/opt :reason) string?
   (ds/opt :dictionaryName) string?
   (ds/opt :dictionaryVersion) string?
   (ds/opt :dateCoded) string?
   })

(def coding-spec
  (ds/spec
    {:name ::coding
     :spec coding-data}))
