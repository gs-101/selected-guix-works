;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2025 Gabriel Santos <gabrielsantosdesouza@disroot.org>
;;;
;;; This file is not part of GNU Guix.
;;;
;;; This file is free software; you can redistribute it and/or modify it
;;; under the terms of the GNU General Public License as published by
;;; the Free Software Foundation; either version 3 of the License, or (at
;;; your option) any later version.
;;;
;;; This file is distributed in the hope that it will be useful, but
;;; WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;;
;;; You should have received a copy of the GNU General Public License
;;; along with this file.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Module featuring software built with Rust.

;;; Code:

(define-module (selected-guix-works packages rust-apps)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages rust)
  #:use-module (gnu packages version-control)
  #:use-module (guix build-system cargo)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages))

(define-public git-credential-keepassxc
  (package
    (name "git-credential-keepassxc")
    (version "0.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "git-credential-keepassxc" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0xfn3vk9rq9awmbq578hjy208lwsrn2afb4yv7v575dw8j13zk3b"))))
    (build-system cargo-build-system)
    (arguments
     (list
      #:rust rust-1.88
      #:install-source? #f))
    (inputs (cargo-inputs 'git-credential-keepassxc
                          #:module
                          '(selected-guix-works packages rust-crates)))
    (home-page "https://github.com/Frederick888/git-credential-keepassxc")
    (synopsis
     "Use KeePassXC as a command-line credential store")
    (description
     "@code{git-credential-keepassxc} is a @code{git} credential helper that
enables command-line applications to interact with @code{keepassxc} databases.")
    (license license:gpl3+)))

(define-public gitu
  (package
    (name "gitu")
    (version "0.40.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gitu" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1k4p3nlwz8ssfbf19nayf5gxc24svx49snphafbh62w6wb71d3l9"))))
    (build-system cargo-build-system)
    (arguments
     (list
      #:rust rust-1.88
      #:install-source? #f
      ;; Tests use some unsupported feature.
      #:tests? #f))
    (inputs (cargo-inputs 'gitu
                          #:module
                          '(selected-guix-works packages rust-crates)))
    (home-page "https://github.com/altsem/gitu")
    (synopsis "git client inspired by Magit")
    (description "@code{gitu} is a git Terminal User Interface inspired
by @code{emacs-magit}.")
    (license license:expat)))

(define-public rust-stakeholder
  ;; No tagged releases.
  (let ((commit "52f64ad3d61c439b500bc893cbc96050e7a2c85a"))
    (package
      (name "rust-stakeholder")
      (version commit)
      (source
       (origin
         (method git-fetch)
         (uri (git-reference
                (url "https://github.com/giacomo-b/rust-stakeholder")
                (commit version)))
         (file-name (git-file-name name version))
         (sha256
          (base32 "1j785mqgdiw1yzxn2fvfk6lj1caqmpc4nkhhpbmf6ywcl60s9ix8"))))
      (build-system cargo-build-system)
      (arguments (list #:install-source? #f))
      (inputs (cargo-inputs 'rust-stakeholder
                            #:module
                            '(selected-guix-works packages rust-crates)))
      (home-page "https://github.com/giacomo-b/rust-stakeholder")
      (synopsis "Generate impressive-looking terminal output to look busy")
      (description
       "@command{rust-stakeholder} is a joke program that generates nonsensical
terminal output so one can look busy.  Comes in different developer flavours
and varying levels of jargon.")
      (license license:expat))))
