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
       (method git-fetch)
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
 to get documentation for software configuration options."))

(define-public go-github-com-alecthomas-assert-v1
  (inherit go-github-com-alecthomas-assert-v2)
  (package
    (name "go-github-com-alecthomas-assert-v1")
    (version "1.0.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/alecthomas/assert")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32
         "0fl0zljxhanyv1xpdwkcwshfb6mvhxh5929rfch074362hfk74l7"))))
    (propagated-inputs
     (list ))))

(define-public wakatime
  (package
    (name "wakatime")
    (version "1.112.1")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "github.com/wakatime/wakatime-cli")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32
         "0jffydiyv6s452dpna4gdfavy2dyjffz13kvc9c9hs628i149j17")))))
  (build-system go-build-system)
  (arguments '(#:import-path "github.com/wakatime/wakatime-cli"))
  (propagated-inputs
   (list go-github-com-azure-go-ntlmssp
         go-github-com-alecthomas-chroma-v2
         go-github-com-danwakefield-fnmatch
         go-github-com-mitchellh-go-homedir
         go-github-com-pkg-sftp
         go-github-com-spf13-cobra
         go-goetcd-io-bbolt
         go-go-uber-org-zap
         go-golang-org-x-crypto
         go-golang-org-x-net
         go-golang-org-x-text
         go-gopkg-in-ini-v1))
  (home-page "https://wakatime.com/plugins")
  (synopsis "bla")
  (description
   "bogus."))
