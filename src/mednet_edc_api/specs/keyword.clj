(ns mednet-edc-api.specs.keyword
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def keyword-data
  {
   (ds/opt :keywordName) string?
   (ds/opt :keywordKey) string?
   (ds/opt :keywordId) int?
   (ds/opt :dateAdded) string?
   })

(def keyword-spec
  (ds/spec
    {:name ::keyword
     :spec keyword-data}))
