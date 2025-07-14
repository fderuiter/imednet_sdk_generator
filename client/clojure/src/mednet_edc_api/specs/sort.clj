(ns mednet-edc-api.specs.sort
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sort-data
  {
   (ds/opt :property) string?
   (ds/opt :direction) string?
   })

(def sort-spec
  (ds/spec
    {:name ::sort
     :spec sort-data}))
