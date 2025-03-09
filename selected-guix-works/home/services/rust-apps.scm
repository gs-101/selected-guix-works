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

(define-module (selected-guix-works home services rust-apps)
  #:use-module (gnu home services)
  #:use-module (gnu services configuration)
  #:use-module (gnu packages rust-apps)
  #:use-module (guix gexp)
  #:export (home-ripgrep-configuration
            home-ripgrep-service-type))

(define-maybe boolean (prefix home-ripgrep-configuration-))
(define-maybe string (prefix home-ripgrep-configuration-))
(define-maybe integer (prefix home-ripgrep-configuration-))

;; ripgrep home service.

;; Serialization of ripgrep.

(define (serialize field-name)
  (let ((name (string-append "--" (symbol->string field-name))))
    (if (string-suffix? "?" name)
        (string-drop-right name 1)
        name)))

(define (home-ripgrep-configuration-serialize-boolean field-name value)
  (when value
    #~(string-append #$(serialize field-name) "\n")))

(define (home-ripgrep-configuration-serialize-string field-name value)
  #~(string-append #$(serialize field-name) "=" #$value "\n"))

(define (home-ripgrep-configuration-serialize-integer field-name value)
  #~(string-append #$(serialize field-name) "=" (number->string #$value) "\n"))

(define (home-ripgrep-configuration-serialize-extra-content field-name value)
  #~(if (string=? #$value "") "" (string-append #$value "\n")))

(define (home-ripgrep-configuration-serialize-ripgrep-configuration field-name value)
  #$(serialize-configuration value home-ripgrep-configuration-fields))

;; Configuration of ripgrep.

(define-configuration home-ripgrep-configuration
  (pre
   maybe-string
   "Run a command before search, searching its output instead of files.")
  (pre-glob
   maybe-string
   "Run the command defined on @code{pre} only on the specified globs.")
  (search-zip?
   maybe-boolean
   "Whether to search inside compressed files.")
  (crlf?
   maybe-boolean
   "Whether to treat ‘\r\n’ as a line terminator.  This is what is used in Windows.")
  (engine
   maybe-string
   "Specify the regular expression engine.
Accepted values are @code{default}, @code{pcre2}, or @code{auto}.
@code{pcre2} is useful for features such as look-around or backreferences.")
  (fixed-strings?
   maybe-boolean
   "Whether to treat all patterns as string literals, to avoid escaping.")
  (max-count
   maybe-integer
   "Limit the number of matching lines per file by the given number.
0 disables search altogether.")
  (mmap?
   maybe-boolean
   "Whether to search using memory maps.  @code{ripgrep} does this automatically,
and it's useful for searching single files.")
  (multiline?
   maybe-boolean
   "Whether to search across multiple lines.  This allows for regular expressions
containing ‘\n’.")
  (multiline-dotall?
   maybe-boolean
   "Whether using ‘.’ to match any character should also match line terminators.")
  (regex-size-limit
   maybe-string
   "The maximum size a compiled regular expression can have.  Useful when one
explicitly wants @code{ripgrep} to spend a longer time building a regex matcher.
The value is a number with a suffix, which are:
@itemize
@item @code{K} - Kilobytes
@item @code{M} - Megabytes
@item @code{G} - Gigabytes
@end itemize
No suffix is assumed to be bytes.")
  (smart-case?
   maybe-boolean
   "Whether to enable case-sensitive search only when a pattern
character is capitalized.")
  (text?
   maybe-boolean
   "Whether to search binary files as if they were text.  Beware, as this may
end up passing escape sequences to your terminal.")
  (threads
   maybe-integer
   "The number of threads used for search.  The default of 0 chooses the
number automatically.")
  (word-regexp?
   maybe-boolean
   "Whether to show only matches surrounded by word boundaries.
This is the equivalent of surrounding every match with ‘\b{start-half}’ and ‘\b{end-half}’.")
  (binary?
   maybe-boolean
   "Whether to search binary files, without converting them to text.
Stops search when a match is found.")
  (follow?
   maybe-boolean
   "Whether to follow symbolic links.")
  (glob
   maybe-string
   "Define a glob, for including or excluding matches.")
  (hidden?
   maybe-boolean
   "Whether to search hidden files or directories (those prefixed with a ‘.’).")
  (max-depth
   maybe-integer
   "The maximum depth search can descend.")
  (max-filesize
   maybe-string
   "The maximum file size that can be searched.  Does not apply to directories.
Follows the same schema of @code{regex-size-limit}:
@itemize
@item @code{K} - Kilobytes
@item @code{M} - Megabytes
@item @code{G} - Gigabytes
@end itemize
Where no suffix is assumed to be bytes.")
  (one-file-system?
   maybe-boolean
   "Whether to stop @code{ripgrep} from searching across different file systems.")
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
being the name, and the value being the glob.")
  (after-context
   maybe-integer
   "Show the given number of lines after the match as context.")
  (before-context
   maybe-integer
   "Show the given number of lines before the match as context.")
  (color
   maybe-string
   "When to show colors.
Accepted values are @code{never}, @code{auto}, @code{always} and
@code{ansi} (this last one is more compatible with Windows).")
  (colors
   maybe-string
   "Specify colors in a {type}:{attribute}:{value} structure.")
  (column?
   maybe-boolean
   "Whether to display column numbers.  Enabling it also enables --line-number.")
  (context
   maybe-integer
   "Show the given number of lines before and after the match as context.")
  (context-separator
   maybe-string
   "Separator used to separate the match from the context.")
  (field-context-separator
   maybe-string
   "Separator used to separate elements not part of the file, such as the
file path, line numbers and colors from the context lines.")
  (field-match-separator
   maybe-string
   "Separator used to separate elements not part of the file, such as the
file path, line numbers and colors from the context lines.")
  (hyperlink-format
   maybe-string
   "The format used to display hyperlinks to the results.  A format string
can be used, but there are also some predefined aliases:
@itemize
@item @code{default}
@item @code{none}
@item @code{file}
@item @code{grep+}
@item @code{kitty}
@item @code{macvim}
@item @code{textmate}
@item @code{vscode}
@item @code{vscode-insiders}
@item @code{vscodium}
@end itemize")
  (include-zero?
   maybe-boolean
   "Whether to show the number of matches even if the number is zero.")
  (line-number?
   maybe-boolean
   "Whether to show line numbers.  Enabled automatically with @code{column?}")
  (max-columns
   maybe-integer
   "The maximum number of columns to display in a line match.  Lines with matches
over this limit will be removed from the results.")
  (max-columns-preview?
   maybe-boolean
   "Whether to show a preview of matched lines over the limit of @code{max-columns},
instead of removing the matched lines.")
  (only-matching?
   maybe-boolean
   "Whether to show only the matched parts of a matching line in a separate
output line.")
  (passthru?
   maybe-boolean
   "Whether to print all lines in a file with a match, highlighting the matches.")
  (sort
   maybe-string
   "Sort results in ascending order following the given criteria.
Accepted values are:
@itemize
@item @code{none}
@item @code{path}
@item @code{modified}
@item @code{accessed}
@item @code{created}")
  (sortr
   maybe-string
   "Sort results in descending order following the given criteria.
Accepted values are:
@itemize
@item @code{none}
@item @code{path}
@item @code{modified}
@item @code{accessed}
@item @code{created}")
  (trim?
   maybe-boolean
   "Whether to trim whitespace at the beginning of each line.")
  (extra-content
   (string "")
   "Extra content to be added to the file as-is."
   (serializer home-ripgrep-configuration-serialize-extra-content))
  (prefix home-ripgrep-configuration-))

(define (home-ripgrep-profile-entries config)
  (list ripgrep))

(define (home-ripgrep-environment-entries config)
  '(("RIPGREP_CONFIG_PATH" . "$XDG_CONFIG_HOME/ripgrep/config")))

(define (home-ripgrep-files config)
  (list
   `(".config/ripgrep/config"
     ,(mixed-text-file "ripgrepc-config"
                       (serialize-configuration config home-ripgrep-configuration-fields)))))

(define home-ripgrep-service-type
  (service-type (name 'home-ripgrep)
                (extensions
                 (list (service-extension home-profile-service-type
                                          home-ripgrep-profile-entries)
                       ;; ripgrep doesn't have a set configuration path.
                       ;; Chose this one because it seems like a sensible choice.
                       (service-extension home-environment-variables-service-type
                                          home-ripgrep-environment-entries)
                       (service-extension home-files-service-type
                                          home-ripgrep-files)))
                (default-value (home-ripgrep-configuration))
                (description "Configure @code{ripgrep}, a line oriented
search tool inspired by @xref{grep}.")))
