(ns mednet-edc-api.specs.components-schemas-interval-forms-item
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def components-schemas-interval-forms-item-data
  {
   (ds/opt :formId) int?
   (ds/opt :formKey) string?
   (ds/opt :formName) string?
   })

(def components-schemas-interval-forms-item-spec
  (ds/spec
    {:name ::components-schemas-interval-forms-item
     :spec components-schemas-interval-forms-item-data}))
