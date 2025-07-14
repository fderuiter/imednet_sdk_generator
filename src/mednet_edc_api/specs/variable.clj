(ns mednet-edc-api.specs.variable
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def variable-data
  {
   (ds/opt :studyKey) string?
   (ds/opt :variableId) int?
   (ds/opt :variableType) string?
   (ds/opt :variableName) string?
   (ds/opt :sequence) int?
   (ds/opt :revision) int?
   (ds/opt :disabled) boolean?
   (ds/opt :dateCreated) string?
   (ds/opt :dateModified) string?
   (ds/opt :formId) int?
   (ds/opt :variableOid) string?
   (ds/opt :deleted) boolean?
   (ds/opt :formKey) string?
   (ds/opt :formName) string?
   (ds/opt :label) string?
   (ds/opt :blinded) boolean?
   })

(def variable-spec
  (ds/spec
    {:name ::variable
     :spec variable-data}))
