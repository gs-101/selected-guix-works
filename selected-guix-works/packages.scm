(define-module (selected-guix-works packages)
  #:use-module (gnu packages)
  #:export (%patch-path))

(define %patch-path
  (and=> (search-path %load-path "selected-guix-works/packages.scm")
         (compose list
                  (partial (flip string-append)
                           "/packages/patches")
                  dirname)))
