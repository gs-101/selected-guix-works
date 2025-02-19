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

;; Module featuring services for configuring desktop,
;; best suited for user configuration.

;;; Code:

(define-module (selected-guix-works home services desktop)
  #:use-module (gnu home services)
  #:use-module (guix records)
  #:use-module (guix gexp)
  #:export (home-gtk-2-configuration
            home-gtk-2-service-type))


;;;
;;; Helper functions.
;;;

;; Taken from bash-serialize-aliases
(define (gtk-serialize-colors name color)
  #~(string-append
     #$@(map
         (match-lambda
           ((key . #f)
            "")
           ((key . #t)
            #~(string-append name ": " color "\n")))
         color)))


;;;
;;; GTK 2 support.
;;;

(define-configuration/no-serialization home-gtk-2-configuration
  (color-hash
   (string "")
   "Hash table of the gtk-color-scheme setting, mapping color names to
GdkColors")
  (alternative-button-order?
   (boolean #f)
   "When true, display an alternative order for buttons in dialogs.")
  (alternative-sort-arrows?
   (boolean #f)
   "When true, inverts the direction of the sort indicators in
sorted list views.")
  (auto-mnemonics?
   (boolean #f)
   "When true, shows mnemonics automatically when the mnemonic activator
is pressed.")
  (button-images?
   (boolean #t)
   "When true, shows images on buttons.")
  (can-change-accels?
   (boolean #f)
   "When true, allows for chaning menu accelerators with a key.")
  (gtk-color-palette
   (string "black:white:gray50:red:purple:blue:light blue:green:yellow:orange:lavender:brown:goldenrod4:dodger blue:pink:light green:gray10:gray30:gray75:gray90")
   "Palette to use in the color selector.")
  (gtk-color-scheme
   (serializer gtk-serialize-colors)
   "Association list of names and colors, defining a color palette.")
  (cursor-blink?
   (boolean #t)
   "When true, the cursor blinks.")
  (cursor-blink-time
   (string "1200")
   "Length of the cursor blink cycle, in milliseconds.
Accepts values starting from 100.")
  (cursor-blink-timeout
   (string "2147483647")
   "Time after which the cursor stops blinking, in seconds.  Reset after
each user interaction. Setting this to zero has the same effect as setting
cursor-blink? to #f.  Accepts values starting from 1.")
  (cursor-theme-name
   (string "NULL")
   "Name of the cursor theme to use. The default theme is referenced as NULL.")
  (cursor-theme-size
   (string "0")
   "Size to use for cursors.  Accepts 0 and 128 as values.")
  (dnd-drag-threshold
   (string "8")
   "Number of pixels the cursor can move before dragging.
Accepts values starting from 1."))
