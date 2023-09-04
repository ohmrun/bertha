(ns bertha.util
  (
    :require [cheshire.core :refer :all]
    :require [babashka.fs :as fs]
  )
)

;; (require [cheshire.core :refer :all])
;; (require '[com.velisco/tagged :as tag])
;; (require '[clojure.data.json :as json])

(defn localhost.os.arch [] (System/getProperty "os.arch" ))
(defn localhost.os.name [] (System/getProperty "os.name" ))
(defn bertha.path [] (System/getenv "BERTHA_PATH"))
(defn bertha.home [] (System/getenv "BERTHA_HOME"))

(defn device.info []
  {:arch (localhost.os.arch) :name (localhost.os.name)}
)

(defn bertha.softlink [] (fs/create-sym-link (bertha.home) (bertha.path)))