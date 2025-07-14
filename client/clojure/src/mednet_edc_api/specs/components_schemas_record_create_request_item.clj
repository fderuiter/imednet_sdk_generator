(ns mednet-edc-api.specs.components-schemas-record-create-request-item
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [mednet-edc-api.specs.any-type :refer :all]
            )
  (:import (java.io File)))


(def components-schemas-record-create-request-item-data
  {
   (ds/req :formKey) string?
   (ds/opt :formId) int?
   (ds/opt :siteName) string?
   (ds/opt :siteId) int?
   (ds/opt :subjectKey) string?
   (ds/opt :subjectId) int?
   (ds/opt :subjectOid) string?
   (ds/opt :intervalName) string?
   (ds/opt :intervalId) int?
   (ds/opt :recordId) int?
   (ds/opt :recordOid) string?
   (ds/req :data) (s/map-of string? s/any?)
   })

(def components-schemas-record-create-request-item-spec
  (ds/spec
    {:name ::components-schemas-record-create-request-item
     :spec components-schemas-record-create-request-item-data}))
