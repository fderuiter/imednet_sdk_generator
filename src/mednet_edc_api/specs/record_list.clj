(ns mednet-edc-api.specs.record-list
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [mednet-edc-api.specs.metadata :refer :all]
            [mednet-edc-api.specs.pagination :refer :all]
            [mednet-edc-api.specs.record :refer :all]
            )
  (:import (java.io File)))


(def record-list-data
  {
   (ds/opt :metadata) metadata-spec
   (ds/opt :pagination) pagination-spec
   (ds/opt :data) (s/coll-of record-spec)
   })

(def record-list-spec
  (ds/spec
    {:name ::record-list
     :spec record-list-data}))
