(ns mednet-edc-api.specs.role
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def role-data
  {
   (ds/opt :dateCreated) (s/coll-of int?)
   (ds/opt :dateModified) (s/coll-of int?)
   (ds/opt :roleId) string?
   (ds/opt :communityId) int?
   (ds/opt :name) string?
   (ds/opt :description) string?
   (ds/opt :level) int?
   (ds/opt :type) string?
   (ds/opt :inactive) boolean?
   })

(def role-spec
  (ds/spec
    {:name ::role
     :spec role-data}))
