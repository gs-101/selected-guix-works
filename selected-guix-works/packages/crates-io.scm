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

;; Module featuring packages that usually constitute Rust library crates.
;; Basically, it's software that you shouldn't really
;; install in your system.

;;; Code:

(define-module (selected-guix-works packages crates-io)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages crates-check)
  #:use-module (gnu packages crates-windows)
  #:use-module (gnu packages crates-graphics)
  #:use-module (gnu packages crates-apple)
  #:use-module (gnu packages crates-compression)
  #:use-module (gnu packages crates-crypto)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages ssh)
  #:use-module (gnu packages tls)
  #:use-module (guix gexp)

  #:use-module (guix build-system cargo))

(define-public rust-base62-2
  (package
    (name "rust-base62")
    (version "2.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "base62" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "07xb6xj6f3h46kjhjj8sxnkvgjz3z4x0bd8zwazfwsqxrdxjmr8h"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-rustversion" ,rust-rustversion-1)
                       ("rust-criterion" ,rust-criterion-0.5))))
    (home-page "https://github.com/fbernier/base62")
    (synopsis "Base62 encoding/decoding library in Rust")
    (description "@code{rust-base} is a zero-dependency library for
working with base62 encoding with Rust.  base62 is typically used for
URL shorteners.  It can optionally use io traits from the standard
library.")
    (license license:expat)))

(define-public rust-colored-3
  (package
    (name "rust-colored")
    (version "3.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "colored" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0plizddhxc4vgkzdbzky5zggyaqfrmyim2d0n6sb7py9j3nf1q7x"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-windows-sys" ,rust-windows-sys-0.59)
                       ("rust-ansi-term" ,rust-ansi-term-0.12)
                       ("rust-insta" ,rust-insta-1.42.2)
                       ("rust-rspec" ,rust-rspec-1))
       ;; tests expect a real terminal
       #:tests? #f))
    (home-page "https://github.com/mackwic/colored")
    (synopsis "Add colors in your terminal")
    (description
     "The most simple way to add colors in your terminal.")
    (license license:mpl2.0)))

(define-public rust-itertools-0.14
  (package
    (name "rust-itertools")
    (version "0.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "itertools" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "118j6l1vs2mx65dqhwyssbrxpawa90886m3mzafdvyip41w2q69b"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-either" ,rust-either-1)
                       ("rust-criterion" ,rust-criterion-0.4)
                       ("rust-permutohedron" ,rust-permutohedron-0.2)
                       ("rust-quickcheck" ,rust-quickcheck-0.9))))
    (home-page "https://github.com/rust-itertools/itertools")
    (synopsis
     "Extra iterator adaptors, iterator methods, free functions, and macros")
    (description
     "This package provides extra iterator adaptors, iterator methods, free
 functions, and macros.")
    (license (list license:expat license:asl2.0))))

(define-public rust-libyml-0.0.5
  (package
    (name "rust-libyml")
    (version "0.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "libyml" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "106963pwg1gc3165bdlk8bbspmk919gk10vshhqglks3z8m700ik"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-version-check" ,rust-version-check-0.9)
                       ("rust-pretty-assertions" ,rust-pretty-assertions-1))
       ;; Has a test structure I don't know how to deal with.
       #:tests? #f))
    (home-page "https://github.com/sebastienrousseau/libyml")
    (synopsis
     "@code{libyaml} converted to Rust by using c2rust")
    (description
     "This package provides tools for safe and efficient parsing,
emitting, and manipulation of YAML data.")
    (license license:expat)))

(define-public rust-pay-respects-parser-0.3
  (package
    (name "rust-pay-respects-parser")
    (version "0.3.8")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "pay-respects-parser" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1riiyi48n6h5w11x39baxh7ip0xb3n9aqd563hk3fnkm9lkps0f5"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-serde" ,rust-serde-1.0.219)
                       ("rust-syn" ,rust-syn-2)
                       ("rust-toml" ,rust-toml-0.8))))
    (home-page "https://github.com/iffse/pay-respects")
    (synopsis "Compile time rule parser for the @code{pay-respects} CLI tool")
    (description
     "This package provides a compile time rule parser for the
 @code{pay-respects} CLI tool.")
    (license license:mpl2.0)))

(define-public rust-pay-respects-utils-0.1
  (package
    (name "rust-pay-respects-utils")
    (version "0.1.7")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "pay-respects-utils" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0sw0dzw7amsq810lv443bzhcrjmvyg3z27zgya5g0ijq8g8khahv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-itertools" ,rust-itertools-0.14)
                       ("rust-regex-lite" ,rust-regex-lite-0.1))))
    (home-page "https://codeberg.org/iff/pay-respects")
    (synopsis "Utilities for the @code{pay-respects} CLI tool")
    (description
     "This package provides utilities for the @code{pay-respects} CLI tool.")
    (license license:mpl2.0)))

(define-public rust-rust-i18n-3
  (package
    (name "rust-rust-i18n")
    (version "3.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "rust-i18n" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "16ysdz9ppinmzf6cgy8h4mc3ksxhd0qfm3l6dp47fnsnqvhsdcvi"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-globwalk" ,rust-globwalk-0.8)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-regex" ,rust-regex-1)
                       ("rust-rust-i18n-macro" ,rust-rust-i18n-macro-3)
                       ("rust-rust-i18n-support" ,rust-rust-i18n-support-3)
                       ("rust-smallvec" ,rust-smallvec-1))))
    (home-page "https://github.com/longbridge/rust-i18n")
    (synopsis
     "A better and simple i18n crate")
    (description
     "This package provides a simple and easy-to-use API for localizing
text.")
    (license license:expat)))

(define-public rust-rust-i18n-macro-3
  (package
    (name "rust-rust-i18n-macro")
    (version "3.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "rust-i18n-macro" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0xc2j998r9rcbynfzdgjjjk3d0v72mnzrdzaq7zqbd7jd98di031"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-test-flags '("--lib")
       #:cargo-inputs (("rust-glob" ,rust-glob-0.3)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-rust-i18n-support" ,rust-rust-i18n-support-3)
                       ("rust-serde" ,rust-serde-1.0.219)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-serde-yml" ,rust-serde-yml-0.0.12)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/longbridge/rust-i18n")
    (synopsis "Macro for @code{rust-rust-i18n} crate")
    (description "Macro for the @code{rust-rust-i18n} crate.")
    (license license:expat)))

(define-public rust-rust-i18n-support-3
  (package
    (name "rust-rust-i18n-support")
    (version "3.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "rust-i18n-support" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1divf6ha6zcp2xr9b9bj88nq76kka6i9sp7qn69yh29b9q4id3wk"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-test-flags '("--bins")
       #:cargo-inputs (("rust-arc-swap" ,rust-arc-swap-1)
                       ("rust-base62" ,rust-base62-2)
                       ("rust-globwalk" ,rust-globwalk-0.8)
                       ("rust-itertools" ,rust-itertools-0.11)
                       ("rust-lazy-static" ,rust-lazy-static-1)
                       ("rust-normpath" ,rust-normpath-1)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-regex" ,rust-regex-1)
                       ("rust-serde" ,rust-serde-1.0.219)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-serde-yml" ,rust-serde-yml-0.0.12)
                       ("rust-siphasher" ,rust-siphasher-1)
                       ("rust-toml" ,rust-toml-0.8)
                       ("rust-triomphe" ,rust-triomphe-0.1))))
    (home-page "https://github.com/longbridge/rust-i18n")
    (synopsis "Support for @code{rust-rust-i18n} crate")
    (description "Support for @code{rust-rust-i18n} crate.")
    (license license:expat)))

