(ns mednet-edc-api.specs.form
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def form-data
  {
   (ds/opt :studyKey) string?
   (ds/opt :formId) int?
   (ds/opt :formKey) string?
   (ds/opt :formName) string?
   (ds/opt :formType) string?
   (ds/opt :revision) int?
   (ds/opt :embeddedLog) boolean?
   (ds/opt :enforceOwnership) boolean?
   (ds/opt :userAgreement) boolean?
   (ds/opt :subjectRecordReport) boolean?
   (ds/opt :unscheduledVisit) boolean?
   (ds/opt :otherForms) boolean?
   (ds/opt :eproForm) boolean?
   (ds/opt :allowCopy) boolean?
   (ds/opt :disabled) boolean?
   (ds/opt :dateCreated) string?
   (ds/opt :dateModified) string?
   })

(def form-spec
  (ds/spec
    {:name ::form
     :spec form-data}))
