(ns mednet-edc-api.specs.user-list
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [mednet-edc-api.specs.metadata :refer :all]
            [mednet-edc-api.specs.pagination :refer :all]
            [mednet-edc-api.specs.user :refer :all]
            )
  (:import (java.io File)))


(def user-list-data
  {
   (ds/opt :metadata) metadata-spec
   (ds/opt :pagination) pagination-spec
   (ds/opt :data) (s/coll-of user-spec)
   })

(def user-list-spec
  (ds/spec
    {:name ::user-list
     :spec user-list-data}))