(define-public rust-serde-yml-0.0.12
  (package
    (name "rust-serde-yml")
    (version "0.0.12")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "serde_yml" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1p8xwz4znd6fj962y22fdvvv16gb8c0hx4iv5hjplngiidcdvqjr"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-indexmap" ,rust-indexmap-2)
                       ("rust-itoa" ,rust-itoa-1)
                       ("rust-libyml" ,rust-libyml-0.0.5)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-ryu" ,rust-ryu-1)
                       ("rust-serde" ,rust-serde-1.0.219)
                       ("rust-version-check" ,rust-version-check-0.9)
                       ("rust-indoc" ,rust-indoc-2))))
    (home-page "https://serdeyml.com")
    (synopsis
     "Work with YAML using the Serde serialization framework")
    (description
     "This package provides a robust library that simplifies the
serialization and deserialization of Rust data structures to and
from YAML format using the widely-used Serde framework.")
    (license (list license:expat license:asl2.0))))

(define-public rust-siphasher-1
  (package
    (name "rust-siphasher")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "siphasher" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "17f35782ma3fn6sh21c027kjmd227xyrx06ffi8gw4xzv9yry6an"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-serde" ,rust-serde-1.0.219)
                       ("rust-serde-json" ,rust-serde-json-1))))
    (home-page "https://docs.rs/siphasher")
    (synopsis "SipHash-2-4, SipHash-1-3 and 128-bit variants in pure Rust")
    (description
     "This package provides SipHash-2-4, SipHash-1-3 and 128-bit
variants in pure Rust.")
    (license (list license:expat license:asl2.0))))

(define-public rust-insta-1.42.2
  (package
    (name "rust-insta")
    (version "1.42.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "insta" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "111hrdc3bxwp146kz2ffwdq0qypdjk8a2yzwr8mivlb7maxrl9ah"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-clap" ,rust-clap-4.5.32)
                       ("rust-console" ,rust-console-0.15)
                       ("rust-csv" ,rust-csv-1)
                       ("rust-globset" ,rust-globset-0.4)
                       ("rust-linked-hash-map" ,rust-linked-hash-map-0.5)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-pest" ,rust-pest-2)
                       ("rust-pest-derive" ,rust-pest-derive-2)
                       ("rust-pin-project" ,rust-pin-project-1)
                       ("rust-regex" ,rust-regex-1)
                       ("rust-ron" ,rust-ron-0.7)
                       ("rust-serde" ,rust-serde-1.0.219)
                       ("rust-similar" ,rust-similar-2)
                       ("rust-toml" ,rust-toml-0.5)
                       ("rust-walkdir" ,rust-walkdir-2))))
    (home-page "https://insta.rs/")
    (synopsis "Snapshot testing library for Rust")
    (description
     "This package provides a snapshot testing library for Rust.")
    (license license:asl2.0)))

(define-public rust-ratatui-macros-0.6
  (package
    (name "rust-ratatui-macros")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "ratatui-macros" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1x1dlns91bqs2dpg7nsccbpnbswcg1vn1yk669vs1s6vh07m9vvg"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-ratatui" ,rust-ratatui-0.29))))
    (home-page "https://github.com/ratatui/ratatui")
    (synopsis "Macros for Ratatui")
    (description "Macros for Ratatui.")
    (license license:expat)))

(define-public rust-tui-prompts-0.5
  (package
    (name "rust-tui-prompts")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tui-prompts" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0krnqbz59j2fhd3rkqaanms2d4xqv831qflkkchcqi95jy50svpb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-itertools" ,rust-itertools-0.13)
                       ("rust-ratatui" ,rust-ratatui-0.29)
                       ("rust-ratatui-macros" ,rust-ratatui-macros-0.6)
                       ("rust-rstest" ,rust-rstest-0.23))))
    (home-page "https://github.com/joshka/tui-widgets")
    (synopsis "Library for building interactive prompts for ratatui.")
    (description
     "This package provides a library for building interactive prompts for ratatui.")
    (license (list license:expat license:asl2.0))))

(define-public rust-tree-sitter-typescript-0.20
  (package
    (name "rust-tree-sitter-typescript")
    (version "0.20.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-typescript" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0w4nc7yjg2k64jrx1y782wvvd7dci1lbawbs17plhsi74hn1vg68"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1.0.106)
                       ("rust-tree-sitter" ,rust-tree-sitter-0.20))))
    (home-page "https://github.com/tree-sitter/tree-sitter-typescript")
    (synopsis "TypeScript and TSX grammars for tree-sitter")
    (description
     "This package provides TypeScript and TSX grammars for tree-sitter.")
    (license license:expat)))

(define-public rust-tree-sitter-toml-0.20
  (package
    (name "rust-tree-sitter-toml")
    (version "0.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-toml" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1s2kkcrw6kinb9x64nxdzwgahzs0i0kcqiq2g0h3vclqi9bpylfa"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1.0.106)
                       ("rust-tree-sitter" ,rust-tree-sitter-0.20))))
    (home-page "https://github.com/Mathspy/tree-sitter-toml")
    (synopsis "TOML grammar for tree-sitter")
    (description
     "This package provides a TOML grammar for tree-sitter")
    (license license:expat)))

(define-public rust-tree-sitter-scala-0.20
  (package
    (name "rust-tree-sitter-scala")
    (version "0.20.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-scala" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0l53vld3qs6gp5d29ynxmd2ybwr4p5c2dx9zmk5vb8w8i9ig9z24"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1.0.106)
                       ("rust-tree-sitter" ,rust-tree-sitter-0.20))))
    (home-page "https://github.com/tree-sitter/tree-sitter-scala")
    (synopsis "Scala grammar for tree-sitter")
    (description "This package provides a Scala grammar for tree-sitter.")
    (license license:expat)))

(define-public rust-tree-sitter-rust-0.20
  (package
    (name "rust-tree-sitter-rust")
    (version "0.20.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-rust" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "153mz8k8jh1l87z6nlb8nir1szmlij0hwp6fc0vx7dmjn04j70xh"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1.0.106)
                       ("rust-tree-sitter" ,rust-tree-sitter-0.20))))
    (home-page "https://github.com/tree-sitter/tree-sitter-rust")
    (synopsis "Rust grammar for tree-sitter")
    (description "This package provides a Rust grammar for tree-sitter.")
    (license license:expat)))

(define-public rust-tree-sitter-ruby-0.20
  (package
    (name "rust-tree-sitter-ruby")
    (version "0.20.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-ruby" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1zi74hxv8196l1xjl6b80fwqrvdc3yq5yk02bx4gi7a6hgrhxma4"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1.0.106)
                       ("rust-tree-sitter" ,rust-tree-sitter-0.20))))
    (home-page "https://github.com/tree-sitter/tree-sitter-ruby")
    (synopsis "Ruby grammar for tree-sitter")
    (description "This package provides a Ruby grammar for tree-sitter.")
    (license license:expat)))

(define-public rust-tree-sitter-python-0.20
  (package
    (name "rust-tree-sitter-python")
    (version "0.20.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-python" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "19cajx86brj6vgdjvxng9l5kvr2q63ym2ps4nffkj3dx3wdkpjg6"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1.0.106)
                       ("rust-tree-sitter" ,rust-tree-sitter-0.20))))
    (home-page "https://github.com/tree-sitter/tree-sitter-python")
    (synopsis "Python grammar for tree-sitter")
    (description "This package provides a Python grammar for tree-sitter.")
    (license license:expat)))

(define-public rust-tree-sitter-php-0.20
  (package
    (name "rust-tree-sitter-php")
    (version "0.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-php" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1plp0wrj2c6j8pksfi46fqb7nwvz9q02h1swgrqg1lbvlnm8kdhq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1.0.106)
                       ("rust-tree-sitter" ,rust-tree-sitter-0.20))))
    (home-page "https://github.com/tree-sitter/tree-sitter-php")
    (synopsis "PHP grammar for tree-sitter")
    (description "This package provides a PHP grammar for tree-sitter.")
    (license license:expat)))

(define-public rust-tree-sitter-ocaml-0.20
  (package
    (name "rust-tree-sitter-ocaml")
    (version "0.20.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-ocaml" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "12i0mkrj83lgn3rp9pi9hyws407fsd5qzggzxkh8mksqqsmn64gx"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1.0.106)
                       ("rust-tree-sitter" ,rust-tree-sitter-0.20))))
    (home-page "https://github.com/tree-sitter/tree-sitter-ocaml")
    (synopsis "OCaml grammar for tree-sitter")
    (description "This package provides a OCaml grammar for tree-sitter.")
    (license license:expat)))

