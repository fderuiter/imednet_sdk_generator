(ns mednet-edc-api.specs.study
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def study-data
  {
   (ds/opt :sponsorKey) string?
   (ds/opt :studyKey) string?
   (ds/opt :studyId) int?
   (ds/opt :studyName) string?
   (ds/opt :studyDescription) string?
   (ds/opt :studyType) string?
   (ds/opt :dateCreated) string?
   (ds/opt :dateModified) string?
   })

(def study-spec
  (ds/spec
    {:name ::study
     :spec study-data}))
