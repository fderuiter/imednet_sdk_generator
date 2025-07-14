(ns mednet-edc-api.specs.visit
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def visit-data
  {
   (ds/opt :studyKey) string?
   (ds/opt :visitId) int?
   (ds/opt :intervalId) int?
   (ds/opt :intervalName) string?
   (ds/opt :subjectId) int?
   (ds/opt :subjectKey) string?
   (ds/opt :startDate) string?
   (ds/opt :endDate) string?
   (ds/opt :dueDate) string?
   (ds/opt :visitDate) string?
   (ds/opt :visitDateForm) string?
   (ds/opt :visitDateQuestion) string?
   (ds/opt :deleted) boolean?
   (ds/opt :dateCreated) string?
   (ds/opt :dateModified) string?
   })

(def visit-spec
  (ds/spec
    {:name ::visit
     :spec visit-data}))