(define-public rust-tree-sitter-json-0.20
  (package
    (name "rust-tree-sitter-json")
    (version "0.20.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-json" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0kgdhpj1ci9lgwcwygx52wdglscdq0g3hl3ks745rdbrqslki6js"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1.0.106)
                       ("rust-tree-sitter" ,rust-tree-sitter-0.20))))
    (home-page "https://github.com/tree-sitter/tree-sitter-json")
    (synopsis "JSON grammar for tree-sitter")
    (description "This package provides a JSON grammar for tree-sitter.")
    (license license:expat)))

(define-public rust-tree-sitter-javascript-0.20
  (package
    (name "rust-tree-sitter-javascript")
    (version "0.20.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-javascript" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0b1wywi2kr7nhk20rnm7lz1xz1ij70fgg7rjyw3chqlbm4pc05fh"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1.0.106)
                       ("rust-tree-sitter" ,rust-tree-sitter-0.20))))
    (home-page "https://github.com/tree-sitter/tree-sitter-javascript")
    (synopsis "JavaScript grammar for tree-sitter")
    (description
     "This package provides a JavaScript grammar for tree-sitter.")
    (license license:expat)))

(define-public rust-tree-sitter-java-0.20
  (package
    (name "rust-tree-sitter-java")
    (version "0.20.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-java" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0lr68vpj1ryp7zv18hjgjql3n3idp0mpsifph487dgsspyb5dp1a"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1.0.106)
                       ("rust-tree-sitter" ,rust-tree-sitter-0.20))))
    (home-page "https://github.com/tree-sitter/tree-sitter-java")
    (synopsis "Java grammar for tree-sitter")
    (description "This package provides a Java grammar for tree-sitter.")
    (license license:expat)))

(define-public rust-tree-sitter-html-0.20
  (package
    (name "rust-tree-sitter-html")
    (version "0.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-html" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "07gsnzb0ydbi73cjsa36x1a35qhwyqsbiavzsr5kr122pnv24y01"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1.0.106)
                       ("rust-tree-sitter" ,rust-tree-sitter-0.20))))
    (home-page "https://github.com/tree-sitter/tree-sitter-html")
    (synopsis "HTML grammar for tree-sitter")
    (description "This package provides a HTML grammar for tree-sitter.")
    (license license:expat)))

(define-public rust-tree-sitter-highlight-0.20
  (package
    (name "rust-tree-sitter-highlight")
    (version "0.20.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-highlight" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1g3811rccl8lw2hkkcy4qvfni61zmfyy5i4z7n1hnyjs9ic448q4"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-regex" ,rust-regex-1)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-tree-sitter" ,rust-tree-sitter-0.20))))
    (home-page "https://tree-sitter.github.io/tree-sitter")
    (synopsis "Library for performing syntax highlighting with Tree-sitter")
    (description
     "This package provides a library for performing syntax highlighting
with tree-sitter.")
    (license license:expat)))

(define-public rust-tree-sitter-haskell-0.15
  (package
    (name "rust-tree-sitter-haskell")
    (version "0.15.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-haskell" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1wml8ma57rd33f1j5kgqqa5fs0sm7ywg8c88ph37f4ncss35nqxc"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1.0.106)
                       ("rust-tree-sitter" ,rust-tree-sitter-0.20))))
    (home-page "https://github.com/tree-sitter/tree-sitter-haskell")
    (synopsis "Haskell grammar for tree-sitter")
    (description "This package provides a Haskell grammar for tree-sitter.")
    (license license:expat)))

(define-public rust-tree-sitter-go-0.20
  (package
    (name "rust-tree-sitter-go")
    (version "0.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-go" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "052irhc00xfkl4v3is3ddmgk5b0dblpz39zxy8d9c6s434gx3mhs"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1.0.106)
                       ("rust-tree-sitter" ,rust-tree-sitter-0.20))))
    (home-page "https://github.com/tree-sitter/tree-sitter-go")
    (synopsis "Go grammar for tree-sitter")
    (description "This package provides a Go grammar for tree-sitter.")
    (license license:expat)))

(define-public rust-tree-sitter-elixir-0.1
  (package
    (name "rust-tree-sitter-elixir")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-elixir" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0ns1664w51gpbv86bxfz57m3lkhmzlr1y5z55ai2rwfrwvrv3h0v"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1.0.106)
                       ("rust-tree-sitter" ,rust-tree-sitter-0.20))))
    (home-page "https://github.com/elixir-lang/tree-sitter-elixir")
    (synopsis "Elixir grammar for tree-sitter")
    (description
     "This package provides a Elixir grammar for tree-sitter.")
    (license license:asl2.0)))

(define-public rust-tree-sitter-cpp-0.20
  (package
    (name "rust-tree-sitter-cpp")
    (version "0.20.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-cpp" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0x5vzrykwmr6vc3115x15s6wqjh9q5n6m5lmk3xrl1biv9d4mc26"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1.0.106)
                       ("rust-tree-sitter" ,rust-tree-sitter-0.20))))
    (home-page "https://github.com/tree-sitter/tree-sitter-cpp")
    (synopsis "C++ grammar for tree-sitter")
    (description "This package provides a C++ grammar for tree-sitter.")
    (license license:expat)))

(define-public rust-tree-sitter-c-sharp-0.20
  (package
    (name "rust-tree-sitter-c-sharp")
    (version "0.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-c-sharp" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0cdf37z6dfiff83p3p8dvsv19g1dysakllqhkvx28jgk1333vaxr"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1.0.106)
                       ("rust-tree-sitter" ,rust-tree-sitter-0.20))))
    (home-page "https://github.com/tree-sitter/tree-sitter-c-sharp")
    (synopsis "C# grammar for tree-sitter")
    (description "This package provides a C# grammar for tree-sitter.")
    (license license:expat)))

(define-public rust-tree-sitter-c-0.20
  (package
    (name "rust-tree-sitter-c")
    (version "0.20.8")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-c" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0wkbrjwi68pmqpv6n9791yh9ybhw75narbgjz20qbh2qhqymzgab"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1.0.106)
                       ("rust-tree-sitter" ,rust-tree-sitter-0.20))))
    (home-page "https://github.com/tree-sitter/tree-sitter-c")
    (synopsis "C grammar for tree-sitter")
    (description "This package provides a C grammar for tree-sitter.")
    (license license:expat)))

(define-public rust-cc-1.0.106
  (package
    (name "rust-cc")
    (version "1.0.106")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cc" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "18hr0xnyi46ap1b9gzlnj658092afafy12cffppsykhxgclcwvq6"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-jobserver" ,rust-jobserver-0.1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-once-cell" ,rust-once-cell-1))))
    (home-page "https://github.com/rust-lang/cc-rs")
    (synopsis
     "Invoke the native C compiler")
    (description
     "This package provides a build-time dependency for Cargo build scripts to
assist in invoking the native C compiler to compile native C code into a static
archive to be linked into Rustcode.")
    (license (list license:expat license:asl2.0))))

(define-public rust-tree-sitter-bash-0.20
  (package
    (name "rust-tree-sitter-bash")
    (version "0.20.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-bash" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "01jr5dadyma9jf08ykc5dn6yqprmjhxpvpqqzllwxckyqcr21njp"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1.0.106)
                       ("rust-tree-sitter" ,rust-tree-sitter-0.20))))
    (home-page "https://github.com/tree-sitter/tree-sitter-bash")
    (synopsis "Bash grammar for tree-sitter")
    (description "This package provides a Bash grammar for tree-sitter.")
    (license license:expat)))

