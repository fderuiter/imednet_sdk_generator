(ns mednet-edc-api.specs.site-list
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [mednet-edc-api.specs.metadata :refer :all]
            [mednet-edc-api.specs.pagination :refer :all]
            [mednet-edc-api.specs.site :refer :all]
            )
  (:import (java.io File)))


(def site-list-data
  {
   (ds/opt :metadata) metadata-spec
   (ds/opt :pagination) pagination-spec
   (ds/opt :data) (s/coll-of site-spec)
   })

(def site-list-spec
  (ds/spec
    {:name ::site-list
     :spec site-list-data}))
