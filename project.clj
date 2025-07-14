(defproject mednet-edc-api "1.3.6"
  :description "The Mednet EDC (Electronic Data Capture) REST API provides a single-point of access for reading data stored across iMednet data services.
This specification documents all available endpoints in the latest version of the API."
  :dependencies [[org.clojure/clojure "1.9.0"]
                 [metosin/spec-tools "0.7.0"]
                 [clj-http "3.8.0"]
                 [orchestra "2017.11.12-1"]
                 [cheshire "5.8.0"]])