(define-public rust-vte-0.14
  (package
    (name "rust-vte")
    (version "0.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "vte" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0xy01fgkzb2080prh2ncd8949hm2248fc5wf1lryhdrhxzbxq7r3"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-arrayvec" ,rust-arrayvec-0.7)
                       ("rust-bitflags" ,rust-bitflags-2)
                       ("rust-cursor-icon" ,rust-cursor-icon-1)
                       ("rust-log" ,rust-log-0.4.26)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-serde" ,rust-serde-1.0.219))))
    (home-page "https://github.com/alacritty/vte")
    (synopsis "Parser for implementing terminal emulators")
    (description
     "This package provides a parser for implementing terminal emulators.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-strip-ansi-escapes-0.2.1
  (package
    (name "rust-strip-ansi-escapes")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "strip-ansi-escapes" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0980min1s9f5g47rwlq8l9njks952a0jlz0v7yxrm5p7www813ra"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-vte" ,rust-vte-0.14))))
    (home-page "https://github.com/luser/strip-ansi-escapes")
    (synopsis "Strip ANSI escape sequences from byte streams")
    (description
     "This crate is for stripping ANSI escape sequences from byte sequences.

This can be used to take output from a program that includes escape sequences
and write it somewhere that does not easily support them, such as a log
file.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-serde-derive-1.0.219
  (package
    (name "rust-serde-derive")
    (version "1.0.219")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "serde_derive" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "001azhjmj7ya52pmfiw4ppxm16nd44y15j2pf5gkcwrcgz7pc0jv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://serde.rs")
    (synopsis "Macros 1.1 implementation of #[derive(Serialize, Deserialize)]")
    (description
     "This package provides the macros 1.1 implementation of
@code{#[derive(Serialize, Deserialize)]}.")
    (license (list license:expat license:asl2.0))))

(define-public rust-serde-1.0.219
  (package
    (name "rust-serde")
    (version "1.0.219")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "serde" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1dl6nyxnsi82a197sd752128a4avm6mxnscywas1jq30srp2q3jz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-serde-derive" ,rust-serde-derive-1.0.219)
                       ("rust-serde-derive" ,rust-serde-derive-1.0.219))))
    (home-page "https://serde.rs")
    (synopsis "Generic serialization/deserialization framework")
    (description
     "This package provides a generic serialization/deserialization framework.")
    (license (list license:expat license:asl2.0))))

(define-public rust-notify-types-1
  (package
    (name "rust-notify-types")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "notify-types" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0x5idrpxzf70ng88rz28dqmgx1jyddf0vxx1x3csw09fw6skqpaq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-instant" ,rust-instant-0.1)
                       ("rust-serde" ,rust-serde-1.0.219))))
    (home-page "https://github.com/notify-rs/notify")
    (synopsis "Types used by the notify crate")
    (description "This package provides types used by the notify crate.")
    (license (list license:expat license:asl2.0))))

(define-public rust-notify-7
  (package
    (name "rust-notify")
    (version "7.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "notify" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "02a0a1n0raxqslwhfprwmz7w34v54r42006q0m8bmy89jz1v8cy5"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-crossbeam-channel" ,rust-crossbeam-channel-0.5)
                       ("rust-filetime" ,rust-filetime-0.2)
                       ("rust-fsevent-sys" ,rust-fsevent-sys-4)
                       ("rust-inotify" ,rust-inotify-0.10)
                       ("rust-kqueue" ,rust-kqueue-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-log" ,rust-log-0.4.26)
                       ("rust-mio" ,rust-mio-1)
                       ("rust-notify-types" ,rust-notify-types-1)
                       ("rust-walkdir" ,rust-walkdir-2)
                       ("rust-windows-sys" ,rust-windows-sys-0.52))))
    (home-page "https://github.com/notify-rs/notify")
    (synopsis "Cross-platform filesystem notification library")
    (description
     "This package contains a cross-platform filesystem
notification library.")
    (license license:cc0)))

(define-public rust-log-0.4.26
  (package
    (name "rust-log")
    (version "0.4.26")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "log" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "17mvchkvhnm2zxyfagh2g9p861f0qx2g1sg2v14sww9nvjry5g9h"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-serde" ,rust-serde-1.0.219)
                       ("rust-sval" ,rust-sval-2)
                       ("rust-sval-ref" ,rust-sval-ref-2)
                       ("rust-value-bag" ,rust-value-bag-1))))
    (home-page "https://github.com/rust-lang/log")
    (synopsis "lightweight logging facade for Rust")
    (description
     "This package provides a lightweight logging facade for Rust.")
    (license (list license:expat license:asl2.0))))

(define-public rust-libgit2-sys-0.18
  (package
    (name "rust-libgit2-sys")
    (version "0.18.0+1.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "libgit2-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1v7zcw1kky338grxs70y7fwpy70g846bpa5yzvl9f5bybr31g8g1"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1.0.106)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-libssh2-sys" ,rust-libssh2-sys-0.3)
                       ("rust-libz-sys" ,rust-libz-sys-1)
                       ("rust-openssl-sys" ,rust-openssl-sys-0.9)
                       ("rust-pkg-config" ,rust-pkg-config-0.3))))
    (home-page "https://github.com/rust-lang/git2-rs")
    (synopsis "Native bindings to the libgit2 library")
    (description
     "This package provides native Rust bindings to the @code{libgit2}
library.")
    (license (list license:expat license:asl2.0))))

(define-public rust-git2-0.20
  (package
    (name "rust-git2")
    (version "0.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "git2" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1zwav0r76njd9chqxh7wj4r4zfn08nzsisrg05liyd6cjf4piniz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-libgit2-sys" ,rust-libgit2-sys-0.18)
                       ("rust-log" ,rust-log-0.4.26)
                       ("rust-openssl-probe" ,rust-openssl-probe-0.1)
                       ("rust-openssl-sys" ,rust-openssl-sys-0.9)
                       ("rust-url" ,rust-url-2))))
    (home-page "https://github.com/rust-lang/git2-rs")
    (synopsis
     "Rust bindings to libgit2")
    (description
     "This package provides bindings to libgit2 for interoperating with git
repositories.  This library is both threadsafe and memory safe and allows both
reading and writing git repositories.")
    (license (list license:expat license:asl2.0))))

(define-public rust-pulldown-cmark-0.13
  (package
    (name "rust-pulldown-cmark")
    (version "0.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "pulldown-cmark" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "183fg8lrdhvydrx0dmg446n108rwrvnzci0sd1ig7lkbjqdbx2qy"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-getopts" ,rust-getopts-0.2)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-pulldown-cmark-escape" ,rust-pulldown-cmark-escape-0.11)
                       ("rust-serde" ,rust-serde-1.0.219)
                       ("rust-unicase" ,rust-unicase-2))))
    (home-page "https://github.com/raphlinus/pulldown-cmark")
    (synopsis "Pull parser for CommonMark")
    (description "This package provides a pull parser for @code{CommonMark}.")
    (license license:expat)))

(define-public rust-anstyle-1.0.10
  (package
    (name "rust-anstyle")
    (version "1.0.10")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "anstyle" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1yai2vppmd7zlvlrp9grwll60knrmscalf8l2qpfz8b7y5lkpk2m"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/rust-cli/anstyle")
    (synopsis "ANSI text styling")
    (description "This package provides ANSI text styling.")
    (license (list license:expat license:asl2.0))))

(define-public rust-clap-derive-4.5.32
  (package
    (name "rust-clap-derive")
    (version "4.5.32")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "clap_derive" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1mqcag8qapb5yhygg2hi153kzmbf7w5hqp3nl3fvl5cn4yp6l5q9"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anstyle" ,rust-anstyle-1.0.10)
                       ("rust-heck" ,rust-heck-0.5)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-pulldown-cmark" ,rust-pulldown-cmark-0.13)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/clap-rs/clap")
    (synopsis "Procedural macro crate for Clap")
    (description
     "This package provides the procedural macro crate for Clap.")
    (license (list license:expat license:asl2.0))))

