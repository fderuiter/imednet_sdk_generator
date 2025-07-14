(ns mednet-edc-api.specs.inline-object-3
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [mednet-edc-api.specs.metadata :refer :all]
            )
  (:import (java.io File)))


(def inline-object-3-data
  {
   (ds/opt :metadata) metadata-spec
   })

(def inline-object-3-spec
  (ds/spec
    {:name ::inline-object-3
     :spec inline-object-3-data}))
