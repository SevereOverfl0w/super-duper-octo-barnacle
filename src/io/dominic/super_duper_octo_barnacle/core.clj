(ns io.dominic.super-duper-octo-barnacle.core
  (:require
    [github-percentile.core :as github-percentile]))

(defn -main
  [& [username]]
  (assert username)
  (println (github-percentile/percentile username)))
