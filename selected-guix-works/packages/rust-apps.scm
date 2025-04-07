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

;; Module featuring software built with Rust.

;;; Code:

(define-module (selected-guix-works packages rust-apps)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages crates-vcs)
  #:use-module (gnu packages crates-check)
  #:use-module (selected-guix-works packages crates-io)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages version-control)
  #:use-module (guix git-download)

  #:use-module (guix build-system cargo))

(define-public pay-respects
  (package
    (name "pay-respects")
    (version "0.7.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "pay-respects" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32
         "16ilc58f5drixzgsjvzwv1s4liyn3ihfagpy9n6aif1084jfj83n"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs
       (("rust-askama" ,rust-askama-0.13)
        ("rust-colored" ,rust-colored-3)
        ("rust-inquire" ,rust-inquire-0.7)
        ("rust-pay-respects-parser" ,rust-pay-respects-parser-0.3)
        ("rust-pay-respects-utils" ,rust-pay-respects-utils-0.1)
        ("rust-regex-lite" ,rust-regex-lite-0.1)
        ("rust-rust-i18n" ,rust-rust-i18n-3)
        ("rust-sys-locale" ,rust-sys-locale-0.3))
       #:install-source? #f))
    (home-page "https://codeberg.org/iff/pay-respects")
    (synopsis
     "Command suggestions, @code{command-not-found} and @code{thefuck} replacement")
    (description
     "@command{pay-respects} suggests command corrections by simply pressing f
after a mistake.")
    (license license:agpl3+)))


(define-public gitu
  (package
    (name "gitu")
    (version "0.29.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gitu" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1p8h3c2apz18za8pijb3v7yrvabx0xwdrm52f8cq511hl4qn1mva"))))
    (build-system cargo-build-system)
    (native-inputs (list zlib
                         git))
    (arguments
     `(#:cargo-inputs (("rust-arboard" ,rust-arboard-3.4.1)
                       ("rust-chrono" ,rust-chrono-0.4)
                       ("rust-clap" ,rust-clap-4)
                       ("rust-crossterm" ,rust-crossterm-0.28)
                       ("rust-etcetera" ,rust-etcetera-0.8)
                       ("rust-figment" ,rust-figment-0.10)
                       ("rust-git-version" ,rust-git-version-0.3)
                       ("rust-git2" ,rust-git2-0.20)
                       ("rust-ignore" ,rust-ignore-0.4)
                       ("rust-itertools" ,rust-itertools-0.14)
                       ("rust-log" ,rust-log-0.4.26)
                       ("rust-nom" ,rust-nom-7)
                       ("rust-notify" ,rust-notify-7)
                       ("rust-ratatui" ,rust-ratatui-0.29)
                       ("rust-regex" ,rust-regex-1)
                       ("rust-serde" ,rust-serde-1.0.219)
                       ("rust-similar" ,rust-similar-2)
                       ("rust-simple-logging" ,rust-simple-logging-2)
                       ("rust-strip-ansi-escapes" ,rust-strip-ansi-escapes-0.2.1)
                       ("rust-toml" ,rust-toml-0.8)
                       ("rust-tree-sitter" ,rust-tree-sitter-0.20)
                       ("rust-tree-sitter-bash" ,rust-tree-sitter-bash-0.20)
                       ("rust-tree-sitter-c" ,rust-tree-sitter-c-0.20)
                       ("rust-tree-sitter-c-sharp" ,rust-tree-sitter-c-sharp-0.20)
                       ("rust-tree-sitter-cpp" ,rust-tree-sitter-cpp-0.20)
                       ("rust-tree-sitter-elixir" ,rust-tree-sitter-elixir-0.1)
                       ("rust-tree-sitter-go" ,rust-tree-sitter-go-0.20)
                       ("rust-tree-sitter-haskell" ,rust-tree-sitter-haskell-0.15)
                       ("rust-tree-sitter-highlight" ,rust-tree-sitter-highlight-0.20)
                       ("rust-tree-sitter-html" ,rust-tree-sitter-html-0.20)
                       ("rust-tree-sitter-java" ,rust-tree-sitter-java-0.20)
                       ("rust-tree-sitter-javascript" ,rust-tree-sitter-javascript-0.20)
                       ("rust-tree-sitter-json" ,rust-tree-sitter-json-0.20)
                       ("rust-tree-sitter-ocaml" ,rust-tree-sitter-ocaml-0.20)
                       ("rust-tree-sitter-php" ,rust-tree-sitter-php-0.20)
                       ("rust-tree-sitter-python" ,rust-tree-sitter-python-0.20)
                       ("rust-tree-sitter-ruby" ,rust-tree-sitter-ruby-0.20)
                       ("rust-tree-sitter-rust" ,rust-tree-sitter-rust-0.20)
                       ("rust-tree-sitter-scala" ,rust-tree-sitter-scala-0.20)
                       ("rust-tree-sitter-toml" ,rust-tree-sitter-toml-0.20)
                       ("rust-tree-sitter-typescript" ,rust-tree-sitter-typescript-0.20)
                       ("rust-tui-prompts" ,rust-tui-prompts-0.5))
       #:cargo-development-inputs (("rust-criterion" ,rust-criterion-0.5)
                                   ("rust-insta" ,rust-insta-1.42.2)
                                   ("rust-pretty-assertions" ,rust-pretty-assertions-1)
                                   ("rust-temp-dir" ,rust-temp-dir-0.1)
                                   ("rust-unicode-width" ,rust-unicode-width-0.2))
       #:install-source? #f))
    (home-page "")
    (synopsis "git client inspired by Magit")
    (description "@code{gitu} is a git Terminal User Interface inspired
by Emacs' Magit.")
    (license license:expat)))

(define-public rust-stakeholder
  ;; No tagged releases.
  (let ((commit "52f64ad3d61c439b500bc893cbc96050e7a2c85a"))
    (package
      (name "rust-stakeholder")
      (version commit)
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://github.com/giacomo-b/rust-stakeholder")
                      (commit version)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "1j785mqgdiw1yzxn2fvfk6lj1caqmpc4nkhhpbmf6ywcl60s9ix8"))))
      (build-system cargo-build-system)
      (arguments
       (list
        #:install-source? #f
        #:cargo-inputs
        `(("rust-clap" ,rust-clap-4.5.32)
          ("rust-colored" ,rust-colored-3)
          ("rust-console" ,rust-console-0.15.11)
          ("rust-indicatif" ,rust-indicatif-0.17.11)
          ("rust-rand" ,rust-rand-0.9))))
      (home-page "https://github.com/giacomo-b/rust-stakeholder")
      (synopsis
       "Generate impressive-looking terminal output to look busy")
      (description
       "@command{rust-stakeholder} is a joke program that generates nonsensical
terminal output so one can look busy.  Comes in different developer flavours
and varying levels of jargon.")
      (license license:expat))))
