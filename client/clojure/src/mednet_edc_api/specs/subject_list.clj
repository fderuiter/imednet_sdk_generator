(ns mednet-edc-api.specs.subject-list
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [mednet-edc-api.specs.metadata :refer :all]
            [mednet-edc-api.specs.pagination :refer :all]
            [mednet-edc-api.specs.subject :refer :all]
            )
  (:import (java.io File)))


(def subject-list-data
  {
   (ds/opt :metadata) metadata-spec
   (ds/opt :pagination) pagination-spec
   (ds/opt :data) (s/coll-of subject-spec)
   })

(def subject-list-spec
  (ds/spec
    {:name ::subject-list
     :spec subject-list-data}))
