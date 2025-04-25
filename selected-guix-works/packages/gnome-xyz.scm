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

;; Module featuring software related to either the GNOME graphical environment,
;; or GTK as a whole.

;;; Code:

(define-module (selected-guix-works packages gnome-xyz)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module (guix build-system meson)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages web))

(define-public adw-gtk-theme
  (package
    (name "adw-gtk-theme")
    (version "5.10")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/lassekongo83/adw-gtk3")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "19q180w1f9f35ldvl5r0kqfcxv1jaqf1dni5kfszagpg5f7qrrxi"))))
    (build-system meson-build-system)
    (native-inputs (list sassc))
    (synopsis "Unofficial GTK 3 port of libadwaita")
    (description
     "adw is a port of the GTK 4 design for the GTK 3 version.  It enables
color customization by using the same color names as the ones for
@code{libadwaita}.")
    (home-page "https://github.com/lassekongo83/adw-gtk3")
    (license license:lgpl2.1)))
