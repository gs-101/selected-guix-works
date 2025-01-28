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

;; Guix channel featuring assorted packages.
;; The currently available packages are:
;; - font-microsoft-cascadia-code-next

;;; Code:

(define-module (selected-guix-works packages fonts)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (gnu packages fonts)

  #:use-module (guix build-system font))

(define font-microsoft-cascadia-next
  (package
    (name "font-microsoft-cascadia-next")
    (version "2407.24")
    (source (origin
              (method url-fetch/zipbomb)
              (uri (string-append
                    "https://github.com/microsoft/cascadia-code/"
                    "releases/download/v"
                    version
                    "/CascadiaCode-"
                    version
                    ".zip"))
              (sha256
               (base32
                "4z5gr3rtq3nwh5elsbkl2glou5jly2soxng7gww44zzt3jimqr2a"))))
    (build-system font-build-system)
    (home-page "https://github.com/microsoft/cascadia-code")
    (synopsis "Monospaced font with programming ligatures")
    (description
     "Cascadia is a fun new coding font that comes bundled with Windows
Terminal, and is now the default font in Visual Studio as well.")
    (license license:silofl1.1)))
