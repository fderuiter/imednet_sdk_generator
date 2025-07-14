(ns mednet-edc-api.specs.site
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def site-data
  {
   (ds/opt :studyKey) string?
   (ds/opt :siteId) int?
   (ds/opt :siteName) string?
   (ds/opt :siteEnrollmentStatus) string?
   (ds/opt :dateCreated) string?
   (ds/opt :dateModified) string?
   })

(def site-spec
  (ds/spec
    {:name ::site
     :spec site-data}))
