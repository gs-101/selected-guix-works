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

;; Module featuring packages related to the QT application framework.

;;; Code:

(define-module (selected-guix-works packages qt)
  #:use-module (gnu packages cpp)
  #:use-module (gnu packages kde-frameworks)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages qt)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module ((guix licenses) #:prefix license:)

  #:use-module (guix build-system qt))

(define-public hyprqt6engine
  (package
    (name "hyprqt6engine")
    (version "0.1.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                     (url "https://github.com/hyprwm/hyprqt6engine")
                     (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32 "0d477kxdpb1f1fviibck4x2daffjkvxq34wdsvvrr5nmcx10q9ar"))))
    (build-system qt-build-system)
    (native-inputs
     (list pkg-config))
    (inputs
     (list hyprlang
           hyprutils
           kcolorscheme
           kconfig
           kiconthemes))
    (arguments
     (list
      #:qtbase qtbase
      ;; No tests.
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (add-after 'unpack 'patch
            (lambda _
              (substitute* '("hyprqtplugin/CMakeLists.txt"
                             "style/CMakeLists.txt")
                (("\\$\\{PLUGINDIR\\}")
                 (string-append #$output "/lib/qt6/plugins"))))))))
    (home-page "https://wiki.hypr.land/Hypr-Ecosystem/hyprqt6engine")
    (synopsis "QT6 Theme Provider for Hyprland")
    (description "@code{hyprqt6engine} provides a theme for QT6 apps.")
    (license license:bsd-3)))
