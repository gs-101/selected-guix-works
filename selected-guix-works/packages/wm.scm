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

;; Module featuring packages related to window managers.

;;; Code:

(define-module (selected-guix-works packages wm)
  #:use-module (guix packages)
  #:use-module (guix git-download)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages cpp)
  #:use-module (gnu packages gl)
  #:use-module (gnu packages freedesktop)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages qt)
  #:use-module (gnu packages vulkan)
  #:use-module (gnu packages polkit)
  #:use-module (gnu packages wm)
  #:use-module (gnu packages web)
  #:use-module (gnu packages image)
  #:use-module (gnu packages xdisorg)
  #:use-module (gnu packages gnome)
  #:use-module (guix gexp)

  #:use-module (guix build-system cmake)
  #:use-module (guix build-system copy))

(define-public hyprpaper
  (package
    (name "hyprpaper")
    (version "0.7.4")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hyprwm/hyprpaper")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "151r6s04yy3digl3g6gs49xx41yv4xldmbnqr87gp5nz705hjsd6"))))
    (build-system cmake-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list gcc-14 hyprwayland-scanner pkg-config))
    (inputs (list hyprutils
                  libglvnd
                  wayland
                  wayland-protocols
                  cairo
                  pango
                  hyprlang
                  hyprgraphics))
    (home-page "https://wiki.hyprland.org/Hypr-Ecosystem/hyprpaper")
    (synopsis "Hyprland wallpaper utility")
    (description
     "Hyprpaper is the wallpaper utility of the Hyprland ecosystem.  It uses IPC to for
quickly switching between different wallpapers.")
    (license license:bsd-3)))

(define-public hyprpolkitagent
  (package
    (name "hyprpolkitagent")
    (version "0.1.2")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/hyprwm/hyprpolkitagent")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0zqiskgn57zcrljpyk0py24izf77yngnj7586mb51rb1b4yd4n9b"))))
    (build-system cmake-build-system)
    (arguments
     '(#:tests? #f))
    (native-inputs (list pkg-config qtdeclarative qtbase vulkan-headers gcc-14))
    (inputs (list hyprutils polkit polkit-qt6))
    (home-page "https://wiki.hyprland.org/Hypr-Ecosystem/hyprpolkitagent/")
    (synopsis "Hyprland polkit agent")
    (description
     "@code{hyprpolkitagent} is the polkit agent of the Hyprland ecosystem.  A polkit agent
is used for requesting authentication from the root user or a member of the @code{wheel} group.")
    (license license:bsd-3)))

(define-public hyprshot
  (package
    (name "hyprshot")
    (version "1.3.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/Gustash/hyprshot")
             (commit version)))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0w3qhj59g31gxcairdl5fwvdyxmb9drkgbn1jjhcbvgrbncr7mpn"))))
    (build-system copy-build-system)
    (arguments
     (list
      #:install-plan
      #~'(("." "bin"
           #:include ("hyprshot")))))
    (inputs (list hyprland jq))
    (propagated-inputs (list grim slurp wl-clipboard libnotify hyprpicker))
    (home-page "https://github.com/Gustash/hyprshot")
    (synopsis "Hyprland screenshot utility")
    (description
     "@code{hyprshot} is a simple shell script used for taking screenshots in Hyprland.
It's primarily optimized for mouse usage, due to the ability of selection regions.")
    (license license:gpl3)))