(define-public rust-clap-builder-4.5.32
  (package
    (name "rust-clap-builder")
    (version "4.5.32")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "clap_builder" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1j5cdwdry9anb8ljzqymb15byghz8jcpzafshbxysmb1cxzyz9r2"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anstream" ,rust-anstream-0.6)
                       ("rust-anstyle" ,rust-anstyle-1.0.10)
                       ("rust-backtrace" ,rust-backtrace-0.3)
                       ("rust-clap-lex" ,rust-clap-lex-0.7)
                       ("rust-strsim" ,rust-strsim-0.11)
                       ("rust-terminal-size" ,rust-terminal-size-0.4)
                       ("rust-unicase" ,rust-unicase-2)
                       ("rust-unicode-width" ,rust-unicode-width-0.2))))
    (home-page "https://github.com/clap-rs/clap")
    (synopsis "Full-featured Command Line Argument Parser")
    (description
     "This package provides a simple to use, efficient, and full-featured
Command Line Argument Parser.")
    (license (list license:expat license:asl2.0))))

(define-public rust-clap-4.5.32
  (package
    (name "rust-clap")
    (version "4.5.32")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "clap" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "10vg2fbcsy0dwxdqpdqihxl8b935310lax6dc29d221nijpg7230"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-clap-builder" ,rust-clap-builder-4.5.32)
                       ("rust-clap-derive" ,rust-clap-derive-4.5.32))))
    (home-page "https://github.com/clap-rs/clap")
    (synopsis
     "Command Line Argument Parser")
    (description
     "This package provides a simple to use, efficient, and full-featured Command Line
Argument Parser.")
    (license (list license:expat license:asl2.0))))

(define-public rust-arboard-3.4.1
  (package
    (name "rust-arboard")
    (version "3.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "arboard" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1x2p8dfhzm3w0cpw81ab2rbyzvkzqs9g66xcakq4y0fd2v5rq2fz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-clipboard-win" ,rust-clipboard-win-5)
                       ("rust-core-graphics" ,rust-core-graphics-0.23)
                       ("rust-image" ,rust-image-0.25)
                       ("rust-log" ,rust-log-0.4.26)
                       ("rust-objc2" ,rust-objc2-0.5)
                       ("rust-objc2-app-kit" ,rust-objc2-app-kit-0.2)
                       ("rust-objc2-foundation" ,rust-objc2-foundation-0.2)
                       ("rust-parking-lot" ,rust-parking-lot-0.12)
                       ("rust-windows-sys" ,rust-windows-sys-0.48)
                       ("rust-wl-clipboard-rs" ,rust-wl-clipboard-rs-0.8)
                       ("rust-x11rb" ,rust-x11rb-0.13))))
    (home-page "https://github.com/1Password/arboard")
    (synopsis "Image and text handling for the OS clipboard")
    (description
     "This package provides image and text handling for the OS clipboard.")
    (license (list license:expat license:asl2.0))))

(define-public rust-encode-unicode-1
  (package
    (name "rust-encode-unicode")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "encode_unicode" version))
       (file-name
        (string-append name "-" version ".tar.gz"))
       (sha256
        (base32
         "1h5j7j7byi289by63s3w4a8b3g6l5ccdrws7a67nn07vdxj77ail"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-ascii" ,rust-ascii-1)
        ("rust-clippy" ,rust-clippy-0.0.302))
       #:cargo-development-inputs
       (("rust-lazy-static" ,rust-lazy-static-1))))
    (home-page "https://github.com/tormol/encode_unicode")
    (synopsis
     "UTF-8 and UTF-16 support for char, u8 and u16")
    (description
     "UTF-8 and UTF-16 character types, iterators and related methods for
char, u8 and u16.")
    (license (list license:expat license:asl2.0))))

(define-public rust-proptest-1.0
  (package
    (name "rust-proptest")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "proptest" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1rdhjnf0xma5rmsq04d31n2vq1pgbm42pjc6jn3jsj8qgz09q38y"))
       (modules '((guix build utils)))
       (snippet
        '(begin (substitute* "Cargo.toml"
                  (("\"=([[:digit:]]+(\\.[[:digit:]]+)*)" _ version)
                   (string-append "\"^" version)))))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-test-flags
       '("--release" "--"
         "--skip=num::test::contract_sanity::f32::range_from"
         "--skip=num::test::contract_sanity::f32::range_to_inclusive"
         "--skip=num::test::contract_sanity::f64::range_from"
         "--skip=num::test::contract_sanity::f64::range_to_inclusive"
         "--skip=string::test::askalono_0"
         "--skip=string::test::askalono_9"
         "--skip=string::test::comrak_0"
         "--skip=string::test::fblog_0"
         "--skip=string::test::fblog_1"
         "--skip=string::test::linky_0"
         "--skip=string::test::phonenumber_5"
         "--skip=string::test::phone_number_0"
         "--skip=string::test::spaceslugs_2"
         "--skip=string::test::stache_0")
       #:cargo-inputs
       (("rust-bit-set" ,rust-bit-set-0.5)
        ("rust-bit-vec" ,rust-bit-vec-0.6)
        ("rust-bitflags" ,rust-bitflags-2)
        ("rust-lazy-static" ,rust-lazy-static-1)
        ("rust-num-traits" ,rust-num-traits-0.2)
        ("rust-rand" ,rust-rand-0.8)
        ("rust-rand-chacha" ,rust-rand-chacha-0.3)
        ("rust-rand-xorshift" ,rust-rand-xorshift-0.3)
        ("rust-regex-syntax" ,rust-regex-syntax-0.8)
        ("rust-rusty-fork" ,rust-rusty-fork-0.3)
        ("rust-tempfile" ,rust-tempfile-3)
        )
       #:cargo-development-inputs
       (("rust-regex" ,rust-regex-1))))
    (home-page "https://altsysrq.github.io/proptest-book/proptest/index.html")
    (synopsis "Hypothesis-like property-based testing and shrinking")
    (description
     "The @code{proptest} crate provides most of Proptest’s functionality,
including most strategies and the testing framework itself.")
    (license (list license:expat license:asl2.0))))

(define-public rust-console-0.15.11
  (package
    (name "rust-console")
    (version "0.15.11")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "console" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1n5gmsjk6isbnw6qss043377kln20lfwlmdk3vswpwpr21dwnk05"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs
       (("rust-encode-unicode" ,rust-encode-unicode-1)
        ("rust-lazy-static" ,rust-lazy-static-1)
        ("rust-libc" ,rust-libc-0.2)
        ("rust-unicode-width" ,rust-unicode-width-0.1)
        ("rust-windows-sys" ,rust-windows-sys-0.52))
       #:cargo-development-inputs
       (("rust-proptest" ,rust-proptest-1.0)
        ("rust-regex" ,rust-regex-1))))
    (home-page "https://github.com/mitsuhiko/console")
    (synopsis "Terminal and console abstraction for Rust")
    (description
     "This package provides a terminal and console abstraction for Rust.")
    (license license:expat)))

(define-public rust-wasm-bindgen-shared-0.2.100
  (package
    (name "rust-wasm-bindgen-shared")
    (version "0.2.100")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasm-bindgen-shared" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0gffxvqgbh9r9xl36gprkfnh3w9gl8wgia6xrin7v11sjcxxf18s"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs
       (("rust-unicode-ident" ,rust-unicode-ident-1))))
    (home-page "https://rustwasm.github.io/wasm-bindgen/")
    (synopsis "Shared support between wasm-bindgen and wasm-bindgen cli")
    (description "This package provides shared support between
@code{wasm-bindgen} and @code{wasm-bindgen} cli, an internal dependency.")
    (license (list license:asl2.0
                   license:expat))))

