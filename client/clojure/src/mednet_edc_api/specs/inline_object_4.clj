(ns mednet-edc-api.specs.inline-object-4
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [mednet-edc-api.specs.metadata :refer :all]
            )
  (:import (java.io File)))


(def inline-object-4-data
  {
   (ds/opt :metadata) metadata-spec
   })

(def inline-object-4-spec
  (ds/spec
    {:name ::inline-object-4
     :spec inline-object-4-data}))
