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

;; Module featuring services for window managers.

;;; Code:

(define-module (selected-guix-works home services wm)
  #:use-module (gnu home services)
  #:use-module (gnu home services shepherd)
  #:use-module (gnu packages wm)
  #:use-module (gnu services)
  #:use-module (gnu services configuration)
  #:use-module (gnu services shepherd)
  #:use-module (guix gexp)
  #:use-module (guix records)
  #:use-module (selected-guix-works packages wm)
  #:use-module (srfi srfi-26)
  #:export (home-swww-configuration
            home-swww-service-type))

;; Based on the Kodi home service.

(define-record-type* <home-swww-configuration>
  home-swww-configuration make-home-swww-configuration
  home-swww-configuration?
  (swww home-swww-swww ; file-like
        (default swww))
  (extra-options home-swww-extra-options ; list of strings
                 (default '())))

(define (home-swww-service config)
  "Return a <shepherd-service> for @command{swww} with CONFIG."
  (match-record config <home-swww-configuration>
                (swww extra-options)
    (let* ((swww (file-append swww "/bin/swww-daemon"))
           (command #~'(#$swww #$@extra-options))
           (log-file #~(string-append %user-log-dir "/swww.log")))
      (list (shepherd-service
             (documentation
              "Run @command{swww-daemon} for Wayland wallpapers.")
             (provision '(kodi))
             (modules '((shepherd support))) ; for '%user-log-dir'
             (start #~(make-forkexec-constructor #$command
                                                 #:log-file #$log-file))
             (stop #~(make-kill-destructor)))))))

(define home-swww-service-type
  (service-type
   (name 'home-swww)
   (default-value (home-swww-configuration))
   (extensions
    (list (service-extension home-shepherd-service-type
                             home-swww-service)))
   (description
    "Install and configure the daemon for @command{swww}, a wallpaper
application designed for Wayland.")))
