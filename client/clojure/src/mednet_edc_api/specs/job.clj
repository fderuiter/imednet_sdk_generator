(ns mednet-edc-api.specs.job
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def job-data
  {
   (ds/opt :jobId) string?
   (ds/opt :batchId) string?
   (ds/opt :state) string?
   (ds/opt :dateCreated) string?
   (ds/opt :dateStarted) string?
   (ds/opt :dateFinished) string?
   })

(def job-spec
  (ds/spec
    {:name ::job
     :spec job-data}))
