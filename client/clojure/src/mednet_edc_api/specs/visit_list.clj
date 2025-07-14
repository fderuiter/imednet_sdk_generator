(ns mednet-edc-api.specs.visit-list
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [mednet-edc-api.specs.metadata :refer :all]
            [mednet-edc-api.specs.pagination :refer :all]
            [mednet-edc-api.specs.visit :refer :all]
            )
  (:import (java.io File)))


(def visit-list-data
  {
   (ds/opt :metadata) metadata-spec
   (ds/opt :pagination) pagination-spec
   (ds/opt :data) (s/coll-of visit-spec)
   })

(def visit-list-spec
  (ds/spec
    {:name ::visit-list
     :spec visit-list-data}))
