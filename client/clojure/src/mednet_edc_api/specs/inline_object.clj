(ns mednet-edc-api.specs.inline-object
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [mednet-edc-api.specs.metadata :refer :all]
            )
  (:import (java.io File)))


(def inline-object-data
  {
   (ds/opt :metadata) metadata-spec
   })

(def inline-object-spec
  (ds/spec
    {:name ::inline-object
     :spec inline-object-data}))
