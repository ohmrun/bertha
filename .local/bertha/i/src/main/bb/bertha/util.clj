(ns bertha.util)

(defn localhost.os.arch [] (System/getProperty "os.arch" ))
(defn localhost.os.name [] (System/getProperty "os.name" ))