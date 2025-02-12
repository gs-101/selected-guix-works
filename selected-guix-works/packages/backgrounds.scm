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

;;Module containing a single package for all my backgrounds.

;;; Code:

(define-module (selected-guix-works packages backgrounds)
  #:use-module (guix packages)
  #:use-module (gnu packages)
  #:use-module (guix git-download)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix gexp)

  #:use-module (guix build-system copy))

(define-public selected-guix-works-backgrounds
  (package
    (name "selected-guix-works-backgrounds")
    (version "1.0.1")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/gs-101/backgrounds")
                    (commit version)))
              (file-name (git-file-name name version))
              (sha256
               (base32 "0w34ixnz48kjgwjf4vd7j0mxjmji5226q26rd82n031rzhh5r8hq"))))
    (build-system copy-build-system)
    (arguments
     (list #:install-plan
           #~'(("backgrounds" "share/backgrounds/selected-guix-works"))))
    (home-page "https://github.com/gs-101/backgrounds")
    (synopsis "Assorted backgrounds and their licenses accumulated with time")
    (description
     "Collection of backgrounds with various themes,
and their licenses (which should be either free or open).")
    (license license:cc-by-sa4.0)))
