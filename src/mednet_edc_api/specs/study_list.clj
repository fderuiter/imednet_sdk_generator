(ns mednet-edc-api.specs.study-list
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [mednet-edc-api.specs.metadata :refer :all]
            [mednet-edc-api.specs.pagination :refer :all]
            [mednet-edc-api.specs.study :refer :all]
            )
  (:import (java.io File)))


(def study-list-data
  {
   (ds/opt :metadata) metadata-spec
   (ds/opt :pagination) pagination-spec
   (ds/opt :data) (s/coll-of study-spec)
   })

(def study-list-spec
  (ds/spec
    {:name ::study-list
     :spec study-list-data}))