(define-public rust-wasm-bindgen-backend-0.2.100
  (package
    (name "rust-wasm-bindgen-backend")
    (version "0.2.100")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasm-bindgen-backend" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1ihbf1hq3y81c4md9lyh6lcwbx6a5j0fw4fygd423g62lm8hc2ig"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs
       (("rust-bumpalo" ,rust-bumpalo-3)
        ("rust-log" ,rust-log-0.4)
        ("rust-proc-macro2" ,rust-proc-macro2-1)
        ("rust-quote" ,rust-quote-1)
        ("rust-syn" ,rust-syn-2)
        ("rust-wasm-bindgen-shared" ,rust-wasm-bindgen-shared-0.2.100))))
    (home-page "https://rustwasm.github.io/wasm-bindgen/")
    (synopsis "Backend code generation of the wasm-bindgen tool")
    (description
     "Backend code generation of the wasm-bindgen tool.")
    (license (list license:expat license:asl2.0))))

(define-public rust-wasm-bindgen-macro-support-0.2.100
  (package
    (name "rust-wasm-bindgen-macro-support")
    (version "0.2.100")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasm-bindgen-macro-support" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1plm8dh20jg2id0320pbmrlsv6cazfv6b6907z19ys4z1jj7xs4a"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs
       (("rust-proc-macro2" ,rust-proc-macro2-1)
        ("rust-quote" ,rust-quote-1)
        ("rust-syn" ,rust-syn-2)
        ("rust-wasm-bindgen-backend" ,rust-wasm-bindgen-backend-0.2.100)
        ("rust-wasm-bindgen-shared" ,rust-wasm-bindgen-shared-0.2))))
    (home-page "https://rustwasm.github.io/wasm-bindgen/")
    (synopsis "The @code{#[wasm_bindgen]} macro")
    (description
     "The part of the implementation of the @code{#[wasm_bindgen]}
attribute that is not in the shared backend crate.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-wasm-bindgen-macro-0.2.100
  (package
    (name "rust-wasm-bindgen-macro")
    (version "0.2.100")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasm-bindgen-macro" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "01xls2dvzh38yj17jgrbiib1d3nyad7k2yw9s0mpklwys333zrkz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:tests? #f      ; use of undeclared crate or module `web_sys`
       #:cargo-inputs
       (("rust-quote" ,rust-quote-1)
        ("rust-wasm-bindgen-macro-support" ,rust-wasm-bindgen-macro-support-0.2.100))
       #:cargo-development-inputs
       (("rust-trybuild" ,rust-trybuild-1))))
    (home-page "https://rustwasm.github.io/wasm-bindgen/")
    (synopsis "Definition of the @code{#[wasm_bindgen]} attribute")
    (description
     "Definition of the @code{#[wasm_bindgen]} attribute, an internal
dependency.")
    (license (list license:expat license:asl2.0))))

(define-public rust-wasm-bindgen-0.2.100
  (package
    (name "rust-wasm-bindgen")
    (version "0.2.100")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasm-bindgen" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1x8ymcm6yi3i1rwj78myl1agqv2m86i648myy3lc97s9swlqkp0y"))
       (modules '((guix build utils)))
       (snippet
        '(begin (substitute* "Cargo.toml"
                  (("\"=([[:digit:]]+(\\.[[:digit:]]+)*)" _ version)
                   (string-append "\"^" version)))))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs
       (("rust-cfg-if" ,rust-cfg-if-1)
        ("rust-once-cell" ,rust-once-cell-1)
        ("rust-serde" ,rust-serde-1)
        ("rust-serde-json" ,rust-serde-json-1)
        ("rust-wasm-bindgen-macro" ,rust-wasm-bindgen-macro-0.2.100))
       #:cargo-development-inputs
       (("rust-paste" ,rust-paste-1)
        ("rust-serde-derive" ,rust-serde-derive-1))))
    (home-page "https://rustwasm.github.io/")
    (synopsis "Easy support for interacting between JS and Rust")
    (description
     "Easy support for interacting between JS and Rust.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-js-sys-0.3.77
  (package
    (name "rust-js-sys")
    (version "0.3.77")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "js-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "13x2qcky5l22z4xgivi59xhjjx4kxir1zg7gcj0f1ijzd4yg7yhw"))
       (modules '((guix build utils)))
       (snippet
        '(begin (substitute* "Cargo.toml"
                  (("\"=([[:digit:]]+(\\.[[:digit:]]+)*)" _ version)
                   (string-append "\"^" version)))))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs
       (("rust-once-cell" ,rust-once-cell-1)
        ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2.100))))
    (home-page "https://rustwasm.github.io/wasm-bindgen/")
    (synopsis "Bindings for all JS global objects and functions in WASM")
    (description
     "Bindings for all JS global objects and functions in all JS environments
like Node.js and browsers, built on @code{#[wasm_bindgen]} using the
wasm-bindgen crate.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-wit-bindgen-rt-0.33
  (package
    (name "rust-wit-bindgen-rt")
    (version "0.33.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wit-bindgen-rt" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0g4lwfp9x6a2i1hgjn8k14nr4fsnpd5izxhc75zpi2s5cvcg6s1j"))
       (snippet
        #~(begin (delete-file "src/libwit_bindgen_cabi_realloc.a")))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-bitflags" ,rust-bitflags-2))))
    (home-page "https://github.com/bytecodealliance/wit-bindgen")
    (synopsis "Runtime support for the `wit-bindgen` crate")
    (description
     "This package provides runtime support for the `wit-bindgen` crate.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-wasi-0.13
  (package
    (name "rust-wasi")
    (version "0.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasi" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1lnapbvdcvi3kc749wzqvwrpd483win2kicn1faa4dja38p6v096"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs
       (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
        ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
        ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
        ("rust-wit-bindgen-rt" ,rust-wit-bindgen-rt-0.33))))
    (home-page "https://github.com/bytecodealliance/wasi")
    (synopsis "Experimental WASI API bindings for Rust")
    (description
     "This package provides experimental WASI API bindings for Rust.")
    (license (list license:asl2.0
                   license:expat))))

(define-public rust-web-sys-0.3.77
  (package
    (name "rust-web-sys")
    (version "0.3.77")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "web-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1lnmc1ffbq34qw91nndklqqm75rasaffj2g4f8h1yvqqz4pdvdik"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs
       (("rust-js-sys" ,rust-js-sys-0.3.77)
        ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2.100))
       #:cargo-development-inputs (("rust-futures" ,rust-futures-0.3))))
    (home-page "https://rustwasm.github.io/wasm-bindgen/web-sys/index.html")
    (synopsis
     "Bindings for all Web APIs, a procedurally generated crate from WebIDL")
    (description
     "This package provides bindings for all Web APIs, a procedurally generated
crate from WebIDL.")
    (license (list license:expat license:asl2.0))))

(define-public rust-getrandom-0.3
  (package
    (name "rust-getrandom")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "getrandom" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1y154yzby383p63ndw6zpfm0fz3vf6c0zdwc7df6vkl150wrr923"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs
       (("rust-cfg-if" ,rust-cfg-if-1)
        ("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
        ("rust-js-sys" ,rust-js-sys-0.3.77)
        ("rust-libc" ,rust-libc-0.2)
        ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
        ("rust-wasi" ,rust-wasi-0.13)
        ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
        ("rust-web-sys", rust-web-sys-0.3.77)) ; Indirect dependency.
       #:cargo-development-inputs
       (("rust-wasm-bindgen-test" ,rust-wasm-bindgen-test-0.3))))
    (home-page "https://github.com/rust-random/getrandom")
    (synopsis "Retrieve random data from system source")
    (description
     "This package provides a small cross-platform library for
retrieving random data from system source.")
    (license (list license:expat license:asl2.0))))

(define-public rust-rand-core-0.9
  (package
    (name "rust-rand-core")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "rand_core" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1zqmgsv276iy1jfxnndwpqjrgva39zck2f8i4ldpwbwn0ac3r3xh"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs
       (("rust-getrandom" ,rust-getrandom-0.3)
        ("rust-serde" ,rust-serde-1))))
    (home-page "https://rust-random.github.io/book")
    (synopsis "Core random number generator traits and tools")
    (description
     "This package provides core random number generator traits and
tools for implementation.")
    (license (list license:expat license:asl2.0))))

(define-public rust-rand-chacha-0.9
  (package
    (name "rust-rand-chacha")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "rand_chacha" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1jr5ygix7r60pz0s1cv3ms1f6pd1i9pcdmnxzzhjc3zn3mgjn0nk"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs
       (("rust-ppv-lite86" ,rust-ppv-lite86-0.2)
        ("rust-rand-core" ,rust-rand-core-0.9)
        ("rust-serde" ,rust-serde-1))
       #:cargo-development-inputs
       (("rust-serde-json" ,rust-serde-json-1))))
    (home-page "https://crates.io/crates/rand_chacha")
    (synopsis "ChaCha random number generator")
    (description
     "This package provides the ChaCha random number generator.")
    (license (list license:expat license:asl2.0))))

(define-public rust-rand-pcg-0.9
  (package
    (name "rust-rand-pcg")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "rand_pcg" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32
         "1xr04g5zrzqi9n7vyzjznnyrmy55i8k34ripsb2gmdxazzvw72ml"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs
       (("rust-rand-core" ,rust-rand-core-0.9)
        ("rust-serde" ,rust-serde-1))
       #:cargo-development-inputs
       (("rust-bincode" ,rust-bincode-1))))
    (home-page "https://crates.io/crates/rand_pcg")
    (synopsis
     "Selected PCG random number generators")
    (description
     "This package implements a selection of PCG random number generators.")
    (license (list license:asl2.0
                   license:expat))))

