(ns mednet-edc-api.specs.pagination
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [mednet-edc-api.specs.sort :refer :all]
            )
  (:import (java.io File)))


(def pagination-data
  {
   (ds/opt :currentPage) int?
   (ds/opt :size) int?
   (ds/opt :totalPages) int?
   (ds/opt :totalElements) int?
   (ds/opt :sort) (s/coll-of sort-spec)
   })

(def pagination-spec
  (ds/spec
    {:name ::pagination
     :spec pagination-data}))
