(ns mednet-edc-api.specs.query-list
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [mednet-edc-api.specs.metadata :refer :all]
            [mednet-edc-api.specs.pagination :refer :all]
            [mednet-edc-api.specs.query :refer :all]
            )
  (:import (java.io File)))


(def query-list-data
  {
   (ds/opt :metadata) metadata-spec
   (ds/opt :pagination) pagination-spec
   (ds/opt :data) (s/coll-of query-spec)
   })

(def query-list-spec
  (ds/spec
    {:name ::query-list
     :spec query-list-data}))
