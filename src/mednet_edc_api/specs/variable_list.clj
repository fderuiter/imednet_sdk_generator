(ns mednet-edc-api.specs.variable-list
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [mednet-edc-api.specs.metadata :refer :all]
            [mednet-edc-api.specs.pagination :refer :all]
            [mednet-edc-api.specs.variable :refer :all]
            )
  (:import (java.io File)))


(def variable-list-data
  {
   (ds/opt :metadata) metadata-spec
   (ds/opt :pagination) pagination-spec
   (ds/opt :data) (s/coll-of variable-spec)
   })

(def variable-list-spec
  (ds/spec
    {:name ::variable-list
     :spec variable-list-data}))
