(use-modules (guix profiles))

(specifications->manifest
 (list
  "openjdk@25"
  "maven"
  "git"))
