(ns mednet-edc-api.specs.user
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [mednet-edc-api.specs.role :refer :all]
            )
  (:import (java.io File)))


(def user-data
  {
   (ds/opt :userId) string?
   (ds/opt :login) string?
   (ds/opt :firstName) string?
   (ds/opt :lastName) string?
   (ds/opt :email) string?
   (ds/opt :userActiveInStudy) boolean?
   (ds/opt :roles) (s/coll-of role-spec)
   })

(def user-spec
  (ds/spec
    {:name ::user
     :spec user-data}))
