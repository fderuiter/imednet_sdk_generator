(ns mednet-edc-api.specs.interval
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [mednet-edc-api.specs.components-schemas-interval-forms-item :refer :all]
            )
  (:import (java.io File)))


(def interval-data
  {
   (ds/opt :studyKey) string?
   (ds/opt :intervalId) int?
   (ds/opt :intervalName) string?
   (ds/opt :intervalDescription) string?
   (ds/opt :intervalSequence) int?
   (ds/opt :intervalGroupId) int?
   (ds/opt :intervalGroupName) string?
   (ds/opt :timeline) string?
   (ds/opt :definedUsingInterval) string?
   (ds/opt :windowCalculationForm) string?
   (ds/opt :windowCalculationDate) string?
   (ds/opt :actualDateForm) string?
   (ds/opt :actualDate) string?
   (ds/opt :dueDateWillBeIn) int?
   (ds/opt :negativeSlack) int?
   (ds/opt :positiveSlack) int?
   (ds/opt :eproGracePeriod) int?
   (ds/opt :forms) (s/coll-of components-schemas-interval-forms-item-spec)
   (ds/opt :disabled) boolean?
   (ds/opt :dateCreated) string?
   (ds/opt :dateModified) string?
   })

(def interval-spec
  (ds/spec
    {:name ::interval
     :spec interval-data}))
