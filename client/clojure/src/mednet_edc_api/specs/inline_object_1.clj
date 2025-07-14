(ns mednet-edc-api.specs.inline-object-1
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [mednet-edc-api.specs.metadata :refer :all]
            )
  (:import (java.io File)))


(def inline-object-1-data
  {
   (ds/opt :metadata) metadata-spec
   })

(def inline-object-1-spec
  (ds/spec
    {:name ::inline-object-1
     :spec inline-object-1-data}))
