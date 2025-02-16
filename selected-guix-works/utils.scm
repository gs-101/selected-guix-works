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

;; Module featuring procedures for simplifying configurations.

;;; Code:

(define-module (selected-guix-works utils)
  #:use-module (gnu services)
  #:use-module (gnu home services)

  #:export (home-profile-package-service))

(define (home-profile-package-service package)
  (let ((service-name (string->symbol
                       (string-append "home-" package "-service"))))
    (simple-service service-name
                    home-profile-service-type
                    (list (specification->package package)))))
