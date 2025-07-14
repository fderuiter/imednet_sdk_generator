(ns mednet-edc-api.specs.metadata
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [mednet-edc-api.specs.components-schemas-metadata-error :refer :all]
            )
  (:import (java.io File)))


(def metadata-data
  {
   (ds/opt :status) string?
   (ds/opt :method) string?
   (ds/opt :path) string?
   (ds/opt :timestamp) inst?
   (ds/opt :error) components-schemas-metadata-error-spec
   })

(def metadata-spec
  (ds/spec
    {:name ::metadata
     :spec metadata-data}))
