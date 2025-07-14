(ns mednet-edc-api.api.forms
  (:require [mednet-edc-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [mednet-edc-api.specs.interval-list :refer :all]
            [mednet-edc-api.specs.visit-list :refer :all]
            [mednet-edc-api.specs.inline-object-3 :refer :all]
            [mednet-edc-api.specs.inline-object-2 :refer :all]
            [mednet-edc-api.specs.metadata :refer :all]
            [mednet-edc-api.specs.study :refer :all]
            [mednet-edc-api.specs.inline-object-5 :refer :all]
            [mednet-edc-api.specs.pagination :refer :all]
            [mednet-edc-api.specs.role :refer :all]
            [mednet-edc-api.specs.inline-object-4 :refer :all]
            [mednet-edc-api.specs.subject :refer :all]
            [mednet-edc-api.specs.record-job-status :refer :all]
            [mednet-edc-api.specs.components-schemas-record-create-request-item :refer :all]
            [mednet-edc-api.specs.inline-object-1 :refer :all]
            [mednet-edc-api.specs.coding :refer :all]
            [mednet-edc-api.specs.query-comment :refer :all]
            [mednet-edc-api.specs.site-list :refer :all]
            [mednet-edc-api.specs.record :refer :all]
            [mednet-edc-api.specs.inline-object :refer :all]
            [mednet-edc-api.specs.user-list :refer :all]
            [mednet-edc-api.specs.record-list :refer :all]
            [mednet-edc-api.specs.subject-list :refer :all]
            [mednet-edc-api.specs.keyword :refer :all]
            [mednet-edc-api.specs.coding-list :refer :all]
            [mednet-edc-api.specs.study-list :refer :all]
            [mednet-edc-api.specs.form-list :refer :all]
            [mednet-edc-api.specs.record-revision-list :refer :all]
            [mednet-edc-api.specs.components-schemas-interval-forms-item :refer :all]
            [mednet-edc-api.specs.components-schemas-metadata-error :refer :all]
            [mednet-edc-api.specs.query :refer :all]
            [mednet-edc-api.specs.sort :refer :all]
            [mednet-edc-api.specs.site :refer :all]
            [mednet-edc-api.specs.form :refer :all]
            [mednet-edc-api.specs.query-list :refer :all]
            [mednet-edc-api.specs.variable :refer :all]
            [mednet-edc-api.specs.interval :refer :all]
            [mednet-edc-api.specs.visit :refer :all]
            [mednet-edc-api.specs.record-revision :refer :all]
            [mednet-edc-api.specs.variable-list :refer :all]
            [mednet-edc-api.specs.job :refer :all]
            [mednet-edc-api.specs.user :refer :all]
            )
  (:import (java.io File)))


(defn-spec list-forms-with-http-info any?
  "List forms in a study"
  ([studyKey string?, ] (list-forms-with-http-info studyKey nil))
  ([studyKey string?, {:keys [page size sort filter]} (s/map-of keyword? any?)]
   (check-required-params studyKey)
   (call-api "/studies/{studyKey}/forms" :get
             {:path-params   {"studyKey" studyKey }
              :header-params {}
              :query-params  {"page" page "size" size "sort" sort "filter" filter }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["apiKeyAuth" "securityKeyAuth"]})))

(defn-spec list-forms form-list-spec
  "List forms in a study"
  ([studyKey string?, ] (list-forms studyKey nil))
  ([studyKey string?, optional-params any?]
   (let [res (:data (list-forms-with-http-info studyKey optional-params))]
     (if (:decode-models *api-context*)
        (st/decode form-list-spec res st/string-transformer)
        res))))


