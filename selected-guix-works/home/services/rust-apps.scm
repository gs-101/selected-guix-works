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

;; Module featuring services for configuring Rust applications.
;;; Code:

;; --pre=COMMAND
;; Run COMMAND before search, searching on its output.
;; --pre-glob=GLOB
;; Run --pre=COMMAND only on the specified globs. Multiple may be used.
;; --search-zip
;; --crlf
;; treat "\r\n" as a line terminator, more useful in Windows.
;; --engine=ENGINE
;; Specify the regular expression engine.
;; --fixed-strings
;; Treat all patterns as string literals, to avoid escaping.
;; --max-count=NUM
;; --mmap
;; Search using memory maps.
;; --multiline
;; Search across multiple lines.
;; --multiline-dotall
;; Make "." match "\n" too.
;; --regex-size-limit=NUM+SUFFIX?
;; If no suffix is given, then NUM is assumed to be bytes.
;; --smart-case
;; --text
;; Search binary files as if they were text.
;; May pass escape sequences to the terminal.
;; --threads=NUM
;; The default 0 chooses the thread count based on heuristics.
;; --word-regexp
;; Only show matches surrounded by word boundaries, equivalent to surrounding
;; every match with \b{start-half} and \b{end-half}.
;; --binary
;; Allows for searching binary files. Stops when a match in the binary is found.
;; --follow
;; Follow symbolic links.
;; --glob
;; Define a glob, for excluding or including matches.
;; --hidden
;; --max-depth=NUM
;; --max-filesize=NUM+SUFFIX?
;; --one-file-system
;; Don't cross file system boundaries.
;; --type
;; --type-not
;; --type-add=TYPESPEC
;; Define a new ripgrep type.
;; --after-context=NUM
;; Show NUM lines after each match.
;; --before-context=NUM
;; --color=WHEN
;; --colors=COLOR_SPEC
;; Define colors for use in the output.
;; --column
;; Show column numbers. Implies --line-number
;; --context=NUM
;; --context-separator=SEPARATOR
;; --field-context-separator=SEPARATOR
;; Separator used to print contextual lines.
;; --field-match-separator=SEPARATOR
;; Used when printing matching lines.
;; --hyperlink-format=FORMAT
;; Setting it to "default" enables hyperlinks with no additional configuration.
;; --include-zero
;; Return the number of matches even if it is zero.
;; --line-number
;; --max-columns=NUM
;; --max-columns-preview
;; --only-matching
;; Print only the matches of a line.
;; --passthru
;; Print all lines, highlighting matches.
;; --quiet
;; --sort=SORTBY
;; --sortr=SORTBY
;; Like the one above, but in descending order.
;; --trim
;; Trim whitespace at the beginning of each line.
;; (define-maybe string (prefix ripgrep-configuration-))
;; (define-maybe boolean (prefix msmtp-configuration-))

(define-module (selected-guix-works home services desktop)
  #:use-module (gnu home services)
  #:use-module (guix records)
  #:use-module (guix gexp)
  #:export (home-ripgrep-configuration
            home-ripgrep-service))