(define-public rust-rand-0.9
  (package
    (name "rust-rand")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "rand" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "156dyvsfa6fjnv6nx5vzczay1scy5183dvjchd7bvs47xd5bjy9p"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs
       (("rust-libc" ,rust-libc-0.2)
        ("rust-log" ,rust-log-0.4)
        ("rust-packed-simd-2" ,rust-packed-simd-2-0.3)
        ("rust-rand-chacha" ,rust-rand-chacha-0.9)
        ("rust-rand-core" ,rust-rand-core-0.6)
        ("rust-serde" ,rust-serde-1))
       #:cargo-development-inputs
       (("rust-bincode" ,rust-bincode-1)
        ("rust-rand-pcg" ,rust-rand-pcg-0.9))))
    (home-page "https://crates.io/crates/rand")
    (synopsis "Random number generators and other randomness functionality")
    (description
     "Rand provides utilities to generate random numbers, to convert them to
useful types and distributions, and some randomness-related algorithms.")
    (license (list license:expat license:asl2.0))))

(define-public rust-indicatif-0.17.11
  (package
    (name "rust-indicatif")
    (version "0.17.11")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "indicatif" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0db2b2r79r9x8x4lysq1ci9xm13c0xg0sqn3z960yh2bk2430fqq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-test-flags
       '("--"
         "--skip=style::tests::wide_element_style")
       #:cargo-inputs (("rust-console" ,rust-console-0.15)
                       ("rust-futures-core" ,rust-futures-core-0.3)
                       ("rust-number-prefix" ,rust-number-prefix-0.4)
                       ("rust-portable-atomic" ,rust-portable-atomic-1)
                       ("rust-rayon" ,rust-rayon-1)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-unicode-segmentation" ,rust-unicode-segmentation-1)
                       ("rust-unicode-width" ,rust-unicode-width-0.2)
                       ("rust-vt100" ,rust-vt100-0.15)
                       ("rust-web-time" ,rust-web-time-1))
       #:cargo-development-inputs
       (("rust-clap" ,rust-clap-4)
        ("rust-futures" ,rust-futures-0.3)
        ("rust-once-cell" ,rust-once-cell-1)
        ("rust-pretty-assertions" ,rust-pretty-assertions-1)
        ("rust-rand" ,rust-rand-0.9)
        ("rust-tokio" ,rust-tokio-1))))
    (home-page "https://github.com/console-rs/indicatif")
    (synopsis "Progress bar and cli reporting library for Rust")
    (description
     "This package provides a progress bar and cli reporting library for
Rust.")
    (license license:expat)))

(define-public rust-quick-xml-0.23
  (package
    (inherit rust-quick-xml-0.27)
    (name "rust-quick-xml")
    (version "0.23.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "quick-xml" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32
         "1slry2g2wrj38fnzj9ybzq9wjyknrfg25x5vzfpzn5b8kj2zrfhi"))))
    (arguments
     `(#:cargo-test-flags
       '("--"
         "--skip=sample_1_full"
         "--skip=sample_2_full")
       #:cargo-inputs
       (("rust-encoding-rs" ,rust-encoding-rs-0.8)
        ("rust-memchr" ,rust-memchr-2)
        ("rust-serde" ,rust-serde-1))
       #:cargo-development-inputs
       (("rust-criterion" ,rust-criterion-0.3)
        ("rust-pretty-assertions" ,rust-pretty-assertions-1)
        ("rust-regex" ,rust-regex-1)
        ("rust-serde" ,rust-serde-1)
        ("rust-serde-value" ,rust-serde-value-0.7))))))

;; From the rust-team branch.
(define-public rust-libssh2-sys-0.3
  (package
    (name "rust-libssh2-sys")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "libssh2-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32
         "1f8i31h3666rl6sq7v64ajdq03hmylkh6c1vaf9828aaml2ly3i2"))
       (modules '((guix build utils)))
       (snippet
        '(begin (delete-file-recursively "libssh2")))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs
       (("rust-cc" ,rust-cc-1)
        ("rust-libc" ,rust-libc-0.2)
        ("rust-libz-sys" ,rust-libz-sys-1)
        ("rust-openssl-sys" ,rust-openssl-sys-0.9)
        ("rust-pkg-config" ,rust-pkg-config-0.3)
        ("rust-vcpkg" ,rust-vcpkg-0.2))))
    (native-inputs
     (list pkg-config))
    (inputs
     (list libssh2 openssl zlib))
    (home-page "https://github.com/alexcrichton/ssh2-rs")
    (synopsis "Native bindings to the libssh2 library")
    (description
     "This package provides native rust bindings to the @code{libssh2} library.")
    (license (list license:expat license:asl2.0))))

;; From the rust-team branch.
(define-public rust-ssh2-0.9
  (package
    (name "rust-ssh2")
    (version "0.9.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "ssh2" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1j38p804b8sbgnfw1x8j2mkvh6yva7li36b2la8lw3ca7cxx311g"))))
    (build-system cargo-build-system)
    (arguments
     `(#:tests? #f      ;TODO: figure out why tests are failing
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-libssh2-sys" ,rust-libssh2-sys-0.3)
                       ("rust-parking-lot" ,rust-parking-lot-0.12))))
    (native-inputs (list pkg-config))
    (inputs (list zlib libgit2-1.8 libssh2 openssl))
    (home-page "https://github.com/alexcrichton/ssh2-rs")
    (synopsis
     "Bindings for libssh2 for interacting with SSH servers")
    (description
     "This package provides bindings for libssh2 for interacting with SSH
servers and executing remote commands, forwarding local ports, etc.")
    (license (list license:expat license:asl2.0))))

