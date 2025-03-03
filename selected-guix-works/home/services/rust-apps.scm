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

(define-module (selected-guix-works home services desktop)
  #:use-module (gnu home services)
  #:use-module (guix records)
  #:use-module (guix gexp)
  #:export (home-ripgrep-configuration
            home-ripgrep-service))

(define-maybe boolean (prefix ripgrep-configuration-))
(define-maybe string (prefix ripgrep-configuration-))
(define-maybe integer (prefix ripgrep-configuration-))

;; Serialization.
(define (serialize field-name)
  (let ((name (symbol->string (string-append "--" field-name))))
    (if (string-suffix? "?" name)
        (string-drop-right name 1)
        name)))

(define (ripgrep-configuration-serialize-boolean field-name value)
  (when value
    (string-append #$(serialize field-name) "\n\n")))

(define (ripgrep-configuration-serialize-string field-name value)
  #~(string-append #$(serialize field-name) "=" #$value "\n\n"))

(define (ripgrep-configuration-serialize-integer field-name value)
  #~(string-append #$(serialize field-name) "=" (number->string #$value) "\n\n"))

(define (ripgrep-configuration-serialize-typeadd field-name value)
  (with-shell-quotation-bindings
   #~(string-append
      "--" field-name "="
      #$@(map
          (match-lambda
            ((key . #f)
             "")
            ((key . value)
             #~(string-append #$key ":" (shell-single-quote #$value) " "))
            value)))))

(define (home-ripgrep-configuration-serialize-ripgrep-configuration field-name value)
  #$(serialize-configuration value ripgrep-configuration-fields))

;; Configuration of 'ripgrep'.
(define-configuration ripgrep-configuration
  (pre
   maybe-string
   "Run a command before search, searching its output instead of files.")
  (pre-glob
   maybe-string
   "Run the previous --pre=COMMAND only on the specified globs.")
  (search-zip?
   maybe-boolean
   "Wether to search the content of compressed files.")
  (crlf?
   maybe-boolean
   "Wether to treat ‘\r\n’ as a line terminator.  This is what is used in Windows.")
  (engine
   maybe-string
   "Specify the regular expression engine.
Accepted values are ‘default’, ‘pcre2’, or ‘auto’.  ‘pcre2’ is useful for
features such as look-around or backreferences.")
  (fixed-strings?
   maybe-boolean
   "Wether to treat all patterns as string literals, to avoid escaping.")
  (max-count
   maybe-integer
   "Limit the number of matching lines per file by a number.
0 disables search altogether.")
  (mmap?
   maybe-boolean
   "Wether to search using memory maps.  @code{ripgrep} does this automatically,
and it's useful for searching single files.")
  (multiline?
   maybe-boolean
   "Wether to search across multiple lines.  Allow for regular expressions
containing ‘\n’.")
  (multiline-dotall?
   maybe-boolean
   "Wether using ‘.’ to match any character should also match line terminators.")
  (regex-size-limit
   maybe-string
   "The maximum size a compiled regular expression can have.  Useful when one
explicitly wants @code{ripgrep} to spend a longer time building a regex matcher.
The value is a number with a suffix, which are:
@itemize
@item K - Kilobytes
@item M - Megabytes
@item G - Gigabytes
@end itemize
No suffix is assumed to be bytes.")
  (smart-case?
   maybe-boolean
   "Wether to enable case-sensitive search only when a pattern
character is capitalized.")
  (text?
   maybe-boolean
   "Wether to search binary files as if they were text.  Beware, as this may
end up passing escape sequences to your terminal.")
  (threads
   maybe-integer
   "The number of threads used for search.  The default of 0 chooses the
number automatically.")
  (word-regexp?
   maybe-boolean
   "Wether to show only matches surrounded by word boundaries.
This is the equivalent of surrounding every match with ‘\b{start-half}’ and ‘\b{end-half}’.")
  (binary?
   maybe-boolean
   "Wether to search binary files, without converting them to text.
Stops search when a match is found.")
  (follow?
   maybe-boolean
   "Wether to follow symbolic links.")
  (glob
   maybe-string
   "Define a glob, for including or excluding matches.")
  (hidden?
   maybe-boolean
   "Wether to search hidden files or directories (those prefixed with a ‘.’).")
  (max-depth
   maybe-integer
   "The maximum depth search can descend into directories.")
  (max-filesize
   maybe-string
   "The maximum file size that can be searched.  Does not apply to directories.
Follows the same schema of @code{regex-size-limit}:
@itemize
@item K - Kilobytes
@item M - Megabytes
@item G - Gigabytes
@end itemize
Where no suffix is assumed to be bytes.")
  (one-file-system?
   maybe-boolean
   "Wether to stop @code{ripgrep} from searching across different file systems.")
  (type
   maybe-string
   "Limit @code{ripgrep} to search only files of the defined types.  For a list
of supported file types, invoke @command{rg --type-list} in your shell.")
  (type-not
   maybe-string
   "Instruct @code{ripgrep} to avoid searching in files of the specified types.
For a list of supported file types, invoke @comamnd{rg --type-list} in your shell.")
  (type-add
   maybe-string
   "Define new @code{ripgrep} types.  Types are defined as an alist, with the key
being the name, and the value being the glob."
   (serializer ripgrep-configuration-serialize-typeadd))
  (after-context
   maybe-integer))
