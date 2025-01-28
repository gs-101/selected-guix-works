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

;; Module featuring assorted fonts, that cannot be included
;; in Guix for some reason.
;; The currently available packages are:
;; - font-microsoft-cascadia-code-next
;;   Guix doesn't package Nerd Fonts yet, so Cascadia Code can't be updated
;;   in the official channel.

;;; Code:

(define-module (selected-guix-works packages fonts)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (gnu packages fonts))

(define-public font-microsoft-cascadia-next
  (package
    (inherit font-microsoft-cascadia)
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
                "0x441jjkswz6vidg6kdv9rmbqlm7dqcvsm4higs67nw66gp6hyp6"))))))
