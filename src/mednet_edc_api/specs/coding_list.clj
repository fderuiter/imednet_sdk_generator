(ns mednet-edc-api.specs.coding-list
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [mednet-edc-api.specs.metadata :refer :all]
            [mednet-edc-api.specs.pagination :refer :all]
            [mednet-edc-api.specs.coding :refer :all]
            )
  (:import (java.io File)))


(def coding-list-data
  {
   (ds/opt :metadata) metadata-spec
   (ds/opt :pagination) pagination-spec
   (ds/opt :data) (s/coll-of coding-spec)
   })

(def coding-list-spec
  (ds/spec
    {:name ::coding-list
     :spec coding-list-data}))
