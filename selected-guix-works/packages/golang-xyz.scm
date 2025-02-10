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

;; Module featuring software built using the Go programming language.

;;; Code:

(define-module (selected-guix-works packages golang-xyz)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module ((guix licenses) #:prefix license:)
  
  #:use-module (guix build-system go))

(define-public hyprls
  (package
    (name "hyprls")
    (version "0.5.0")
    (source
     (origin
       (method git-fetch
               (uri (git-reference
                     (url "https://github.com/hyprland-community/hyprls")
                     (commit (string-append "v" version))))
               (file-name (git-file-name name version))
               (sha256
                (base32
                 "0ds85nyd3dnjr961x9g5kflx1qdb92vn7n6wc4jbk0fjjzbrnh5s")))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/hyprland-community/hyprls"))
    (home-page "https://gwen.works/hyprls")
    (synopsis "Hyprlang Language Server Protocol")
    (description
     "@code{hyprls} Language Server Protocol (LSP) implementation for @code{hyprlang},
the language used for the Hyprland ecosystem.  This means it's primarily used
 to get documentation for software configuration options.")))
