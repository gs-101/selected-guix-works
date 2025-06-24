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

;; Module featuring fixes for existing packages that haven't been
;; been upstreamed, due to a delay in the review process.

;;; Code:

(define-module (selected-guix-works packages hotfix)
  #:use-module (gnu packages)
  #:use-module (gnu packages gnome)
  #:use-module (guix git-download)
  #:use-module (guix packages))

(define patches-path "selected-guix-works/packages/patches/")

(define (from-patches patch)
  (string-append patches-path patch))

;; From <https://issues.guix.gnu.org/78047>.
;; Thanks Ludovic Courtès.
;; DEPRECATED: As of <2025-06-23>, this fix was upstreamed.
(define-public fixed-network-manager
  (deprecated-package "fixed-network-manager" network-manager))
