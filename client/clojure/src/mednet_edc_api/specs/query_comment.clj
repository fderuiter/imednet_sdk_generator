(ns mednet-edc-api.specs.query-comment
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def query-comment-data
  {
   (ds/opt :sequence) int?
   (ds/opt :annotationStatus) string?
   (ds/opt :user) string?
   (ds/opt :comment) string?
   (ds/opt :closed) boolean?
   (ds/opt :date) string?
   })

(def query-comment-spec
  (ds/spec
    {:name ::query-comment
     :spec query-comment-data}))
