(define-module (selected-guix-works services non-nixos-gpu)
  #:use-module (gnu packages admin)
  #:use-module (gnu services)
  #:use-module (gnu services shepherd)
  #:use-module (guix gexp)
  #:export (non-nixos-gpu-service-type))

(define (non-nixos-gpu-shepherd-service _)
  (let ((herd (file-append shepherd "/bin/herd"))
        (path "/etc/shepherd/non-nixos-gpu.scm"))
    (list (shepherd-service
            (provision '(non-nixos-gpu))
            (documentation "Load the home-manager non-nixos-gpu
service at startup.")
            ;; The entries here deviate from the standard make-forkexec and
            ;; kill-destructor because the service errors out at startup
            ;; (it can't be killed due to not being a continuous process).
            (start #~(lambda _ (invoke #$herd "load" "root" #$path)))
            (stop #~(const #f))
            (one-shot? #t)
            (respawn? #f)))))

(define non-nixos-gpu-service-type
  (service-type
    (name 'non-nixos-gpu)
    (extensions
     (list (service-extension shepherd-root-service-type
                              non-nixos-gpu-shepherd-service)))
    (default-value #f)
    (description
     "Load the home-manager non-nixos-gpu
service at startup.")))
