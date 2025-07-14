(ns mednet-edc-api.specs.record-job-status
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def record-job-status-data
  {
   (ds/opt :jobId) string?
   (ds/opt :batchId) string?
   (ds/opt :state) string?
   })

(def record-job-status-spec
  (ds/spec
    {:name ::record-job-status
     :spec record-job-status-data}))
