;;; GNU Guix --- Functional package management for GNU
;;; Copyright (C) 2025 Gabriel Santos <gabrielsantosdesouza@disroot.org>

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
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages crates-io)
  #:use-module (selected-guix-works packages crates-io)

  #:use-module (guix build-system cargo))

(define-public pay-respects
  (package
    (name "pay-respects")
    (version "0.6.13")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "pay-respects" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1nmscd493ilw8fdi0kmmx4k7wlq7dbcddx49bdz8qfpzayrjc2pd"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-colored" ,rust-colored-3)
                       ("rust-inquire" ,rust-inquire-0.7)
                       ("rust-pay-respects-parser" ,rust-pay-respects-parser-0.3)
                       ("rust-pay-respects-utils" ,rust-pay-respects-utils-0.1)
                       ("rust-regex-lite" ,rust-regex-lite-0.1)
                       ("rust-rust-i18n" ,rust-rust-i18n-3)
                       ("rust-sys-locale" ,rust-sys-locale-0.3))
       #:install-source? #f))
    (home-page "https://codeberg.org/iff/pay-respects")
    (synopsis
     "Command suggestions, command-not-found and thefuck replacement written in Rust")
    (description
     "@code{pay-respects} suggests command corrections by simply pressing f
after a mistake.")
    (license license:agpl3+)))
