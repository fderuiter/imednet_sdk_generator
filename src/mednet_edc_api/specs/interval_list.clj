(ns mednet-edc-api.specs.interval-list
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [mednet-edc-api.specs.metadata :refer :all]
            [mednet-edc-api.specs.pagination :refer :all]
            [mednet-edc-api.specs.interval :refer :all]
            )
  (:import (java.io File)))


(def interval-list-data
  {
   (ds/opt :metadata) metadata-spec
   (ds/opt :pagination) pagination-spec
   (ds/opt :data) (s/coll-of interval-spec)
   })

(def interval-list-spec
  (ds/spec
    {:name ::interval-list
     :spec interval-list-data}))
