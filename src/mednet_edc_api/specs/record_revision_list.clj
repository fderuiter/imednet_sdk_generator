(ns mednet-edc-api.specs.record-revision-list
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [mednet-edc-api.specs.metadata :refer :all]
            [mednet-edc-api.specs.pagination :refer :all]
            [mednet-edc-api.specs.record-revision :refer :all]
            )
  (:import (java.io File)))


(def record-revision-list-data
  {
   (ds/opt :metadata) metadata-spec
   (ds/opt :pagination) pagination-spec
   (ds/opt :data) (s/coll-of record-revision-spec)
   })

(def record-revision-list-spec
  (ds/spec
    {:name ::record-revision-list
     :spec record-revision-list-data}))
