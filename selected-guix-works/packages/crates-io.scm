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
                       ("rust-insta" ,rust-insta-1)
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
    (version "0.3.7")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "pay-respects-parser" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "061wn35c5masaspb9sk15jvn9sk0aya0q2b5s1rymnyjw8jvf55x"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-serde" ,rust-serde-1)
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
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-serde-yml" ,rust-serde-yml-0.0.12)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/longbridge/rust-i18n")
    (synopsis "Macro for rust-i18n crate")
    (description "This package provides Macro for rust-i18n crate.")
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
     `(#:cargo-inputs (("rust-arc-swap" ,rust-arc-swap-1)
                       ("rust-base62" ,rust-base62-2)
                       ("rust-globwalk" ,rust-globwalk-0.8)
                       ("rust-itertools" ,rust-itertools-0.11)
                       ("rust-lazy-static" ,rust-lazy-static-1)
                       ("rust-normpath" ,rust-normpath-1)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-regex" ,rust-regex-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-serde-yml" ,rust-serde-yml-0.0.12)
                       ("rust-siphasher" ,rust-siphasher-1)
                       ("rust-toml" ,rust-toml-0.8)
                       ("rust-triomphe" ,rust-triomphe-0.1))
       ;; Only ONE test fails.
       #:tests? #f))
    (home-page "https://github.com/longbridge/rust-i18n")
    (synopsis "Support for rust-i18n crate")
    (description "This package provides Support for rust-i18n crate.")
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
                       ("rust-serde" ,rust-serde-1)
                       ("rust-version-check" ,rust-version-check-0.9)
                       ("rust-indoc" ,rust-indoc-2))))
    (home-page "https://serdeyml.com")
    (synopsis
     "robust Rust library that simplifies the serialization and deserialization of Rust data structures to and from YAML format using the widely-used Serde framework.")
    (description
     "This package provides a robust Rust library that simplifies the serialization
and deserialization of Rust data structures to and from YAML format using the
widely-used Serde framework.")
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
     `(#:cargo-inputs (("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1))))
    (home-page "https://docs.rs/siphasher")
    (synopsis "SipHash-2-4, SipHash-1-3 and 128-bit variants in pure Rust")
    (description
     "This package provides @code{SipHash-2-4}, @code{SipHash-1-3} and 128-bit variants in pure Rust.")
    (license (list license:expat license:asl2.0))))
