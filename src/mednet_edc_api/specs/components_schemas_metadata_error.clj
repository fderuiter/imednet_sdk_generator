(ns mednet-edc-api.specs.components-schemas-metadata-error
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def components-schemas-metadata-error-data
  {
   (ds/opt :message) string?
   })

(def components-schemas-metadata-error-spec
  (ds/spec
    {:name ::components-schemas-metadata-error
     :spec components-schemas-metadata-error-data}))