(define-public rust-portable-pty-0.7
  (package
    (inherit rust-portable-pty-0.8)
    (name "rust-portable-pty")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "portable-pty" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32
         "1da6xiz2prv716734grd0y287kibfy1h2hswn6j7wsqa0pn1fkaf"))))
    (arguments
     `(#:cargo-inputs
       (("rust-anyhow" ,rust-anyhow-1)
        ("rust-bitflags" ,rust-bitflags-1)
        ("rust-filedescriptor" ,rust-filedescriptor-0.8)
        ("rust-lazy-static" ,rust-lazy-static-1)
        ("rust-libc" ,rust-libc-0.2)
        ("rust-log" ,rust-log-0.4)
        ("rust-serde" ,rust-serde-1)
        ("rust-serde-derive" ,rust-serde-derive-1)
        ("rust-serial" ,rust-serial-0.4)
        ("rust-shared-library" ,rust-shared-library-0.1)
        ("rust-shell-words" ,rust-shell-words-1)
        ("rust-ssh2" ,rust-ssh2-0.9)
        ("rust-winapi" ,rust-winapi-0.3))
       #:cargo-development-inputs
       (("rust-futures" ,rust-futures-0.3)
        ("rust-smol" ,rust-smol-1))))))

(define-public rust-term-transcript-0.2
  (package
    (name "rust-term-transcript")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "term-transcript" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32
         "11a2pprf5j7ypjfyki8hal4604qaf6gx3ggdzzj7ina1j062hxvd"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs
       (("rust-atty" ,rust-atty-0.2)
        ("rust-bytecount" ,rust-bytecount-0.6)
        ("rust-handlebars" ,rust-handlebars-4)
        ("rust-os-pipe" ,rust-os-pipe-1)
        ("rust-portable-pty" ,rust-portable-pty-0.7)
        ("rust-pretty-assertions" ,rust-pretty-assertions-1)
        ("rust-quick-xml" ,rust-quick-xml-0.23)
        ("rust-serde" ,rust-serde-1)
        ("rust-termcolor" ,rust-termcolor-1)
        ("rust-unicode-width" ,rust-unicode-width-0.1))
       #:cargo-development-inputs
       (("rust-anyhow" ,rust-anyhow-1)
        ("rust-assert-matches" ,rust-assert-matches-1)
        ("rust-doc-comment" ,rust-doc-comment-0.3)
        ("rust-version-sync" ,rust-version-sync-0.9))))
    (home-page "https://github.com/slowli/term-transcript")
    (synopsis "Snapshotting and snapshot testing for CLI / REPL applications")
    (description
     "This package provides snapshotting and snapshot testing for
CLI / REPL applications.")
    (license (list license:expat license:asl2.0))))

(define-public rust-snapbox-0.6
  (package
    (name "rust-snapbox")
    (version "0.6.21")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "snapbox" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32
         "0ss3nd9ky0fkq7idj7jzr22kvkhxz3ylrq9fmiq5sdg3h52zrp4n"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs
       (("rust-anstream" ,rust-anstream-0.6)
        ("rust-anstyle" ,rust-anstyle-1)
        ("rust-anstyle-svg" ,rust-anstyle-svg-0.1)
        ("rust-backtrace" ,rust-backtrace-0.3)
        ("rust-content-inspector" ,rust-content-inspector-0.2)
        ("rust-document-features" ,rust-document-features-0.2)
        ("rust-dunce" ,rust-dunce-1)
        ("rust-escargot" ,rust-escargot-0.5)
        ("rust-filetime" ,rust-filetime-0.2)
        ("rust-libc" ,rust-libc-0.2)
        ("rust-normalize-line-endings" ,rust-normalize-line-endings-0.3)
        ("rust-os-pipe" ,rust-os-pipe-1)
        ("rust-regex" ,rust-regex-1)
        ("rust-serde" ,rust-serde-1)
        ("rust-serde-json" ,rust-serde-json-1)
        ("rust-similar" ,rust-similar-2)
        ("rust-snapbox-macros" ,rust-snapbox-macros-0.3)
        ("rust-tempfile" ,rust-tempfile-3)
        ("rust-wait-timeout" ,rust-wait-timeout-0.2)
        ("rust-walkdir" ,rust-walkdir-2)
        ("rust-windows-sys" ,rust-windows-sys-0.59))
       #:cargo-development-inputs (("rust-automod" ,rust-automod-1))))
    (home-page "https://github.com/assert-rs/trycmd/tree/main/crates/snapbox")
    (synopsis "Snapshot testing toolbox")
    (description "This package provides a snapshot testing toolbox.")
    (license (list license:expat license:asl2.0))))

(define-public rust-winnow-0.7
  (package
    (name "rust-winnow")
    (version "0.7.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "winnow" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32
         "0dmbsz6zfddcgsqzzqxw1h8f7zy19x407g7zl3hyp6vf2m2bb5qf"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs
       (("rust-anstream" ,rust-anstream-0.3)
        ("rust-anstyle" ,rust-anstyle-1)
        ("rust-is-terminal" ,rust-is-terminal-0.4)
        ("rust-memchr" ,rust-memchr-2)
        ("rust-terminal-size" ,rust-terminal-size-0.4))
       #:cargo-development-inputs
       (("rust-annotate-snippets" ,rust-annotate-snippets-0.11)
        ("rust-anyhow" ,rust-anyhow-1)
        ("rust-automod" ,rust-automod-1)
        ("rust-circular" ,rust-circular-0.3)
        ("rust-criterion" ,rust-criterion-0.5)
        ("rust-lexopt" ,rust-lexopt-0.3)
        ("rust-proptest" ,rust-proptest-1)
        ("rust-rustc-hash" ,rust-rustc-hash-1)
        ("rust-snapbox" ,rust-snapbox-0.6)
        ("rust-term-transcript" ,rust-term-transcript-0.2))))
    (home-page "https://github.com/winnow-rs/winnow")
    (synopsis "byte-oriented, zero-copy, parser combinators library")
    (description
     "This package provides a byte-oriented, zero-copy, parser combinators
library.")
    (license license:expat)))

(define-public rust-askama-parser-0.13
  (package
    (name "rust-askama-parser")
    (version "0.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "askama_parser" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32
         "0kqd9pg96dd6w9pm4q7zdhmchhkdrwsljygz56qpp1acabk5qcfg"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-memchr" ,rust-memchr-2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-derive" ,rust-serde-derive-1)
                       ("rust-winnow" ,rust-winnow-0.7))
       #:cargo-development-inputs (("rust-criterion" ,rust-criterion-0.5))))
    (home-page "https://github.com/askama-rs/askama")
    (synopsis "Parser for Askama templates")
    (description "This package provides a parser for @code{rust-askama}
templates.")
    (license (list license:expat license:asl2.0))))

(define-public rust-askama-derive-0.13
  (package
    (name "rust-askama-derive")
    (version "0.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "askama_derive" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32
         "19i8iwahw0jsdwdx88g4bawlljf7y18v7xrmh5r2rlqzh838jfal"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs
       (("rust-askama-parser" ,rust-askama-parser-0.13)
        ("rust-basic-toml" ,rust-basic-toml-0.1)
        ("rust-memchr" ,rust-memchr-2)
        ("rust-proc-macro2" ,rust-proc-macro2-1)
        ("rust-pulldown-cmark" ,rust-pulldown-cmark-0.13)
        ("rust-quote" ,rust-quote-1)
        ("rust-rustc-hash" ,rust-rustc-hash-2)
        ("rust-serde" ,rust-serde-1)
        ("rust-serde-derive" ,rust-serde-derive-1)
        ("rust-syn" ,rust-syn-2))
       #:cargo-development-inputs
       (("rust-console" ,rust-console-0.15)
        ("rust-prettyplease" ,rust-prettyplease-0.2)
        ("rust-similar" ,rust-similar-2)
        ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/askama-rs/askama")
    (synopsis "Procedural macro package for @code{rust-askama}.")
    (description "Procedural macros for @code{rust-askama}.")
    (license (list license:expat license:asl2.0))))

(define-public rust-askama-0.13
  (package
    (name "rust-askama")
    (version "0.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "askama" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0hr5272633jcx10kk76pznxl4c93d4klaba44vr0xq03namlckls"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs
       (("rust-askama-derive" ,rust-askama-derive-0.13)
        ("rust-itoa" ,rust-itoa-1)
        ("rust-percent-encoding" ,rust-percent-encoding-2)
        ("rust-serde" ,rust-serde-1)
        ("rust-serde-json" ,rust-serde-json-1))
       #:cargo-development-inputs
       (("rust-assert-matches" ,rust-assert-matches-1)
        ("rust-criterion" ,rust-criterion-0.5))))
    (home-page "https://askama.readthedocs.io/")
    (synopsis "Type-safe, compiled Jinja-like templates for Rust")
    (description
     "This package provides type-safe, compiled Jinja-like templates for Rust.")
    (license (list license:expat license:asl2.0))))
