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

;; Module featuring packages that usually constitute Rust library crates.
;; Basically, it's software that you shouldn't really
;; install in your system.

;;; Code:

(define-module (selected-guix-works packages crates-io)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages crates-apple)
  #:use-module (gnu packages crates-check)
  #:use-module (gnu packages crates-compression)
  #:use-module (gnu packages crates-crypto)
  #:use-module (gnu packages crates-database)
  #:use-module (gnu packages crates-graphics)
  #:use-module (gnu packages crates-io)
  #:use-module (gnu packages crates-tls)
  #:use-module (gnu packages crates-web)
  #:use-module (gnu packages crates-windows)
  #:use-module (gnu packages libusb)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages ssh)
  #:use-module (gnu packages tls)
  #:use-module (guix gexp)
  #:use-module (guix build-system cargo))

;; Requires some unknown native input.
(define-public rust-afl-0.15
  (package
    (name "rust-afl")
    (version "0.15.20")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "afl" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1af33da7hdj3zq326lypph3x5ghm286spk67mpzpsjsidb5rglg3"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                       ("rust-home" ,rust-home-0.5)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-rustc-version" ,rust-rustc-version-0.4)
                       ("rust-xdg" ,rust-xdg-3))))
    (home-page "https://github.com/rust-fuzz/afl.rs")
    (synopsis "Fuzzing Rust code with american-fuzzy-lop")
    (description
     "This package provides Fuzzing Rust code with american-fuzzy-lop.")
    (license license:asl2.0)))

(define-public rust-aligned-0.3
  (package
    (name "rust-aligned")
    (version "0.3.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "aligned" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1fqn7ww3x5shf5lnbzqz76xj3g1ibmjv4fz9wbjgah7a79a5ly1s"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-as-slice" ,rust-as-slice-0.1))))
    (home-page "https://github.com/rust-embedded-community/aligned")
    (synopsis "newtype with alignment of at least `A` bytes")
    (description
     "This package provides a newtype with alignment of at least `A` bytes.")
    (license (list license:expat license:asl2.0))))

(define-public rust-aligned-0.2
  (package
    (name "rust-aligned")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "aligned" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "19f48jmk847n5ab42q0j2hwykl7ihgdvi0n0r41ira71iawak7fk"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/rust-embedded-community/aligned")
    (synopsis "newtype with alignment of at least `A` bytes")
    (description
     "This package provides a newtype with alignment of at least `A` bytes.")
    (license (list license:expat license:asl2.0))))

(define-public rust-ambient-authority-0.0.2
  (package
    (name "rust-ambient-authority")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "ambient-authority" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0fxsfyhy64jx7zrkb85h1vhr5nfqncja3pwpikid471d8w6yxm79"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/sunfishcode/ambient-authority")
    (synopsis "Ambient Authority")
    (description "This package provides Ambient Authority.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-ambient-authority-0.0.2
  (package
    (name "rust-ambient-authority")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "ambient-authority" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0fxsfyhy64jx7zrkb85h1vhr5nfqncja3pwpikid471d8w6yxm79"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/sunfishcode/ambient-authority")
    (synopsis "Ambient Authority")
    (description "This package provides Ambient Authority.")
    (license (list license:asl2.0 license:asl2.0 license:expat))))

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

(define-public rust-arf-strings-0.7
  (package
    (name "rust-arf-strings")
    (version "0.7.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "arf-strings" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1fdqcyss12hyk34wd6v2gsfrwxdclk7ddmyk9f2hb47345mv6f08"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-rustix" ,rust-rustix-1))))
    (home-page "https://github.com/bytecodealliance/arf-strings")
    (synopsis "Encoding and decoding for ARF strings")
    (description
     "This package provides Encoding and decoding for ARF strings.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-arf-strings-0.7
  (package
    (name "rust-arf-strings")
    (version "0.7.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "arf-strings" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1fdqcyss12hyk34wd6v2gsfrwxdclk7ddmyk9f2hb47345mv6f08"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-rustix" ,rust-rustix-1))))
    (home-page "https://github.com/bytecodealliance/arf-strings")
    (synopsis "Encoding and decoding for ARF strings")
    (description
     "This package provides Encoding and decoding for ARF strings.")
    (license (list license:asl2.0 license:asl2.0 license:expat))))

(define-public rust-ariadne-0.2
  (package
    (name "rust-ariadne")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "ariadne" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "00jprfhqydhdnwibjzbcv7g0aj5zbyy0fislhz88hx9hhynx0zrn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-concolor" ,rust-concolor-0.0.11)
                       ("rust-unicode-width" ,rust-unicode-width-0.1)
                       ("rust-yansi" ,rust-yansi-0.5))))
    (home-page "https://github.com/zesterer/ariadne")
    (synopsis "fancy diagnostics & reporting crate")
    (description
     "This package provides a fancy diagnostics & reporting crate.")
    (license license:expat)))

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
     `(#:cargo-inputs (("rust-askama-derive" ,rust-askama-derive-0.13)
                       ("rust-itoa" ,rust-itoa-1)
                       ("rust-percent-encoding" ,rust-percent-encoding-2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1.0.141))
       #:cargo-development-inputs (("rust-assert-matches" ,rust-assert-matches-1)
                                   ("rust-criterion" ,rust-criterion-0.5))))
    (home-page "https://askama.readthedocs.io/")
    (synopsis "Type-safe, compiled Jinja-like templates for Rust")
    (description
     "This package provides type-safe, compiled Jinja-like templates for Rust.")
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
        (base32 "19i8iwahw0jsdwdx88g4bawlljf7y18v7xrmh5r2rlqzh838jfal"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-askama-parser" ,rust-askama-parser-0.13)
                       ("rust-basic-toml" ,rust-basic-toml-0.1)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-pulldown-cmark" ,rust-pulldown-cmark-0.13)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-rustc-hash" ,rust-rustc-hash-2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-derive" ,rust-serde-derive-1)
                       ("rust-syn" ,rust-syn-2))
       #:cargo-development-inputs (("rust-console" ,rust-console-0.15)
                                   ("rust-prettyplease" ,rust-prettyplease-0.2)
                                   ("rust-similar" ,rust-similar-2)
                                   ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/askama-rs/askama")
    (synopsis "Procedural macro package for @code{rust-askama}.")
    (description "Procedural macros for @code{rust-askama}.")
    (license (list license:expat license:asl2.0))))

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
        (base32 "0kqd9pg96dd6w9pm4q7zdhmchhkdrwsljygz56qpp1acabk5qcfg"))))
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

(define-public rust-async-std-1
  (package
    (name "rust-async-std")
    (version "1.13.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "async-std" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "094azlylq90vki8pv8k6lyhdbw1kcf7m344mfn2hyblcq30r80kk"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-async-attributes" ,rust-async-attributes-1)
                       ("rust-async-channel" ,rust-async-channel-1)
                       ("rust-async-global-executor" ,rust-async-global-executor-2)
                       ("rust-async-io" ,rust-async-io-2)
                       ("rust-async-lock" ,rust-async-lock-3)
                       ("rust-async-process" ,rust-async-process-2)
                       ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8)
                       ("rust-futures-channel" ,rust-futures-channel-0.3)
                       ("rust-futures-core" ,rust-futures-core-0.3)
                       ("rust-futures-io" ,rust-futures-io-0.3)
                       ("rust-futures-lite" ,rust-futures-lite-2)
                       ("rust-gloo-timers" ,rust-gloo-timers-0.3)
                       ("rust-kv-log-macro" ,rust-kv-log-macro-1)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                       ("rust-pin-utils" ,rust-pin-utils-0.1)
                       ("rust-slab" ,rust-slab-0.4)
                       ("rust-surf" ,rust-surf-2)
                       ("rust-wasm-bindgen-futures" ,rust-wasm-bindgen-futures-0.4))))
    (home-page "https://async.rs")
    (synopsis
     "Deprecated in favor of `smol` - Async version of the Rust standard library")
    (description
     "This package provides Deprecated in favor of `smol` - Async version of the Rust standard library.")
    (license (list license:asl2.0 license:expat))))

;; Non-deterministic.  Builds differently based on chip.
(define-public rust-avr-device-0.5
  (package
    (name "rust-avr-device")
    (version "0.5.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "avr-device" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "156cd7xygiypvh8v19wlh17nq71pa7ismdfcj2vihgckbvd0jssl"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-avr-device-macros" ,rust-avr-device-macros-0.5)
                       ("rust-bare-metal" ,rust-bare-metal-1)
                       ("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-critical-section" ,rust-critical-section-1)
                       ("rust-ufmt" ,rust-ufmt-0.2)
                       ("rust-vcell" ,rust-vcell-0.1))))
    (home-page "https://github.com/Rahix/avr-device")
    (synopsis "Register access crate for AVR microcontrollers")
    (description
     "This package provides Register access crate for AVR microcontrollers.")
    (license (list license:expat license:asl2.0))))

(define-public rust-avr-device-macros-0.5
  (package
    (name "rust-avr-device-macros")
    (version "0.5.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "avr-device-macros" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0vsvwq0lsnnh8j8m9jpcvbw5ixllxnysq95qm7gn180yvi0qa43b"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/Rahix/avr-device")
    (synopsis "Attribute macros for re-export in `avr-device`")
    (description
     "This package provides Attribute macros for re-export in `avr-device`.")
    (license (list license:expat license:asl2.0))))

(define-public rust-backon-1
  (package
    (name "rust-backon")
    (version "1.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "backon" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1rwr3ycl69vycyaxrhwzfjcwyqf7pawfq9zi88n4l9ks6pssybih"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-embassy-time" ,rust-embassy-time-0.4)
                       ("rust-fastrand" ,rust-fastrand-2)
                       ("rust-futures-timer" ,rust-futures-timer-3)
                       ("rust-gloo-timers" ,rust-gloo-timers-0.3)
                       ("rust-tokio" ,rust-tokio-1))))
    (home-page "https://github.com/Xuanwo/backon")
    (synopsis "Make retry like a built-in feature provided by Rust")
    (description
     "This package provides Make retry like a built-in feature provided by Rust.")
    (license license:asl2.0)))

(define-public rust-bare-metal-1
  (package
    (name "rust-bare-metal")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "bare-metal" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "00wn61b219nkfcwggim5pj7mcyn1gkq8zqaq4gjlb0rri9d8zzpq"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/rust-embedded/bare-metal")
    (synopsis "Abstractions common to bare metal systems")
    (description
     "This package provides Abstractions common to bare metal systems.")
    (license (list license:expat license:asl2.0))))

(define-public rust-bare-metal-0.2
  (package
    (name "rust-bare-metal")
    (version "0.2.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "bare-metal" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1cy5pbb92fznnri72y6drfpjxj4qdmd62f0rrlgy70dxlppn9ssx"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-rustc-version" ,rust-rustc-version-0.2))))
    (home-page "https://github.com/rust-embedded/bare-metal")
    (synopsis "Abstractions common to bare metal systems")
    (description
     "This package provides Abstractions common to bare metal systems.")
    (license (list license:expat license:asl2.0))))

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
    (description
     "@code{rust-base} is a zero-dependency library for
working with base62 encoding with Rust.  base62 is typically used for
URL shorteners.  It can optionally use io traits from the standard
library.")
    (license license:expat)))

(define-public rust-bb8-0.9
  (package
    (name "rust-bb8")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "bb8" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1ralsazlyyj7gsmqc73p6kpqz76g4al6np2p8693sx123a78nb91"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-parking-lot" ,rust-parking-lot-0.12)
                       ("rust-tokio" ,rust-tokio-1))))
    (home-page "https://github.com/djc/bb8")
    (synopsis "Full-featured async (tokio-based) connection pool (like r2d2)")
    (description
     "This package provides Full-featured async (tokio-based) connection pool (like r2d2).")
    (license license:expat)))

(define-public rust-bitfield-0.13
  (package
    (name "rust-bitfield")
    (version "0.13.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "bitfield" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "06g7jb5r2b856vnhx76081fg90jvmy61kjqcfjysgmd5hclvvbs6"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/dzamlo/rust-bitfield")
    (synopsis "This crate provides macros to generate bitfield-like struct")
    (description
     "This crate provides macros to generate bitfield-like struct.")
    (license (list license:expat license:asl2.0))))

(define-public rust-bytecheck-0.8
  (package
    (name "rust-bytecheck")
    (version "0.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "bytecheck" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "18yisf4zvvhhpv987ic5js6arwj69h44c9rpa0szxf8g6yrhysah"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-bytecheck-derive" ,rust-bytecheck-derive-0.8)
                       ("rust-ptr-meta" ,rust-ptr-meta-0.3)
                       ("rust-rancor" ,rust-rancor-0.1)
                       ("rust-simdutf8" ,rust-simdutf8-0.1)
                       ("rust-uuid" ,rust-uuid-1))))
    (home-page "https://github.com/rkyv/bytecheck")
    (synopsis "Memory validation framework for Rust")
    (description "This package provides Memory validation framework for Rust.")
    (license license:expat)))

(define-public rust-bytecheck-derive-0.8
  (package
    (name "rust-bytecheck-derive")
    (version "0.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "bytecheck_derive" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0wfbjc1vqkmszx99y6hghlcnk8xgxlhyfsgc5mf3b05i1ip89dzg"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/rkyv/bytecheck")
    (synopsis "Derive macro for bytecheck")
    (description "This package provides Derive macro for bytecheck.")
    (license license:expat)))

(define-public rust-cached-0.55
  (package
    (name "rust-cached")
    (version "0.55.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cached" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "055widjccy8z92jn41iz86aq75jf89207nd9ripk30w7gwlrr0xh"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-ahash" ,rust-ahash-0.8)
                       ("rust-async-trait" ,rust-async-trait-0.1)
                       ("rust-cached-proc-macro" ,rust-cached-proc-macro-0.24)
                       ("rust-cached-proc-macro-types" ,rust-cached-proc-macro-types-0.1)
                       ("rust-directories" ,rust-directories-6)
                       ("rust-futures" ,rust-futures-0.3)
                       ("rust-hashbrown" ,rust-hashbrown-0.14)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-r2d2" ,rust-r2d2-0.8)
                       ("rust-redis" ,rust-redis-0.29)
                       ("rust-rmp-serde" ,rust-rmp-serde-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1.0.141)
                       ("rust-sled" ,rust-sled-0.34)
                       ("rust-thiserror" ,rust-thiserror-2)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-web-time" ,rust-web-time-1))
       #:cargo-development-inputs (("rust-async-std" ,rust-async-std-1)
                                   ("rust-copy-dir" ,rust-copy-dir-0.1)
                                   ("rust-googletest" ,rust-googletest-0.11)
                                   ("rust-serial-test" ,rust-serial-test-3)
                                   ("rust-smartstring" ,rust-smartstring-1)
                                   ("rust-tempfile" ,rust-tempfile-3))))
    (home-page "https://github.com/jaemk/cached")
    (synopsis
     "Generic cache implementations and simplified function memoization")
    (description
     "This package provides Generic cache implementations and simplified function memoization.")
    (license license:expat)))

(define-public rust-cached-proc-macro-0.24
  (package
    (name "rust-cached-proc-macro")
    (version "0.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cached_proc_macro" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "00y6ln647l6fcxlg563wncs1dqsbvjfbgqdkxdl1nwgh6kcr4fb7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-darling" ,rust-darling-0.20)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/jaemk/cached")
    (synopsis
     "Generic cache implementations and simplified function memoization")
    (description
     "This package provides Generic cache implementations and simplified function memoization.")
    (license license:expat)))

(define-public rust-cached-proc-macro-types-0.1
  (package
    (name "rust-cached-proc-macro-types")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cached_proc_macro_types" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1h3gw61v1inay4g3b8pirxlz18m81k63dw2q18zj9fnmidmkds5d"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/jaemk/cached")
    (synopsis
     "Generic cache implementations and simplified function memoization")
    (description
     "This package provides Generic cache implementations and simplified function memoization.")
    (license license:expat)))

(define-public rust-cap-async-std-3
  (package
    (name "rust-cap-async-std")
    (version "3.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cap-async-std" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "08dwkndq25ci70ksvj1qd7ng8985xa86h23x59n39mqq4ry7wcnp"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-arf-strings" ,rust-arf-strings-0.7)
                       ("rust-async-std" ,rust-async-std-1)
                       ("rust-camino" ,rust-camino-1)
                       ("rust-cap-primitives" ,rust-cap-primitives-3)
                       ("rust-io-extras" ,rust-io-extras-0.18)
                       ("rust-io-lifetimes" ,rust-io-lifetimes-2)
                       ("rust-rustix" ,rust-rustix-1))))
    (home-page "https://github.com/bytecodealliance/cap-std")
    (synopsis "Capability-based version of async-std")
    (description
     "This package provides Capability-based version of async-std.")
    (license (list license:asl2.0 license:asl2.0 license:expat))))

(define-public rust-cap-fs-ext-3
  (package
    (name "rust-cap-fs-ext")
    (version "3.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cap-fs-ext" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0g0pdhz3w09pdza8xamzrzicjpmwk73y7h8mdzxfhgqra62w2774"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-arf-strings" ,rust-arf-strings-0.7)
                       ("rust-async-std" ,rust-async-std-1)
                       ("rust-async-trait" ,rust-async-trait-0.1)
                       ("rust-camino" ,rust-camino-1)
                       ("rust-cap-async-std" ,rust-cap-async-std-3)
                       ("rust-cap-primitives" ,rust-cap-primitives-3)
                       ("rust-cap-std" ,rust-cap-std-3)
                       ("rust-io-lifetimes" ,rust-io-lifetimes-2)
                       ("rust-windows-sys" ,rust-windows-sys-0.59))))
    (home-page "https://github.com/bytecodealliance/cap-std")
    (synopsis "Extension traits for `Dir`, `File`, etc")
    (description
     "This package provides Extension traits for `Dir`, `File`, etc.")
    (license (list license:asl2.0 license:asl2.0 license:expat))))

(define-public rust-cap-net-ext-3
  (package
    (name "rust-cap-net-ext")
    (version "3.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cap-net-ext" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0b3h14c31ibg65a21001jfh6w8gcgj4aq8ivj5p9hv662qw870wz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cap-primitives" ,rust-cap-primitives-3)
                       ("rust-cap-std" ,rust-cap-std-3)
                       ("rust-rustix" ,rust-rustix-1)
                       ("rust-smallvec" ,rust-smallvec-1))))
    (home-page "https://github.com/bytecodealliance/cap-std")
    (synopsis "Extension traits for `TcpListener`, `Pool`, etc")
    (description
     "This package provides Extension traits for `@code{TcpListener`}, `Pool`, etc.")
    (license (list license:asl2.0 license:asl2.0 license:expat))))

(define-public rust-cap-primitives-3
  (package
    (name "rust-cap-primitives")
    (version "3.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cap-primitives" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0apni9ybd60z3d2zzbwv3c57zghd0464r7gm4syghfags573j7ha"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-ambient-authority" ,rust-ambient-authority-0.0.2)
                       ("rust-arbitrary" ,rust-arbitrary-1)
                       ("rust-fs-set-times" ,rust-fs-set-times-0.20)
                       ("rust-io-extras" ,rust-io-extras-0.18)
                       ("rust-io-lifetimes" ,rust-io-lifetimes-2)
                       ("rust-ipnet" ,rust-ipnet-2)
                       ("rust-maybe-owned" ,rust-maybe-owned-0.3)
                       ("rust-rustix" ,rust-rustix-1)
                       ("rust-rustix-linux-procfs" ,rust-rustix-linux-procfs-0.1)
                       ("rust-windows-sys" ,rust-windows-sys-0.59)
                       ("rust-winx" ,rust-winx-0.36))))
    (home-page "https://github.com/bytecodealliance/cap-std")
    (synopsis "Capability-based primitives")
    (description "This package provides Capability-based primitives.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-cap-primitives-3
  (package
    (name "rust-cap-primitives")
    (version "3.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cap-primitives" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0apni9ybd60z3d2zzbwv3c57zghd0464r7gm4syghfags573j7ha"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-ambient-authority" ,rust-ambient-authority-0.0.2)
                       ("rust-arbitrary" ,rust-arbitrary-1)
                       ("rust-fs-set-times" ,rust-fs-set-times-0.20)
                       ("rust-io-extras" ,rust-io-extras-0.18)
                       ("rust-io-lifetimes" ,rust-io-lifetimes-2)
                       ("rust-ipnet" ,rust-ipnet-2)
                       ("rust-maybe-owned" ,rust-maybe-owned-0.3)
                       ("rust-rustix" ,rust-rustix-1)
                       ("rust-rustix-linux-procfs" ,rust-rustix-linux-procfs-0.1)
                       ("rust-windows-sys" ,rust-windows-sys-0.59)
                       ("rust-winx" ,rust-winx-0.36))
       ;; Tests fail.
       #:tests? #f))
    (home-page "https://github.com/bytecodealliance/cap-std")
    (synopsis "Capability-based primitives")
    (description "This package provides Capability-based primitives.")
    (license (list license:asl2.0 license:asl2.0 license:expat))))

(define-public rust-cap-rand-3
  (package
    (name "rust-cap-rand")
    (version "3.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cap-rand" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0h0vjjmdwpf0139y1silf84frkps1mix1280y21qd8lqyz68kjqa"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-ambient-authority" ,rust-ambient-authority-0.0.2)
                       ("rust-rand" ,rust-rand-0.8))))
    (home-page "https://github.com/bytecodealliance/cap-std")
    (synopsis "Capability-based random number generators")
    (description
     "This package provides Capability-based random number generators.")
    (license (list license:asl2.0 license:asl2.0 license:expat))))

(define-public rust-cap-std-3
  (package
    (name "rust-cap-std")
    (version "3.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cap-std" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "12a1k1633flbznkfzjg3xmhkh5l4ss4j9hf3fvqmipc3lmf3bh07"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-arf-strings" ,rust-arf-strings-0.7)
                       ("rust-camino" ,rust-camino-1)
                       ("rust-cap-primitives" ,rust-cap-primitives-3)
                       ("rust-io-extras" ,rust-io-extras-0.18)
                       ("rust-io-lifetimes" ,rust-io-lifetimes-2)
                       ("rust-rustix" ,rust-rustix-1))))
    (home-page "https://github.com/bytecodealliance/cap-std")
    (synopsis "Capability-based version of the Rust standard library")
    (description
     "This package provides Capability-based version of the Rust standard library.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-cap-std-3
  (package
    (name "rust-cap-std")
    (version "3.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cap-std" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "12a1k1633flbznkfzjg3xmhkh5l4ss4j9hf3fvqmipc3lmf3bh07"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-arf-strings" ,rust-arf-strings-0.7)
                       ("rust-camino" ,rust-camino-1)
                       ("rust-cap-primitives" ,rust-cap-primitives-3)
                       ("rust-io-extras" ,rust-io-extras-0.18)
                       ("rust-io-lifetimes" ,rust-io-lifetimes-2)
                       ("rust-rustix" ,rust-rustix-1))))
    (home-page "https://github.com/bytecodealliance/cap-std")
    (synopsis "Capability-based version of the Rust standard library")
    (description
     "This package provides Capability-based version of the Rust standard library.")
    (license (list license:asl2.0 license:asl2.0 license:expat))))

(define-public rust-cap-tempfile-3
  (package
    (name "rust-cap-tempfile")
    (version "3.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cap-tempfile" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0zadccnn0m9a8cybd5hnkvnp6z4dcb2daypb60dmbhz6iv8m1p4v"))))
    (build-system cargo-build-system)
    (arguments
     `( ;Builds fails.
        #:skip-build? #t
       #:cargo-inputs (("rust-camino" ,rust-camino-1)
                       ("rust-cap-std" ,rust-cap-std-3)
                       ("rust-rand" ,rust-rand-0.8)
                       ("rust-rustix" ,rust-rustix-1)
                       ("rust-rustix-linux-procfs" ,rust-rustix-linux-procfs-0.1)
                       ("rust-uuid" ,rust-uuid-1))
       #:cargo-development-inputs (("rust-windows-sys" ,rust-windows-sys-0.59))))
    (home-page "https://github.com/bytecodealliance/cap-std")
    (synopsis "Capability-based temporary directories")
    (description
     "This package provides Capability-based temporary directories.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-cap-time-ext-3
  (package
    (name "rust-cap-time-ext")
    (version "3.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cap-time-ext" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0nqskcskhki1chj3ylln333nh0xrbp3phsa6l3d8a03pp0hga6j9"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-ambient-authority" ,rust-ambient-authority-0.0.2)
                       ("rust-cap-primitives" ,rust-cap-primitives-3)
                       ("rust-cap-std" ,rust-cap-std-3)
                       ("rust-iana-time-zone" ,rust-iana-time-zone-0.1)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-rustix" ,rust-rustix-1)
                       ("rust-winx" ,rust-winx-0.36))))
    (home-page "https://github.com/bytecodealliance/cap-std")
    (synopsis "Extension traits for `SystemClock` and `MonotonicClock`")
    (description
     "This package provides Extension traits for `@code{SystemClock`} and `@code{MonotonicClock`}.")
    (license (list license:asl2.0 license:asl2.0 license:expat))))

(define-public rust-capstone-0.12
  (package
    (name "rust-capstone")
    (version "0.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "capstone" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0v2vfzpibdbbabi7nzqrbxn2i5p0a7m8hbhcdchjnnjqv4wa935h"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-capstone-sys" ,rust-capstone-sys-0.16)
                       ("rust-libc" ,rust-libc-0.2))
       #:cargo-development-inputs (("rust-criterion" ,rust-criterion-0.3)
                                   ("rust-macho" ,rust-macho-0.4)
                                   ("rust-rayon" ,rust-rayon-1))))
    (home-page "https://github.com/capstone-rust/capstone-rs")
    (synopsis
     "High level bindings to capstone disassembly engine (https://capstone-engine.org/)")
    (description
     "This package provides High level bindings to capstone disassembly engine
(https://capstone-engine.org/).")
    (license license:expat)))

(define-public rust-capstone-sys-0.16
  (package
    (name "rust-capstone-sys")
    (version "0.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "capstone-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1qshi53z72yciyqskswyll6i9q40yjxf90347b3bgzqi2wkq6wgy"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-bindgen" ,rust-bindgen-0.59)
                       ("rust-cc" ,rust-cc-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-regex" ,rust-regex-1))))
    (home-page
     "https://github.com/capstone-rust/capstone-rs/tree/master/capstone-sys")
    (synopsis "System bindings to the capstone disassembly library")
    (description
     "This package provides System bindings to the capstone disassembly library.")
    (license license:expat)))

(define-public rust-cc-1.2.30
  (package
    (name "rust-cc")
    (version "1.2.30")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cc" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1rqs46vb04ffqlpi6kjwfmvvvf64y6jkdn1faql30sfa0yb11v6y"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-jobserver" ,rust-jobserver-0.1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-shlex" ,rust-shlex-1))
       #:cargo-development-inputs (("rust-tempfile" ,rust-tempfile-3))))
    (home-page "https://github.com/rust-lang/cc-rs")
    (synopsis
     "build-time dependency for Cargo build scripts to assist in invoking the native
C compiler to compile native C code into a static archive to be linked into Rust
code.")
    (description
     "This package provides a build-time dependency for Cargo build scripts to assist
in invoking the native C compiler to compile native C code into a static archive
to be linked into Rust code.")
    (license (list license:expat license:asl2.0))))

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
    (synopsis "Invoke the native C compiler")
    (description
     "This package provides a build-time dependency for Cargo build scripts to
assist in invoking the native C compiler to compile native C code into a static
archive to be linked into Rustcode.")
    (license (list license:expat license:asl2.0))))

(define-public rust-char-device-0.16
  (package
    (name "rust-char-device")
    (version "0.16.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "char-device" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0qsmmh886sjxl8izdd1fm4y08yflq0mxvj030sfx70n1bmhixksm"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-async-std" ,rust-async-std-1)
                       ("rust-io-extras" ,rust-io-extras-0.18)
                       ("rust-io-lifetimes" ,rust-io-lifetimes-2)
                       ("rust-rustix" ,rust-rustix-1)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-winx" ,rust-winx-0.36))))
    (home-page "https://github.com/sunfishcode/char-device")
    (synopsis "Character Device I/O")
    (description "This package provides Character Device I/O.")
    (license (list license:asl2.0 license:asl2.0 license:expat))))

(define-public rust-chrono-0.4.4
  (package
    (inherit rust-chrono-0.4)
    (name "rust-chrono")
    (version "0.4.40")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "chrono" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0z334kqnvq5zx6xsq1k6zk8g9z14fgk2w3vkn4n13pvi3mhn8y8s"))))
    (arguments
     `(#:cargo-inputs (("rust-android-tzdata" ,rust-android-tzdata-0.1)
                       ("rust-arbitrary" ,rust-arbitrary-1)
                       ("rust-iana-time-zone" ,rust-iana-time-zone-0.1)
                       ("rust-js-sys" ,rust-js-sys-0.3)
                       ("rust-num-traits" ,rust-num-traits-0.2)
                       ("rust-pure-rust-locales" ,rust-pure-rust-locales-0.8)
                       ("rust-rkyv" ,rust-rkyv-0.7)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
                       ("rust-windows-link" ,rust-windows-link-0.1))
       #:cargo-development-inputs (("rust-bincode" ,rust-bincode-1)
                                   ("rust-serde-derive" ,rust-serde-derive-1)
                                   ("rust-serde-json" ,rust-serde-json-1.0.141)
                                   ("rust-similar-asserts" ,rust-similar-asserts-1.7)
                                   ("rust-wasm-bindgen-test" ,rust-wasm-bindgen-test-0.3)
                                   ("rust-windows-bindgen" ,rust-windows-bindgen-0.60))))))

(define-public rust-clap-4.5.34
  (package
    (name "rust-clap")
    (version "4.5.34")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "clap" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1zz2jm6sjpq94wqh4afplmvnklwwp36yjgvnaala4399h5wqjn79"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-clap-builder" ,rust-clap-builder-4.5.34)
                       ("rust-clap-derive" ,rust-clap-derive-4))
       #:cargo-development-inputs (("rust-automod" ,rust-automod-1)
                                   ("rust-clap-cargo" ,rust-clap-cargo-0.15)
                                   ("rust-jiff" ,rust-jiff-0.2)
                                   ("rust-rustversion" ,rust-rustversion-1)
                                   ("rust-shlex" ,rust-shlex-1)
                                   ("rust-snapbox" ,rust-snapbox-0.6)
                                   ("rust-trybuild" ,rust-trybuild-1)
                                   ("rust-trycmd" ,rust-trycmd-0.15))))
    (home-page "https://github.com/clap-rs/clap")
    (synopsis
     "simple to use, efficient, and full-featured Command Line Argument Parser")
    (description
     "This package provides a simple to use, efficient, and full-featured Command Line
Argument Parser.")
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
    (synopsis "Command Line Argument Parser")
    (description
     "This package provides a simple to use, efficient, and full-featured Command Line
Argument Parser.")
    (license (list license:expat license:asl2.0))))

(define-public rust-clap-builder-4.5.34
  (package
    (name "rust-clap-builder")
    (version "4.5.34")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "clap_builder" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "12941q4h6gn30ch72spw6fn12r2fkgh9mcav1cbb4gc4358g7c43"))))
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
    (description "This package provides the procedural macro crate for Clap.")
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
     `(#:cargo-inputs (("rust-encode-unicode" ,rust-encode-unicode-1)
                       ("rust-lazy-static" ,rust-lazy-static-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-unicode-width" ,rust-unicode-width-0.1)
                       ("rust-windows-sys" ,rust-windows-sys-0.52))
       #:cargo-development-inputs (("rust-proptest" ,rust-proptest-1.0)
                                   ("rust-regex" ,rust-regex-1))))
    (home-page "https://github.com/mitsuhiko/console")
    (synopsis "Terminal and console abstraction for Rust")
    (description
     "This package provides a terminal and console abstraction for Rust.")
    (license license:expat)))

(define-public rust-copy-dir-0.1
  (package
    (name "rust-copy-dir")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "copy_dir" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "18rckga6rf3nzlw8avyi6chdlid0kp7lhfjyy0pnw27g738isgal"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-tempdir" ,rust-tempdir-0.3)
                       ("rust-walkdir" ,rust-walkdir-2))))
    (home-page "https://github.com/mdunsmuir/copy_dir")
    (synopsis
     "Copy directories recursively in a straightforward and predictable way")
    (description
     "This package provides Copy directories recursively in a straightforward and predictable way.")
    (license license:expat)))

;; Broken.
(define-public rust-cortex-m-0.7
  (package
    (name "rust-cortex-m")
    (version "0.7.7")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cortex-m" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1fbca698v4gv57mv5fc48jrz8wcy6sv675n6fsrsah4qykc11ilf"))))
    (build-system cargo-build-system)
    (arguments
     `( ;Contains files that could be pregenerated.
        #:skip-build? #t
       #:cargo-inputs (("rust-bare-metal" ,rust-bare-metal-0.2)
                       ("rust-bitfield" ,rust-bitfield-0.13)
                       ("rust-critical-section" ,rust-critical-section-1)
                       ("rust-embedded-hal" ,rust-embedded-hal-0.2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-volatile-register" ,rust-volatile-register-0.2))))
    (home-page "https://github.com/rust-embedded/cortex-m")
    (synopsis "Low level access to Cortex-M processors")
    (description
     "This package provides Low level access to Cortex-M processors.")
    (license (list license:expat license:asl2.0))))

(define-public rust-cortex-m-0.6
  (package
    (name "rust-cortex-m")
    (version "0.6.7")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cortex-m" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1f8vdz2r053irkhzvjaysh07n0zzs0ac50mmp5in59f60w5k0xch"))))
    (build-system cargo-build-system)
    (arguments
     `( ;Contains files that could be pregenerated.
        #:skip-build? #t
       #:cargo-inputs (("rust-aligned" ,rust-aligned-0.3)
                       ("rust-bare-metal" ,rust-bare-metal-0.2)
                       ("rust-bitfield" ,rust-bitfield-0.13)
                       ("rust-cortex-m" ,rust-cortex-m-0.7)
                       ("rust-volatile-register" ,rust-volatile-register-0.2))))
    (home-page "https://github.com/rust-embedded/cortex-m")
    (synopsis "Low level access to Cortex-M processors")
    (description
     "This package provides Low level access to Cortex-M processors.")
    (license (list license:expat license:asl2.0))))

(define-public rust-cortex-m-0.5
  (package
    (name "rust-cortex-m")
    (version "0.5.11")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cortex-m" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "08nnq6a0iciyi5hzc07qj3kzq62ihxh8d7fx73vwmjnsyif1m5sr"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-aligned" ,rust-aligned-0.2)
                       ("rust-bare-metal" ,rust-bare-metal-0.2)
                       ("rust-cortex-m" ,rust-cortex-m-0.6)
                       ("rust-volatile-register" ,rust-volatile-register-0.2))))
    (home-page "https://github.com/rust-embedded/cortex-m")
    (synopsis "Low level access to Cortex-M processors")
    (description
     "This package provides Low level access to Cortex-M processors.")
    (license (list license:expat license:asl2.0))))

;; Broken.
(define-public rust-cortex-m-rt-0.6
  (package
    (name "rust-cortex-m-rt")
    (version "0.6.15")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cortex-m-rt" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1iigpqr6rxp375x21j2pd7w492cx2sfh3si29l5dxqk9yj5jfks5"))))
    (build-system cargo-build-system)
    (arguments
     `( ;Contains files that could be pregenerated.
        #:skip-build? #t
       #:cargo-inputs (("rust-cortex-m-rt-macros" ,rust-cortex-m-rt-macros-0.6)
                       ("rust-r0" ,rust-r0-0.2))))
    (home-page "https://github.com/rust-embedded/cortex-m")
    (synopsis "Minimal runtime / startup for Cortex-M microcontrollers")
    (description
     "This package provides Minimal runtime / startup for Cortex-M microcontrollers.")
    (license (list license:expat license:asl2.0))))

(define-public rust-cortex-m-rt-macros-0.6
  (package
    (name "rust-cortex-m-rt-macros")
    (version "0.6.15")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cortex-m-rt-macros" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0j8zm3bpmkjxf5npbqk7qn7wkq0r820v08m55y9ga9iy4i9amqy8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cortex-m-rt" ,rust-cortex-m-rt-0.6)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/rust-embedded/cortex-m")
    (synopsis "Attributes re-exported in `cortex-m-rt`")
    (description
     "This package provides Attributes re-exported in `cortex-m-rt`.")
    (license (list license:expat license:asl2.0))))

(define-public rust-cpp-demangle-0.4
  (package
    (name "rust-cpp-demangle")
    (version "0.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cpp_demangle" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0z8c656jiwphnw1brkb0whm4kgh39h1msvgig2wc44yi58s8vrcn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-afl" ,rust-afl-0.15)
                       ("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-clap" ,rust-clap-4.5.32))))
    (home-page "https://github.com/gimli-rs/cpp_demangle")
    (synopsis "crate for demangling C++ symbols")
    (description "This package provides a crate for demangling C++ symbols.")
    (license (list license:expat license:asl2.0))))

(define-public rust-cranelift-assembler-x64-0.122
  (package
    (name "rust-cranelift-assembler-x64")
    (version "0.122.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cranelift-assembler-x64" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0lgbgn71p89wrn1jkd9mq3vvw20r19902f1vgm164wgxqc7bdrqa"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                       ("rust-capstone" ,rust-capstone-0.13)
                       ("rust-cranelift-assembler-x64-meta" ,rust-cranelift-assembler-x64-meta-0.122))))
    (home-page "")
    (synopsis "Cranelift-specific x64 assembler")
    (description "This package provides a Cranelift-specific x64 assembler.")
    (license (list license:asl2.0))))

(define-public rust-cranelift-assembler-x64-meta-0.122
  (package
    (name "rust-cranelift-assembler-x64-meta")
    (version "0.122.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cranelift-assembler-x64-meta" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1vnyr8ydd7iqq6qk6qsf0ji1gnapmqg1cssbgdlm4r6kzq0c44b5"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cranelift-srcgen" ,rust-cranelift-srcgen-0.122))))
    (home-page "")
    (synopsis "Generate a Cranelift-specific assembler for x64 instructions")
    (description
     "This package provides Generate a Cranelift-specific assembler for x64 instructions.")
    (license (list license:asl2.0))))

(define-public rust-cranelift-bforest-0.122
  (package
    (name "rust-cranelift-bforest")
    (version "0.122.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cranelift-bforest" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0zx05hm88i3q8795qzsp3fn61iws0bin8brig7lvln5a8nk8cw2z"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cranelift-entity" ,rust-cranelift-entity-0.122))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "forest of B+-trees")
    (description "This package provides a forest of B+-trees.")
    (license (list license:asl2.0))))

(define-public rust-cranelift-bforest-0.116
  (package
    (name "rust-cranelift-bforest")
    (version "0.116.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cranelift-bforest" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1i13rpcpzi2b26nf1fajf2jcvmpzjgv8rmlav3m3djw6rsh08pg1"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cranelift-entity" ,rust-cranelift-entity-0.116))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "forest of B+-trees")
    (description "This package provides a forest of B+-trees.")
    (license license:asl2.0)))

(define-public rust-cranelift-bitset-0.122
  (package
    (name "rust-cranelift-bitset")
    (version "0.122.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cranelift-bitset" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "14glfwpf21hlw83kd2cryf0dgs2wmh7mc4iz72zksgszqkgb89aj"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-derive" ,rust-serde-derive-1))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Various bitset stuff for use inside Cranelift")
    (description
     "This package provides Various bitset stuff for use inside Cranelift.")
    (license (list license:asl2.0))))

(define-public rust-cranelift-bitset-0.116
  (package
    (name "rust-cranelift-bitset")
    (version "0.116.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cranelift-bitset" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0d4zvspdxpw8jl1q2zm8n1jrxg6kqmkphjr4rrcp49nflxlkjvkw"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-derive" ,rust-serde-derive-1))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Various bitset stuff for use inside Cranelift")
    (description
     "This package provides Various bitset stuff for use inside Cranelift.")
    (license license:asl2.0)))

(define-public rust-cranelift-codegen-0.122
  (package
    (name "rust-cranelift-codegen")
    (version "0.122.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cranelift-codegen" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1q48r3pz85c1pr9c06az646ivp88abgxcy4kjyajljak3qrv73w5"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-bumpalo" ,rust-bumpalo-3)
                       ("rust-capstone" ,rust-capstone-0.13)
                       ("rust-cranelift-assembler-x64" ,rust-cranelift-assembler-x64-0.122)
                       ("rust-cranelift-bforest" ,rust-cranelift-bforest-0.122)
                       ("rust-cranelift-bitset" ,rust-cranelift-bitset-0.122)
                       ("rust-cranelift-codegen-meta" ,rust-cranelift-codegen-meta-0.122)
                       ("rust-cranelift-codegen-shared" ,rust-cranelift-codegen-shared-0.122)
                       ("rust-cranelift-control" ,rust-cranelift-control-0.122)
                       ("rust-cranelift-entity" ,rust-cranelift-entity-0.122)
                       ("rust-cranelift-isle" ,rust-cranelift-isle-0.122)
                       ("rust-gimli" ,rust-gimli-0.31)
                       ("rust-hashbrown" ,rust-hashbrown-0.15)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-postcard" ,rust-postcard-1)
                       ("rust-pulley-interpreter" ,rust-pulley-interpreter-35)
                       ("rust-regalloc2" ,rust-regalloc2-0.12)
                       ("rust-rustc-hash" ,rust-rustc-hash-2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-derive" ,rust-serde-derive-1)
                       ("rust-sha2" ,rust-sha2-0.10)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-souper-ir" ,rust-souper-ir-2)
                       ("rust-target-lexicon" ,rust-target-lexicon-0.13)
                       ("rust-wasmtime-internal-math" ,rust-wasmtime-internal-math-35))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Low-level code generator library")
    (description "This package provides Low-level code generator library.")
    (license (list license:asl2.0))))

(define-public rust-cranelift-codegen-0.116
  (package
    (name "rust-cranelift-codegen")
    (version "0.116.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cranelift-codegen" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0kihpw7gaj9wx4rw2x9lkn0x3nkcy93vn5pm3hvmh9dl9hn068ic"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-bumpalo" ,rust-bumpalo-3)
                       ("rust-capstone" ,rust-capstone-0.12)
                       ("rust-cranelift-bforest" ,rust-cranelift-bforest-0.116)
                       ("rust-cranelift-bitset" ,rust-cranelift-bitset-0.116)
                       ("rust-cranelift-codegen-meta" ,rust-cranelift-codegen-meta-0.116)
                       ("rust-cranelift-codegen-shared" ,rust-cranelift-codegen-shared-0.116)
                       ("rust-cranelift-control" ,rust-cranelift-control-0.116)
                       ("rust-cranelift-entity" ,rust-cranelift-entity-0.116)
                       ("rust-cranelift-isle" ,rust-cranelift-isle-0.116)
                       ("rust-gimli" ,rust-gimli-0.31)
                       ("rust-hashbrown" ,rust-hashbrown-0.14)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-postcard" ,rust-postcard-1)
                       ("rust-pulley-interpreter" ,rust-pulley-interpreter-29)
                       ("rust-regalloc2" ,rust-regalloc2-0.11)
                       ("rust-rustc-hash" ,rust-rustc-hash-2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-derive" ,rust-serde-derive-1)
                       ("rust-sha2" ,rust-sha2-0.10)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-souper-ir" ,rust-souper-ir-2)
                       ("rust-target-lexicon" ,rust-target-lexicon-0.13))
       #:cargo-development-inputs (("rust-criterion" ,rust-criterion-0.5)
                                   ("rust-env-logger" ,rust-env-logger-0.11)
                                   ("rust-similar" ,rust-similar-2))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Low-level code generator library")
    (description "This package provides Low-level code generator library.")
    (license license:asl2.0)))

(define-public rust-cranelift-codegen-meta-0.122
  (package
    (name "rust-cranelift-codegen-meta")
    (version "0.122.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cranelift-codegen-meta" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0psvwr1qw70119wlkk4y3gq3kl5mwyb1026mavqrh8zisnwiars5"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cranelift-assembler-x64-meta" ,rust-cranelift-assembler-x64-meta-0.122)
                       ("rust-cranelift-codegen-shared" ,rust-cranelift-codegen-shared-0.122)
                       ("rust-cranelift-srcgen" ,rust-cranelift-srcgen-0.122)
                       ("rust-pulley-interpreter" ,rust-pulley-interpreter-35))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Metaprogram for cranelift-codegen code generator library")
    (description
     "This package provides Metaprogram for cranelift-codegen code generator library.")
    (license (list license:asl2.0))))

(define-public rust-cranelift-codegen-meta-0.116
  (package
    (name "rust-cranelift-codegen-meta")
    (version "0.116.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cranelift-codegen-meta" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1f70xrardmbpvfij1djkavllzrlxy9wi6jkzh9bzq9qvqrqvq169"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cranelift-codegen-shared" ,rust-cranelift-codegen-shared-0.116)
                       ("rust-pulley-interpreter" ,rust-pulley-interpreter-29))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Metaprogram for cranelift-codegen code generator library")
    (description
     "This package provides Metaprogram for cranelift-codegen code generator library.")
    (license license:asl2.0)))

(define-public rust-cranelift-codegen-shared-0.122
  (package
    (name "rust-cranelift-codegen-shared")
    (version "0.122.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cranelift-codegen-shared" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "10pl12bj9b9xphqmdasfm3qh0hg5w43vgpd0czqk7629k48081h3"))))
    (build-system cargo-build-system)
    (arguments
     `())
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis
     "For code shared between cranelift-codegen-meta and cranelift-codegen")
    (description
     "This package provides For code shared between cranelift-codegen-meta and cranelift-codegen.")
    (license (list license:asl2.0))))

(define-public rust-cranelift-codegen-shared-0.116
  (package
    (name "rust-cranelift-codegen-shared")
    (version "0.116.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cranelift-codegen-shared" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1src5xxbh4va2g0f1n5lgcfyrqhsk20589ccx1668bspjxa0y620"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis
     "For code shared between cranelift-codegen-meta and cranelift-codegen")
    (description
     "This package provides For code shared between cranelift-codegen-meta and cranelift-codegen.")
    (license license:asl2.0)))

(define-public rust-cranelift-control-0.122
  (package
    (name "rust-cranelift-control")
    (version "0.122.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cranelift-control" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "08xgylnxp8kjix7q43fbwac47imbbqzn54lwyjbj5z4s3xg98whn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "White-box fuzz testing framework")
    (description "This package provides White-box fuzz testing framework.")
    (license (list license:asl2.0))))

(define-public rust-cranelift-control-0.116
  (package
    (name "rust-cranelift-control")
    (version "0.116.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cranelift-control" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1vymgmnqqnmirvkyqraah03hgnjr2wbzqaj7cfali2mxs3335l96"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "White-box fuzz testing framework")
    (description "This package provides White-box fuzz testing framework.")
    (license license:asl2.0)))

(define-public rust-cranelift-entity-0.122
  (package
    (name "rust-cranelift-entity")
    (version "0.122.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cranelift-entity" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "12n98r9dgxjj9h9drk6a6iihldh7g64305fywnd5p0pknmgdag5a"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cranelift-bitset" ,rust-cranelift-bitset-0.122)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-derive" ,rust-serde-derive-1))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Data structures using entity references as mapping keys")
    (description
     "This package provides Data structures using entity references as mapping keys.")
    (license (list license:asl2.0))))

(define-public rust-cranelift-entity-0.116
  (package
    (name "rust-cranelift-entity")
    (version "0.116.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cranelift-entity" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "08xk00xzncxycxm0z1g6daysq2g0qs503pbryvxp8m1732b0sbab"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cranelift-bitset" ,rust-cranelift-bitset-0.116)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-derive" ,rust-serde-derive-1))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Data structures using entity references as mapping keys")
    (description
     "This package provides Data structures using entity references as mapping keys.")
    (license license:asl2.0)))

(define-public rust-cranelift-frontend-0.122
  (package
    (name "rust-cranelift-frontend")
    (version "0.122.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cranelift-frontend" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1iq0jpywh0lc785kz0kdnwzfcvs15d96pdl757i8v6qkz02rj7vq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cranelift-codegen" ,rust-cranelift-codegen-0.122)
                       ("rust-hashbrown" ,rust-hashbrown-0.15)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-target-lexicon" ,rust-target-lexicon-0.13))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Cranelift IR builder helper")
    (description "This package provides Cranelift IR builder helper.")
    (license (list license:asl2.0))))

(define-public rust-cranelift-frontend-0.116
  (package
    (name "rust-cranelift-frontend")
    (version "0.116.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cranelift-frontend" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0msd90p3p5hs1bl687hf21k2h1zv60vrw32b2y9p6419czhl3b2g"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cranelift-codegen" ,rust-cranelift-codegen-0.116)
                       ("rust-hashbrown" ,rust-hashbrown-0.14)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-target-lexicon" ,rust-target-lexicon-0.13))
       #:cargo-development-inputs (("rust-cranelift-codegen" ,rust-cranelift-codegen-0.116)
                                   ("rust-env-logger" ,rust-env-logger-0.11)
                                   ("rust-similar" ,rust-similar-2))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Cranelift IR builder helper")
    (description "This package provides Cranelift IR builder helper.")
    (license license:asl2.0)))

(define-public rust-cranelift-isle-0.122
  (package
    (name "rust-cranelift-isle")
    (version "0.122.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cranelift-isle" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0gb3m8gc55finnips7zn97zksyx04yh678nr9l5z0g9cn2i3flx0"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-codespan-reporting" ,rust-codespan-reporting-0.11)
                       ("rust-log" ,rust-log-0.4))))
    (home-page
     "https://github.com/bytecodealliance/wasmtime/tree/main/cranelift/isle")
    (synopsis
     "ISLE: Instruction Selection and Lowering Expressions. A domain-specific language for instruction selection in Cranelift")
    (description
     "This package provides ISLE: Instruction Selection and Lowering Expressions.  A domain-specific
language for instruction selection in Cranelift.")
    (license (list license:asl2.0))))

(define-public rust-cranelift-isle-0.116
  (package
    (name "rust-cranelift-isle")
    (version "0.116.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cranelift-isle" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0kclhdj14l7av24k2h2hlrm4vkza5pyfzabj196h8w2hdrbhv8hw"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-codespan-reporting" ,rust-codespan-reporting-0.11)
                       ("rust-log" ,rust-log-0.4))
       #:cargo-development-inputs (("rust-tempfile" ,rust-tempfile-3))))
    (home-page
     "https://github.com/bytecodealliance/wasmtime/tree/main/cranelift/isle")
    (synopsis
     "ISLE: Instruction Selection and Lowering Expressions. A domain-specific language for instruction selection in Cranelift")
    (description
     "This package provides ISLE: Instruction Selection and Lowering Expressions.  A domain-specific
language for instruction selection in Cranelift.")
    (license license:asl2.0)))

(define-public rust-cranelift-native-0.122
  (package
    (name "rust-cranelift-native")
    (version "0.122.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cranelift-native" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1hki6qmwlyghrb2ywgrqxk0cwjd1bwnnynww5h480qyndm4pmvif"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cranelift-codegen" ,rust-cranelift-codegen-0.122)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-target-lexicon" ,rust-target-lexicon-0.13))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Support for targeting the host with Cranelift")
    (description
     "This package provides Support for targeting the host with Cranelift.")
    (license (list license:asl2.0))))

(define-public rust-cranelift-native-0.116
  (package
    (name "rust-cranelift-native")
    (version "0.116.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cranelift-native" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1ivna3w02yxa1hs2kkcv6xj8gs8g6mgcrwbpj6x4qb0z7wpyipmq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cranelift-codegen" ,rust-cranelift-codegen-0.116)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-target-lexicon" ,rust-target-lexicon-0.13))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Support for targeting the host with Cranelift")
    (description
     "This package provides Support for targeting the host with Cranelift.")
    (license license:asl2.0)))

(define-public rust-cranelift-srcgen-0.122
  (package
    (name "rust-cranelift-srcgen")
    (version "0.122.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "cranelift-srcgen" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1fznvjz245214mbxsl489k4hvnxkzc6fc38f0y6vcp5514w7hc5m"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Helper functions for generating Rust and ISLE files")
    (description
     "This package provides Helper functions for generating Rust and ISLE files.")
    (license (list license:asl2.0))))

(define-public rust-crc16-0.4
  (package
    (name "rust-crc16")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "crc16" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1zzwb5iv51wnh96532cxkk4aa8ys47rhzrjy98wqcys25ks8k01k"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/blackbeam/rust-crc16")
    (synopsis "CRC16 implementation")
    (description "This package provides a CRC16 implementation.")
    (license license:expat)))

(define-public rust-crypto-box-0.9
  (package
    (name "rust-crypto-box")
    (version "0.9.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "crypto_box" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "02ghw0frbq99d9r52dmk3nxnac6s1i6cqm8ihnkchbm8757jn60n"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-aead" ,rust-aead-0.5)
                       ("rust-blake2" ,rust-blake2-0.10)
                       ("rust-chacha20" ,rust-chacha20-0.9)
                       ("rust-crypto-secretbox" ,rust-crypto-secretbox-0.1)
                       ("rust-curve25519-dalek" ,rust-curve25519-dalek-4)
                       ("rust-salsa20" ,rust-salsa20-0.10)
                       ("rust-serdect" ,rust-serdect-0.2)
                       ("rust-subtle" ,rust-subtle-2)
                       ("rust-zeroize" ,rust-zeroize-1))
       #:cargo-development-inputs (("rust-bincode" ,rust-bincode-1)
                                   ("rust-hex-literal" ,rust-hex-literal-0.4)
                                   ("rust-rand" ,rust-rand-0.8)
                                   ("rust-rmp-serde" ,rust-rmp-serde-1))))
    (home-page "https://github.com/RustCrypto/nacl-compat")
    (synopsis "Pure Rust implementation of NaCl's crypto_box")
    (description
     "This package provides a Rust implementation of NaCl's @code{crypto_box}
public-key authenticated encryption primitive, which combines the X25519
Elliptic Curve Diffie-Hellman function and the XSalsa20Poly1305 authenticated
encryption cipher.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-diesel-2
  (package
    (name "rust-diesel")
    (version "2.2.12")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "diesel" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0372l6pzyhwbpsfr9a6aziqaxh5gjk9dj2i9y3a896yd2ai51612"))))
    (build-system cargo-build-system)
    (arguments
     `( ;Version check for mysqlclient-sys doesn't work.
        #:skip-build? #t
       #:cargo-inputs (("rust-bigdecimal" ,rust-bigdecimal-0.4)
                       ("rust-bitflags" ,rust-bitflags-2)
                       ("rust-byteorder" ,rust-byteorder-1)
                       ("rust-chrono" ,rust-chrono-0.4)
                       ("rust-diesel-derives" ,rust-diesel-derives-2)
                       ("rust-ipnet" ,rust-ipnet-2)
                       ("rust-ipnetwork" ,rust-ipnetwork-0.20)
                       ("rust-itoa" ,rust-itoa-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-libsqlite3-sys" ,rust-libsqlite3-sys-0.30)
                       ("rust-mysqlclient-src" ,rust-mysqlclient-src-0.1)
                       ("rust-mysqlclient-sys" ,rust-mysqlclient-sys-0.2)
                       ("rust-num-bigint" ,rust-num-bigint-0.4)
                       ("rust-num-integer" ,rust-num-integer-0.1)
                       ("rust-num-traits" ,rust-num-traits-0.2)
                       ("rust-percent-encoding" ,rust-percent-encoding-2)
                       ("rust-pq-src" ,rust-pq-src-0.3)
                       ("rust-pq-sys" ,rust-pq-sys-0.4)
                       ("rust-quickcheck" ,rust-quickcheck-1)
                       ("rust-r2d2" ,rust-r2d2-0.8)
                       ("rust-serde-json" ,rust-serde-json-1.0.141)
                       ("rust-time" ,rust-time-0.3)
                       ("rust-url" ,rust-url-2)
                       ("rust-uuid" ,rust-uuid-1))))
    (home-page "https://diesel.rs")
    (synopsis
     "safe, extensible ORM and Query Builder for PostgreSQL, SQLite, and MySQL")
    (description
     "This package provides a safe, extensible ORM and Query Builder for
@code{PostgreSQL}, SQLite, and @code{MySQL}.")
    (license (list license:expat license:asl2.0))))

(define-public rust-diesel-derives-2
  (package
    (name "rust-diesel-derives")
    (version "2.2.7")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "diesel_derives" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0mnpb0l80wnk1mw8ypfyh4ggxr5kxhhp3wgngdbwn9cl8r69i5hv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-diesel-table-macro-syntax" ,rust-diesel-table-macro-syntax-0.2)
                       ("rust-dotenvy" ,rust-dotenvy-0.15)
                       ("rust-dsl-auto-type" ,rust-dsl-auto-type-0.1)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))
       ;; Uses a bunch of undefined references.
       #:tests? #f))
    (home-page "https://diesel.rs")
    (synopsis
     "You should not use this crate directly, it is internal to Diesel")
    (description
     "This package provides You should not use this crate directly, it is internal to Diesel.")
    (license (list license:expat license:asl2.0))))

(define-public rust-diesel-table-macro-syntax-0.2
  (package
    (name "rust-diesel-table-macro-syntax")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "diesel_table_macro_syntax" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "09gvkyljhchbxfkxlkkrdcqcmcxwsim9sfljqilbq4x485b77710"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-syn" ,rust-syn-2))))
    (home-page "https://diesel.rs")
    (synopsis "Internal diesel crate")
    (description "This package provides Internal diesel crate.")
    (license (list license:expat license:asl2.0))))

(define-public rust-directories-6
  (package
    (name "rust-directories")
    (version "6.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "directories" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0zgy2w088v8w865c11dmc3dih899fgrhvrfp7g83h6v6ai60kx8n"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-dirs-sys" ,rust-dirs-sys-0.5))))
    (home-page "https://github.com/soc/directories-rs")
    (synopsis
     "tiny mid-level library that provides platform-specific standard locations of directories for config, cache and other data on Linux, Windows and macOS by leveraging the mechanisms defined by the XDG base/user directory specifications on Linux, the Known Folder API on Windows, and the Standard Directory guidelines on macOS.")
    (description
     "This package provides a tiny mid-level library that provides platform-specific
standard locations of directories for config, cache and other data on Linux,
Windows and @code{macOS} by leveraging the mechanisms defined by the XDG
base/user directory specifications on Linux, the Known Folder API on Windows,
and the Standard Directory guidelines on @code{macOS}.")
    (license (list license:expat license:asl2.0))))

(define-public rust-dirs-sys-0.5
  (package
    (name "rust-dirs-sys")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "dirs-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1aqzpgq6ampza6v012gm2dppx9k35cdycbj54808ksbys9k366p0"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                       ("rust-option-ext" ,rust-option-ext-0.2)
                       ("rust-redox-users" ,rust-redox-users-0.5)
                       ("rust-windows-sys" ,rust-windows-sys-0.59))))
    (home-page "https://github.com/dirs-dev/dirs-sys-rs")
    (synopsis
     "System-level helper functions for the dirs and directories crates")
    (description
     "This package provides System-level helper functions for the dirs and directories crates.")
    (license (list license:expat license:asl2.0))))

(define-public rust-dsl-auto-type-0.1
  (package
    (name "rust-dsl-auto-type")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "dsl_auto_type" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0nzzqmqyymlnffhms1kism5xhgsk73mq6r6pdpr8azsjlynfk6hk"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-darling" ,rust-darling-0.20)
                       ("rust-either" ,rust-either-1)
                       ("rust-heck" ,rust-heck-0.5)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://diesel.rs")
    (synopsis
     "Automatically expand query fragment types for factoring as functions")
    (description
     "This package provides Automatically expand query fragment types for factoring as functions.")
    (license (list license:expat license:asl2.0))))

(define-public rust-embassy-0.0.0
  (package
    (name "rust-embassy")
    (version "0.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "embassy" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1gkp7s67bl4iqmzf8dmic763lhm39bims70ssbw5cvqvnb418blh"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/akiles/embassy")
    (synopsis "Crate name reserved for the Embassy project")
    (description
     "This package provides Crate name reserved for the Embassy project.")
    (license (list license:expat license:asl2.0))))

;; Broken. Missing dependency.
(define-public rust-embassy-executor-0.7
  (package
    (name "rust-embassy-executor")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "embassy-executor" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1ijssd96f1zfivwl3hlvbigw8rdj27cy5i7ci5zm0fikcv67nclh"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-avr-device" ,rust-avr-device-0.5)
                       ("rust-cortex-m" ,rust-cortex-m-0.7)
                       ("rust-critical-section" ,rust-critical-section-1)
                       ("rust-defmt" ,rust-defmt-0.3)
                       ("rust-document-features" ,rust-document-features-0.2)
                       ("rust-embassy-executor-macros" ,rust-embassy-executor-macros-0.6)
                       ("rust-embassy-time-driver" ,rust-embassy-time-driver-0.2)
                       ("rust-js-sys" ,rust-js-sys-0.3)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-portable-atomic" ,rust-portable-atomic-1)
                       ("rust-rtos-trace" ,rust-rtos-trace-0.1)
                       ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2))
       #:cargo-development-inputs (("rust-critical-section" ,rust-critical-section-1)
                                   ("rust-trybuild" ,rust-trybuild-1))))
    (home-page "https://github.com/embassy-rs/embassy")
    (synopsis "async/await executor designed for embedded usage")
    (description
     "This package provides async/await executor designed for embedded usage.")
    (license (list license:expat license:asl2.0))))

(define-public rust-embassy-executor-macros-0.6
  (package
    (name "rust-embassy-executor-macros")
    (version "0.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "embassy-executor-macros" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1kxydmi3r7kcqvijapy54hb527dh4i9zqc53g48khqbg8klv2xrm"))))
    (build-system cargo-build-system)
    (arguments
     `( ;Circular dependency.
        #:skip-build? #t
       #:cargo-inputs (("rust-darling" ,rust-darling-0.20)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/embassy-rs/embassy")
    (synopsis
     "macros for creating the entry point and tasks for embassy-executor")
    (description
     "This package provides macros for creating the entry point and tasks for embassy-executor.")
    (license (list license:expat license:asl2.0))))

(define-public rust-embassy-time-0.4
  (package
    (name "rust-embassy-time")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "embassy-time" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1y51sz70709m2srx89wz3b6ws466aksnc2ifsqx1inla35zia87q"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-critical-section" ,rust-critical-section-1)
                       ("rust-defmt" ,rust-defmt-0.3)
                       ("rust-document-features" ,rust-document-features-0.2)
                       ("rust-embassy-time-driver" ,rust-embassy-time-driver-0.2)
                       ("rust-embassy-time-queue-utils" ,rust-embassy-time-queue-utils-0.1)
                       ("rust-embedded-hal" ,rust-embedded-hal-0.2)
                       ("rust-embedded-hal" ,rust-embedded-hal-1)
                       ("rust-embedded-hal-async" ,rust-embedded-hal-async-1)
                       ("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-js-sys" ,rust-js-sys-0.3)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
                       ("rust-wasm-timer" ,rust-wasm-timer-0.2))))
    (home-page "https://github.com/embassy-rs/embassy")
    (synopsis
     "Instant and Duration for embedded no-std systems, with async timer support")
    (description
     "This package provides Instant and Duration for embedded no-std systems, with async timer support.")
    (license (list license:expat license:asl2.0))))

;; Broken.
(define-public rust-embassy-time-driver-0.2
  (package
    (name "rust-embassy-time-driver")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "embassy-time-driver" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1fkyxcaznpcfzmw1a6k6mw7s3ylbn5qdxhmhmb98pndn6gcgaicd"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-critical-section" ,rust-critical-section-1)
                       ("rust-document-features" ,rust-document-features-0.2))))
    (home-page "https://github.com/embassy-rs/embassy")
    (synopsis "Driver trait for embassy-time")
    (description "This package provides Driver trait for embassy-time.")
    (license (list license:expat license:asl2.0))))

(define-public rust-embassy-time-queue-utils-0.1
  (package
    (name "rust-embassy-time-queue-utils")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "embassy-time-queue-utils" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "10wg9l342aq9fihx1k30rx98iyvmcnbww2bd2rdsc239s54cfmfw"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-embassy-executor" ,rust-embassy-executor-0.7)
                       ("rust-heapless" ,rust-heapless-0.8))))
    (home-page "https://github.com/embassy-rs/embassy")
    (synopsis "Timer queue driver trait for embassy-time")
    (description
     "This package provides Timer queue driver trait for embassy-time.")
    (license (list license:expat license:asl2.0))))

(define-public rust-embedded-hal-1
  (package
    (name "rust-embedded-hal")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "embedded-hal" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "128bb4h3kw8gvz6w7xa0z0j6nrk5jhm3aa7v350clkh0nzz906in"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-defmt" ,rust-defmt-0.3))))
    (home-page "https://github.com/rust-embedded/embedded-hal")
    (synopsis "A Hardware Abstraction Layer (HAL) for embedded systems")
    (description
     "This package provides a Hardware Abstraction Layer (HAL) for embedded systems.")
    (license (list license:expat license:asl2.0))))

;; Broken. Can't find stm32f30x for some reason.
(define-public rust-embedded-hal-0.2
  (package
    (name "rust-embedded-hal")
    (version "0.2.7")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "embedded-hal" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1zv6pkgg2yl0mzvh3jp326rhryqfnv4l27h78v7p7maag629i51m"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-nb" ,rust-nb-0.1)
                       ("rust-stm32f30x" ,rust-stm32f30x-0.8)
                       ("rust-void" ,rust-void-1))))
    (home-page "https://github.com/rust-embedded/embedded-hal")
    (synopsis "A Hardware Abstraction Layer (HAL) for embedded systems")
    (description
     "This package provides a Hardware Abstraction Layer (HAL) for embedded systems.")
    (license (list license:expat license:asl2.0))))

(define-public rust-embedded-hal-async-1
  (package
    (name "rust-embedded-hal-async")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "embedded-hal-async" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "110q7zxsis2wl7gwshg86gpq0fgd85la4kfxqv1i7zppprdnhk0c"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-defmt" ,rust-defmt-0.3)
                       ("rust-embedded-hal" ,rust-embedded-hal-1))))
    (home-page "https://github.com/rust-embedded/embedded-hal")
    (synopsis
     "An asynchronous Hardware Abstraction Layer (HAL) for embedded systems")
    (description
     "This package provides An asynchronous Hardware Abstraction Layer (HAL) for embedded systems.")
    (license (list license:expat license:asl2.0))))

(define-public rust-encode-unicode-1
  (package
    (name "rust-encode-unicode")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "encode_unicode" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1h5j7j7byi289by63s3w4a8b3g6l5ccdrws7a67nn07vdxj77ail"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-ascii" ,rust-ascii-1)
                       ("rust-clippy" ,rust-clippy-0.0.302))
       #:cargo-development-inputs (("rust-lazy-static" ,rust-lazy-static-1))))
    (home-page "https://github.com/tormol/encode_unicode")
    (synopsis "UTF-8 and UTF-16 support for char, u8 and u16")
    (description
     "UTF-8 and UTF-16 character types, iterators and related methods for
char, u8 and u16.")
    (license (list license:expat license:asl2.0))))

(define-public rust-etcetera-0.10
  (package
    (name "rust-etcetera")
    (version "0.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "etcetera" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1rka6bskn93pdhx32xaagr147q95z5bnz7ym5xr85jw00wyv3ir6"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-home" ,rust-home-0.5)
                       ("rust-windows-sys" ,rust-windows-sys-0.59))))
    (home-page "https://github.com/lunacookies/etcetera")
    (synopsis
     "An unopinionated library for obtaining configuration, data, cache, & other directories")
    (description
     "This package provides An unopinionated library for obtaining configuration, data, cache, & other
directories.")
    (license (list license:expat license:asl2.0))))

(define-public rust-futures-lite-2.6
  (package
    (name "rust-futures-lite")
    (version "2.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "futures-lite" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0cmmgszlmkwsac9pyw5rfjakmshgx4wmzmlyn6mmjs0jav4axvgm"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-fastrand" ,rust-fastrand-2)
                       ("rust-futures-core" ,rust-futures-core-0.3)
                       ("rust-futures-io" ,rust-futures-io-0.3)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-parking" ,rust-parking-2)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2))
       #:cargo-development-inputs (("rust-spin-on" ,rust-spin-on-0.1)
                                   ("rust-waker-fn" ,rust-waker-fn-1))))
    (home-page "https://github.com/smol-rs/futures-lite")
    (synopsis "Futures, streams, and async I/O combinators")
    (description
     "This package provides Futures, streams, and async I/O combinators.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-futures-rustls-0.26
  (package
    (name "rust-futures-rustls")
    (version "0.26.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "futures-rustls" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1nvaqbblx1svlz0pjrm4rf1c9xd4kjzzlinp5sqnjb7r0wkg3wm8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-futures-io" ,rust-futures-io-0.3)
                       ("rust-rustls" ,rust-rustls-0.23)
                       ("rust-rustls-pki-types" ,rust-rustls-pki-types-1))
       ;; Probably requires an internet connection.
       #:tests? #f))
    (home-page "https://github.com/quininer/futures-rustls")
    (synopsis "Asynchronous TLS/SSL streams for futures using Rustls")
    (description
     "This package provides Asynchronous TLS/SSL streams for futures using Rustls.")
    (license (list license:expat license:asl2.0))))

(define-public rust-futures-time-3
  (package
    (name "rust-futures-time")
    (version "3.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "futures-time" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "12km02vdlw9a4y7kg84v4p9fr12fvi3x2qnnyzjiz214d0x8a134"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-async-channel" ,rust-async-channel-1)
                       ("rust-async-io" ,rust-async-io-1)
                       ("rust-futures-core" ,rust-futures-core-0.3)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2))
       #:cargo-development-inputs (("rust-futures-lite" ,rust-futures-lite-1))))
    (home-page "https://github.com/yoshuawuyts/futures-time")
    (synopsis "async time combinators")
    (description "This package provides async time combinators.")
    (license (list license:expat license:asl2.0))))

(define-public rust-fxprof-processed-profile-0.6
  (package
    (name "rust-fxprof-processed-profile")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "fxprof-processed-profile" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1ggsn3im2bfcnxic0jzk00qgiacfrg2as6i4d8kj87kzxl52rl97"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-assert-json-diff" ,rust-assert-json-diff-2)
                       ("rust-bitflags" ,rust-bitflags-2)
                       ("rust-debugid" ,rust-debugid-0.8)
                       ("rust-fxhash" ,rust-fxhash-0.2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1.0.141))))
    (home-page "https://github.com/mstange/samply/")
    (synopsis
     "Create profiles in the Firefox Profiler's processed profile JSON format")
    (description
     "This package provides Create profiles in the Firefox Profiler's processed profile JSON format.")
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
     `(#:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
                       ("rust-js-sys" ,rust-js-sys-0.3.77)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
                       ("rust-wasi" ,rust-wasi-0.13)
                       ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
                       ("rust-web-sys" ,rust-web-sys-0.3.77)) ;Indirect dependency.
       #:cargo-development-inputs (("rust-wasm-bindgen-test" ,rust-wasm-bindgen-test-0.3))))
    (home-page "https://github.com/rust-random/getrandom")
    (synopsis "Retrieve random data from system source")
    (description "This package provides a small cross-platform library for
retrieving random data from system source.")
    (license (list license:expat license:asl2.0))))

(define-public rust-googletest-0.11
  (package
    (name "rust-googletest")
    (version "0.11.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "googletest" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0wrngx8y30b659cahqr9hga71kwyxa9dxmbyyw728qg6w8rs4i7f"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-googletest-macro" ,rust-googletest-macro-0.11)
                       ("rust-indoc" ,rust-indoc-2)
                       ("rust-num-traits" ,rust-num-traits-0.2)
                       ("rust-proptest" ,rust-proptest-1)
                       ("rust-regex" ,rust-regex-1)
                       ("rust-rustversion" ,rust-rustversion-1)
                       ("rust-serial-test" ,rust-serial-test-2))))
    (home-page "https://github.com/google/googletest-rust")
    (synopsis
     "rich assertion and matcher library inspired by GoogleTest for C++")
    (description
     "This package provides a rich assertion and matcher library inspired by
@code{GoogleTest} for C++.")
    (license license:asl2.0)))

(define-public rust-googletest-macro-0.11
  (package
    (name "rust-googletest-macro")
    (version "0.11.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "googletest_macro" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1addhzi4h6wjxps518ykmnik9l2hg0dcp30qjc0lha76s6vmfc7d"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/google/googletest-rust")
    (synopsis "Procedural macros for GoogleTest Rust")
    (description
     "This package provides Procedural macros for @code{GoogleTest} Rust.")
    (license license:asl2.0)))

(define-public rust-id-arena-2
  (package
    (name "rust-id-arena")
    (version "2.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "id-arena" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "01ch8jhpgnih8sawqs44fqsqpc7bzwgy0xpi6j0f4j0i5mkvr8i5"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-rayon" ,rust-rayon-1))
       ;; Has a test that requires internet connection.
       #:tests? #f))
    (home-page "https://github.com/fitzgen/id-arena")
    (synopsis "simple, id-based arena.")
    (description "This package provides a simple, id-based arena.")
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
     `(#:cargo-test-flags '("--" "--skip=style::tests::wide_element_style")
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
       #:cargo-development-inputs (("rust-clap" ,rust-clap-4)
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
    (description "This package provides a snapshot testing library for Rust.")
    (license license:asl2.0)))

(define-public rust-ittapi-0.4
  (package
    (name "rust-ittapi")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "ittapi" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1cb41dapbximlma0vnar144m2j2km44g8g6zmv6ra4y42kk6z6bb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-ittapi-sys" ,rust-ittapi-sys-0.4)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-scoped-env" ,rust-scoped-env-2))))
    (home-page "https://github.com/intel/ittapi/tree/master/rust/ittapi")
    (synopsis "High-level Rust bindings for ittapi")
    (description "This package provides High-level Rust bindings for ittapi.")
    (license (list license:gpl2 license:bsd-3))))

(define-public rust-ittapi-sys-0.4
  (package
    (name "rust-ittapi-sys")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "ittapi-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1z7lgc7gwlhcvkdk6bg9sf1ww4w0b41blp90hv4a4kq6ji9kixaj"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-bindgen" ,rust-bindgen-0.68)
                       ("rust-cc" ,rust-cc-1))
       ;; Tests fail.
       #:tests? #f))
    (home-page "https://github.com/intel/ittapi/tree/master/rust/ittapi-sys")
    (synopsis "Rust bindings for ittapi")
    (description "This package provides Rust bindings for ittapi.")
    (license (list license:gpl2 license:bsd-3))))

(define-public rust-jiff-0.2
  (package
    (name "rust-jiff")
    (version "0.2.15")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "jiff" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0jby6kbs2ra33ji0rx4swcp66jzmcvgszc5v4izwfsgbn6w967xy"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-jiff-static" ,rust-jiff-static-0.2)
                       ("rust-jiff-static" ,rust-jiff-static-0.2)
                       ("rust-jiff-tzdb" ,rust-jiff-tzdb-0.1)
                       ("rust-jiff-tzdb-platform" ,rust-jiff-tzdb-platform-0.1)
                       ("rust-js-sys" ,rust-js-sys-0.3)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-portable-atomic" ,rust-portable-atomic-1)
                       ("rust-portable-atomic-util" ,rust-portable-atomic-util-0.2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
                       ("rust-windows-sys" ,rust-windows-sys-0.59))
       #:cargo-development-inputs (("rust-anyhow" ,rust-anyhow-1)
                                   ("rust-chrono" ,rust-chrono-0.4)
                                   ("rust-chrono-tz" ,rust-chrono-tz-0.10)
                                   ("rust-hifitime" ,rust-hifitime-3)
                                   ("rust-humantime" ,rust-humantime-2)
                                   ("rust-insta" ,rust-insta-1)
                                   ("rust-log" ,rust-log-0.4)
                                   ("rust-quickcheck" ,rust-quickcheck-1)
                                   ("rust-serde" ,rust-serde-1)
                                   ("rust-serde-json" ,rust-serde-json-1.0.141)
                                   ("rust-serde-yaml" ,rust-serde-yaml-0.9)
                                   ("rust-tabwriter" ,rust-tabwriter-1)
                                   ("rust-time" ,rust-time-0.3)
                                   ("rust-tzfile" ,rust-tzfile-0.1)
                                   ("rust-walkdir" ,rust-walkdir-2))))
    (home-page "https://github.com/BurntSushi/jiff")
    (synopsis
     "date-time library that encourages you to jump into the pit of success.

This library is heavily inspired by the Temporal project.")
    (description
     "This package provides a date-time library that encourages you to jump into the
pit of success.  This library is heavily inspired by the Temporal project.")
    (license (list license:unlicense license:expat))))

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
       (snippet '(begin
                   (substitute* "Cargo.toml"
                     (("\"=([[:digit:]]+(\\.[[:digit:]]+)*)" _ version)
                      (string-append "\"^" version)))))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-once-cell" ,rust-once-cell-1)
                       ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2.100))))
    (home-page "https://rustwasm.github.io/wasm-bindgen/")
    (synopsis "Bindings for all JS global objects and functions in WASM")
    (description
     "Bindings for all JS global objects and functions in all JS environments
like Node.js and browsers, built on @code{#[wasm_bindgen]} using the
wasm-bindgen crate.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-leb128fmt-0.1
  (package
    (name "rust-leb128fmt")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "leb128fmt" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1chxm1484a0bly6anh6bd7a99sn355ymlagnwj3yajafnpldkv89"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/bluk/leb128fmt")
    (synopsis "library to encode and decode LEB128 compressed integers.")
    (description
     "This package provides a library to encode and decode LEB128 compressed integers.")
    (license (list license:expat license:asl2.0))))

(define-public rust-libc-0.2
  (package
    (name "rust-libc")
    (version "0.2.174")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "libc" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0xl7pqvw7g2874dy3kjady2fjr4rhj5lxsnxkkhr5689jcr6jw8i"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))))
    (home-page "https://github.com/rust-lang/libc")
    (synopsis "Raw FFI bindings to platform libraries like libc")
    (description
     "This package provides Raw FFI bindings to platform libraries like libc.")
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
        (base32 "1f8i31h3666rl6sq7v64ajdq03hmylkh6c1vaf9828aaml2ly3i2"))
       (modules '((guix build utils)))
       (snippet '(begin
                   (delete-file-recursively "libssh2")))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-libz-sys" ,rust-libz-sys-1)
                       ("rust-openssl-sys" ,rust-openssl-sys-0.9)
                       ("rust-pkg-config" ,rust-pkg-config-0.3)
                       ("rust-vcpkg" ,rust-vcpkg-0.2))))
    (native-inputs (list pkg-config))
    (inputs (list libssh2 openssl zlib))
    (home-page "https://github.com/alexcrichton/ssh2-rs")
    (synopsis "Native bindings to the libssh2 library")
    (description
     "This package provides native rust bindings to the @code{libssh2} library.")
    (license (list license:expat license:asl2.0))))

(define-public rust-libusb1-sys-0.5
  (package
    (name "rust-libusb1-sys")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "libusb1-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0gq27za2av9gvdz1pgwlzaw3bflyhlxj0inlqp31cs5yig88jbp2"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-pkg-config" ,rust-pkg-config-0.3)
                       ("rust-vcpkg" ,rust-vcpkg-0.2))
       ;; These tests are incompatible with an isolated environment, since they
       ;; try to get the list of devices.
       #:cargo-test-flags '("--" "--skip=test_init_and_exit"
                            "--skip=test_get_device_list")))
    (inputs (list libusb))
    (home-page "https://github.com/a1ien/rusb")
    (synopsis "FFI bindings for libusb")
    (description "This package provides FFI bindings for @code{libusb}.")
    (license license:expat)))

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
    (synopsis "@code{libyaml} converted to Rust by using c2rust")
    (description "This package provides tools for safe and efficient parsing,
emitting, and manipulation of YAML data.")
    (license license:expat)))

(define-public rust-log-0.4.27
  (package
    (name "rust-log")
    (version "0.4.27")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "log" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "150x589dqil307rv0rwj0jsgz5bjbwvl83gyl61jf873a7rjvp0k"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-serde" ,rust-serde-1)
                       ("rust-sval" ,rust-sval-2)
                       ("rust-sval-ref" ,rust-sval-ref-2)
                       ("rust-value-bag" ,rust-value-bag-1))
       #:cargo-development-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                                   ("rust-serde" ,rust-serde-1)
                                   ("rust-serde-json" ,rust-serde-json-1.0.141)
                                   ("rust-serde-test" ,rust-serde-test-1)
                                   ("rust-sval" ,rust-sval-2)
                                   ("rust-sval-derive" ,rust-sval-derive-2)
                                   ("rust-value-bag" ,rust-value-bag-1))))
    (home-page "https://github.com/rust-lang/log")
    (synopsis "lightweight logging facade for Rust")
    (description
     "This package provides a lightweight logging facade for Rust.")
    (license (list license:expat license:asl2.0))))

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

(define-public rust-logos-0.14
  (package
    (name "rust-logos")
    (version "0.14.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "logos" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0n349vin9mx326fkz68bsa4vc5sdn9n8qnfz7n1yqynbz1p3albj"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-ariadne" ,rust-ariadne-0.2)
                       ("rust-logos-derive" ,rust-logos-derive-0.14))))
    (home-page "https://logos.maciej.codes/")
    (synopsis "Create ridiculously fast Lexers")
    (description "This package provides Create ridiculously fast Lexers.")
    (license (list license:expat license:asl2.0))))

(define-public rust-logos-codegen-0.14
  (package
    (name "rust-logos-codegen")
    (version "0.14.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "logos-codegen" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0gwnx7lk4y7xc4yk6pr0knrddard5z22rxaz9xrnc38cc1lh1y2r"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-beef" ,rust-beef-0.5)
                       ("rust-fnv" ,rust-fnv-1)
                       ("rust-lazy-static" ,rust-lazy-static-1)
                       ("rust-pretty-assertions" ,rust-pretty-assertions-1)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-regex-syntax" ,rust-regex-syntax-0.8)
                       ("rust-rstest" ,rust-rstest-0.18)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://logos.maciej.codes/")
    (synopsis "Create ridiculously fast Lexers")
    (description "This package provides Create ridiculously fast Lexers.")
    (license (list license:expat license:asl2.0))))

(define-public rust-logos-derive-0.14
  (package
    (name "rust-logos-derive")
    (version "0.14.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "logos-derive" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "07bk3q4jry9f8blrnsiy872ivilzy62xaglnn2ni5p590qmp5yr4"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-logos-codegen" ,rust-logos-codegen-0.14))))
    (home-page "https://logos.maciej.codes/")
    (synopsis "Create ridiculously fast Lexers")
    (description "This package provides Create ridiculously fast Lexers.")
    (license (list license:expat license:asl2.0))))

(define-public rust-lru-0.16
  (package
    (name "rust-lru")
    (version "0.16.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "lru" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1vda21xn26iz5qdy02fbl14sn7wz926iizyac8w2zxbz11jlxsl6"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-hashbrown" ,rust-hashbrown-0.15)
                       ("rust-scoped-threadpool" ,rust-scoped-threadpool-0.1)
                       ("rust-stats-alloc" ,rust-stats-alloc-0.1))))
    (home-page "https://github.com/jeromefroe/lru-rs")
    (synopsis "LRU cache implementation")
    (description "This package provides a LRU cache implementation.")
    (license license:expat)))

(define-public rust-lru-0.13
  (package
    (name "rust-lru")
    (version "0.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "lru" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0ra4jcfgij99z02rg5zy292ncsybk0vn5zc7bmrv82igbzalhxr2"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-hashbrown" ,rust-hashbrown-0.15))
       #:cargo-development-inputs (("rust-scoped-threadpool" ,rust-scoped-threadpool-0.1)
                                   ("rust-stats-alloc" ,rust-stats-alloc-0.1))))
    (home-page "https://github.com/jeromefroe/lru-rs")
    (synopsis "LRU cache implementation")
    (description "This package provides a LRU cache implementation.")
    (license license:expat)))

(define-public rust-macho-0.4
  (package
    (name "rust-macho")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "macho" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "011p1j9jlndbanmqy5y7lk1vn3mh4jk3chgjiw3wwnbfzkicdsvg"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-nom" ,rust-nom-1)
                       ("rust-uuid" ,rust-uuid-0.3))))
    (home-page "https://github.com/richo/macho-rs")
    (synopsis "Mach-O parser in rust")
    (description "This package provides Mach-O parser in rust.")
    (license license:expat)))

(define-public rust-maybe-owned-0.3
  (package
    (name "rust-maybe-owned")
    (version "0.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "maybe-owned" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1d3sqiv59i06k73x6p7mf294zgdfb2qkky127ipfnjj9mr9wgb2g"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/rustonaut/maybe-owned")
    (synopsis
     "provides a `MaybeOwned` (and `MaybeOwnedMut`) type similar to std's `Cow` but it implements `From<T>` and `From<&'a T>` and does not require `ToOwned`")
    (description
     "This package provides provides a `@code{MaybeOwned`} (and `@code{MaybeOwnedMut`}) type similar to
std's `Cow` but it implements `From<T>` and `From<&'a T>` and does not require
`@code{ToOwned`}.")
    (license (list license:expat license:asl2.0))))

(define-public rust-maybe-owned-0.3
  (package
    (name "rust-maybe-owned")
    (version "0.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "maybe-owned" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1d3sqiv59i06k73x6p7mf294zgdfb2qkky127ipfnjj9mr9wgb2g"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1.0.141))))
    (home-page "https://github.com/rustonaut/maybe-owned")
    (synopsis
     "provides a `MaybeOwned` (and `MaybeOwnedMut`) type similar to std's `Cow` but it implements `From<T>` and `From<&'a T>` and does not require `ToOwned`")
    (description
     "This package provides provides a `@code{MaybeOwned`} (and `@code{MaybeOwnedMut`}) type similar to
std's `Cow` but it implements `From<T>` and `From<&'a T>` and does not require
`@code{ToOwned`}.")
    (license (list license:expat license:asl2.0))))

(define-public rust-memfd-0.6
  (package
    (name "rust-memfd")
    (version "0.6.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "memfd" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0r5cm3wzyr1x7768h3hns77b494qbz0g05cb9wgpjvrcsm5gmkxj"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-rustix" ,rust-rustix-0.38))))
    (home-page "https://github.com/lucab/memfd-rs")
    (synopsis "pure-Rust library to work with Linux memfd and sealing")
    (description
     "This package provides a pure-Rust library to work with Linux memfd and sealing.")
    (license (list license:expat license:asl2.0))))

(define-public rust-minreq-2
  (package
    (name "rust-minreq")
    (version "2.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "minreq" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0y5nw39r9w8kjcj86k17wc3q8s9z9bjs216blgsbycb8m0957244"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-base64" ,rust-base64-0.22)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-native-tls" ,rust-native-tls-0.2)
                       ("rust-openssl" ,rust-openssl-0.10)
                       ("rust-openssl-probe" ,rust-openssl-probe-0.1)
                       ("rust-punycode" ,rust-punycode-0.4)
                       ("rust-rustls" ,rust-rustls-0.21)
                       ("rust-rustls-native-certs" ,rust-rustls-native-certs-0.6)
                       ("rust-rustls-webpki" ,rust-rustls-webpki-0.101)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1.0.141)
                       ("rust-urlencoding" ,rust-urlencoding-2)
                       ("rust-webpki-roots" ,rust-webpki-roots-0.25))
       #:cargo-development-inputs (("rust-chrono" ,rust-chrono-0.4)
                                   ("rust-tiny-http" ,rust-tiny-http-0.12))
       ;; Tests require an internet connection.
       #:tests? #f))
    (home-page "https://github.com/neonmoe/minreq")
    (synopsis "Simple, minimal-dependency HTTP client")
    (description
     "This package provides Simple, minimal-dependency HTTP client.")
    (license license:isc)))

(define-public rust-munge-0.4
  (package
    (name "rust-munge")
    (version "0.4.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "munge" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1cawc8qsn2pdsgvqdsdp99j6ppqxsjlir7dqqm7bgyw0md7i9klw"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-munge-macro" ,rust-munge-macro-0.4)
                       ("rust-rustversion" ,rust-rustversion-1)
                       ("rust-trybuild" ,rust-trybuild-1))))
    (home-page "https://github.com/djkoloski/munge")
    (synopsis "Macro for custom destructuring")
    (description "This package provides Macro for custom destructuring.")
    (license license:expat)))

(define-public rust-munge-macro-0.4
  (package
    (name "rust-munge-macro")
    (version "0.4.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "munge_macro" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "18cjjcaf00b1jxnq4iy486r8313p6gasimimypywnwcrbg6zjjjp"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/djkoloski/munge")
    (synopsis "Macro for custom destructuring")
    (description "This package provides Macro for custom destructuring.")
    (license license:expat)))

(define-public rust-mysqlclient-src-0.1
  (package
    (name "rust-mysqlclient-src")
    (version "0.1.4+9.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "mysqlclient-src" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0p867dmpvkr3nkszjy0yszh1y9jv33ribb40cdffmb2b3v4srcrz"))))
    (build-system cargo-build-system)
    (arguments
     `( ;"can't find crate for `openssl_src`", despite the crate being an input.
        #:skip-build? #t
       #:cargo-inputs (("rust-cmake" ,rust-cmake-0.1)
                       ("rust-link-cplusplus" ,rust-link-cplusplus-1)
                       ("rust-openssl-src" ,rust-openssl-src-300)
                       ("rust-openssl-sys" ,rust-openssl-sys-0.9))))
    (home-page "https://github.com/sgrif/mysqlclient-sys")
    (synopsis "Bundled version of libmysqlclient")
    (description "This package provides Bundled version of libmysqlclient.")
    (license license:gpl2)))

(define-public rust-nb-1
  (package
    (name "rust-nb")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "nb" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "179kbn9l6vhshncycagis7f8mfjppz4fhvgnmcikqz30mp23jm4d"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-defmt" ,rust-defmt-0.3))))
    (home-page "https://github.com/rust-embedded/nb")
    (synopsis "Minimal non-blocking I/O layer")
    (description "This package provides Minimal non-blocking I/O layer.")
    (license (list license:expat license:asl2.0))))

(define-public rust-nb-1
  (package
    (name "rust-nb")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "nb" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "179kbn9l6vhshncycagis7f8mfjppz4fhvgnmcikqz30mp23jm4d"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-defmt" ,rust-defmt-0.3))))
    (home-page "https://github.com/rust-embedded/nb")
    (synopsis "Minimal non-blocking I/O layer")
    (description "This package provides Minimal non-blocking I/O layer.")
    (license (list license:expat license:asl2.0))))

(define-public rust-nb-0.1
  (package
    (name "rust-nb")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "nb" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0vyh31pbwrg21f8hz1ipb9i20qwnfwx47gz92i9frdhk0pd327c0"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-futures" ,rust-futures-0.3)
                       ("rust-nb" ,rust-nb-1))))
    (home-page "https://github.com/rust-embedded/nb")
    (synopsis "Minimal non-blocking I/O layer")
    (description "This package provides Minimal non-blocking I/O layer.")
    (license (list license:expat license:asl2.0))))

(define-public rust-nom-1
  (package
    (name "rust-nom")
    (version "1.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "nom" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1kjh42w67z1hh1dw3jrilgqrf54jk2xcvhw4rcdm4wclzmbc5f55"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-lazy-static" ,rust-lazy-static-0.2)
                       ("rust-regex" ,rust-regex-0.1))))
    (home-page "https://github.com/rust-bakery/nom")
    (synopsis "byte-oriented, zero-copy, parser combinators library")
    (description
     "This package provides a byte-oriented, zero-copy, parser combinators library.")
    (license license:expat)))

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

(define-public rust-openssl-src-300
  (package
    (name "rust-openssl-src")
    (version "300.5.1+3.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "openssl-src" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0ap411sii93yj2lw0sshfgn679k6cjg125y17c70135j6b430lkk"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1))))
    (home-page "https://github.com/alexcrichton/openssl-src-rs")
    (synopsis "Source of OpenSSL and logic to build it.")
    (description
     "This package provides Source of @code{OpenSSL} and logic to build it.")
    (license (list license:expat license:asl2.0))))

(define-public rust-pay-respects-parser-0.3
  (package
    (name "rust-pay-respects-parser")
    (version "0.3.9")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "pay-respects-parser" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0aww6qm0agzcx3g69bblkkhxz2gnbmvyk335jla0bayvhx6pczqy"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-serde" ,rust-serde-1.0.219)
                       ("rust-syn" ,rust-syn-2)
                       ("rust-toml" ,rust-toml-0.8))))
    (home-page "https://github.com/iffse/pay-respects")
    (synopsis "Compile time rule parser for the @code{pay-respects} CLI tool")
    (description "This package provides a compile time rule parser for the
 @code{pay-respects} CLI tool.")
    (license license:mpl2.0)))

(define-public rust-pay-respects-utils-0.1
  (package
    (name "rust-pay-respects-utils")
    (version "0.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "pay-respects-utils" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "191z4xjsdzn8k821071z4m8zl0jnd2r7j8ki2wpzdkdjha2g5mvn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-itertools" ,rust-itertools-0.14)
                       ("rust-regex-lite" ,rust-regex-lite-0.1))))
    (home-page "https://codeberg.org/iff/pay-respects")
    (synopsis "Utilities for the @code{pay-respects} CLI tool")
    (description
     "This package provides utilities for the @code{pay-respects} CLI tool.")
    (license license:mpl2.0)))

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
        (base32 "1da6xiz2prv716734grd0y287kibfy1h2hswn6j7wsqa0pn1fkaf"))))
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
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
       #:cargo-development-inputs (("rust-futures" ,rust-futures-0.3)
                                   ("rust-smol" ,rust-smol-1))))))

(define-public rust-pq-src-0.3
  (package
    (name "rust-pq-src")
    (version "0.3.9+libpq-17.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "pq-src" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0imswmcvhp67g9p7hid216zxani1vfbf90ivwhapsc8r3njq5vi4"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-openssl-sys" ,rust-openssl-sys-0.9))))
    (native-inputs (list pkg-config openssl))
    (home-page "https://github.com/sgrif/pq-sys")
    (synopsis "Bundled version of libpq")
    (description "This package provides Bundled version of libpq.")
    (license (list license:expat license:asl2.0))))

(define-public rust-prctl-1
  (package
    (name "rust-prctl")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "prctl" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0lkgnid3sjfbqf3sbcgyihlw80a6n9l6m0n23b7f5pm927qk96h5"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                       ("rust-nix" ,rust-nix-0.29))))
    (home-page "https://github.com/viraptor/prctl-rs")
    (synopsis "Safe abstraction to the linux prctl() interface")
    (description
     "This package provides a safe abstraction to the linux @code{prctl()}
interface.  Some functions may be architecture-specific.")
    (license license:expat)))

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
       (snippet '(begin
                   (substitute* "Cargo.toml"
                     (("\"=([[:digit:]]+(\\.[[:digit:]]+)*)" _ version)
                      (string-append "\"^" version)))))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-test-flags '("--release" "--"
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
       #:cargo-inputs (("rust-bit-set" ,rust-bit-set-0.5)
                       ("rust-bit-vec" ,rust-bit-vec-0.6)
                       ("rust-bitflags" ,rust-bitflags-2)
                       ("rust-lazy-static" ,rust-lazy-static-1)
                       ("rust-num-traits" ,rust-num-traits-0.2)
                       ("rust-rand" ,rust-rand-0.8)
                       ("rust-rand-chacha" ,rust-rand-chacha-0.3)
                       ("rust-rand-xorshift" ,rust-rand-xorshift-0.3)
                       ("rust-regex-syntax" ,rust-regex-syntax-0.8)
                       ("rust-rusty-fork" ,rust-rusty-fork-0.3)
                       ("rust-tempfile" ,rust-tempfile-3))
       #:cargo-development-inputs (("rust-regex" ,rust-regex-1))))
    (home-page "https://altsysrq.github.io/proptest-book/proptest/index.html")
    (synopsis "Hypothesis-like property-based testing and shrinking")
    (description
     "The @code{proptest} crate provides most of Proptest’s functionality,
including most strategies and the testing framework itself.")
    (license (list license:expat license:asl2.0))))

(define-public rust-ptr-meta-0.3
  (package
    (name "rust-ptr-meta")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "ptr_meta" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "147a6z4qz35gipj9k0d2yh4wygmibhaqsna59vs0d5izdpv7d7py"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-ptr-meta-derive" ,rust-ptr-meta-derive-0.3))))
    (home-page "https://github.com/rkyv/ptr_meta")
    (synopsis "radioactive stabilization of the ptr_meta rfc")
    (description
     "This package provides a radioactive stabilization of the ptr_meta rfc.")
    (license license:expat)))

(define-public rust-ptr-meta-derive-0.3
  (package
    (name "rust-ptr-meta-derive")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "ptr_meta_derive" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1l9jznaz85cchixyp07v6sxcvjadsyq6lmhjbh98sk0v2pdlwhfa"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/rkyv/ptr_meta")
    (synopsis "Proc macros for ptr_meta")
    (description "This package provides Proc macros for ptr_meta.")
    (license license:expat)))

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

(define-public rust-pulley-interpreter-35
  (package
    (name "rust-pulley-interpreter")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "pulley-interpreter" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "06wwx65w2s68c8hxlsabp9hrnricsf44gq4flfkc25kbg0cl775q"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-arbitrary" ,rust-arbitrary-1)
                       ("rust-cranelift-bitset" ,rust-cranelift-bitset-0.122)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-pulley-macros" ,rust-pulley-macros-35)
                       ("rust-wasmtime-internal-math" ,rust-wasmtime-internal-math-35))))
    (home-page "https://github.com/bytecodealliance/wasmtime/tree/main/pulley")
    (synopsis
     "The Pulley interpreter, its bytecode definition, encoder, decoder, and etc..")
    (description
     "This package provides The Pulley interpreter, its bytecode definition, encoder, decoder, and etc...")
    (license (list license:asl2.0))))

(define-public rust-pulley-interpreter-29
  (package
    (name "rust-pulley-interpreter")
    (version "29.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "pulley-interpreter" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0pg7rvnqkj47vz91zyqh0b1rvkw8m14jy64qhdqa4jfzfn2mznb2"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                       ("rust-cranelift-bitset" ,rust-cranelift-bitset-0.116)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-sptr" ,rust-sptr-0.3)
                       ("rust-wasmtime-math" ,rust-wasmtime-math-29))
       #:cargo-development-inputs (("rust-anyhow" ,rust-anyhow-1)
                                   ("rust-env-logger" ,rust-env-logger-0.11)
                                   ("rust-object" ,rust-object-0.36))))
    (home-page "https://github.com/bytecodealliance/wasmtime/tree/main/pulley")
    (synopsis
     "The Pulley interpreter, its bytecode definition, encoder, decoder, and etc..")
    (description
     "This package provides The Pulley interpreter, its bytecode definition, encoder, decoder, and etc...")
    (license license:asl2.0)))

(define-public rust-pulley-macros-35
  (package
    (name "rust-pulley-macros")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "pulley-macros" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0yk7dkr827vw9vgv2fh98kmsnscfrkpsh80d90x0rhhr0mll71ck"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page
     "https://github.com/bytecodealliance/wasmtime/tree/main/pulley/macros")
    (synopsis "Internal pulley macros")
    (description "This package provides Internal pulley macros.")
    (license (list license:asl2.0))))

(define-public rust-punycode-0.4
  (package
    (name "rust-punycode")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "punycode" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1zm5722qaz1zhxb5nxnisj009crrknjs9xv4vdp9z0yn42rxrqg9"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-clippy" ,rust-clippy-0.0.302))))
    (home-page "https://github.com/mcarton/rust-punycode.git")
    (synopsis "Functions to decode and encode Punycode")
    (description
     "This package provides functions to decode and encode Punycode.")
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
        (base32 "1slry2g2wrj38fnzj9ybzq9wjyknrfg25x5vzfpzn5b8kj2zrfhi"))))
    (arguments
     `(#:cargo-test-flags '("--" "--skip=sample_1_full" "--skip=sample_2_full")
       #:cargo-inputs (("rust-encoding-rs" ,rust-encoding-rs-0.8)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-serde" ,rust-serde-1))
       #:cargo-development-inputs (("rust-criterion" ,rust-criterion-0.3)
                                   ("rust-pretty-assertions" ,rust-pretty-assertions-1)
                                   ("rust-regex" ,rust-regex-1)
                                   ("rust-serde" ,rust-serde-1)
                                   ("rust-serde-value" ,rust-serde-value-0.7))))))

(define-public rust-r0-0.2
  (package
    (name "rust-r0")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "r0" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "07wl91ljvr8ca0d08j5d33fbv5p3v129f62lhrz5r3awn7sqv8z2"))))
    (build-system cargo-build-system)
    (arguments
     `( ;Tests fail.
        #:tests? #f))
    (home-page "https://github.com/rust-embedded/r0")
    (synopsis "Initialization code ('crt0') written in Rust")
    (description
     "This package provides Initialization code ('crt0') written in Rust.")
    (license (list license:expat license:asl2.0))))

(define-public rust-rancor-0.1
  (package
    (name "rust-rancor")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "rancor" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0iyr19x1aryadcyc2zwjbwmskkkjqfbvrjp4l37d3f9434bggxfa"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-ptr-meta" ,rust-ptr-meta-0.3))))
    (home-page "https://github.com/rkyv/rancor")
    (synopsis "Scalable and efficient error handling without type composition")
    (description
     "This package provides Scalable and efficient error handling without type composition.")
    (license license:expat)))

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
     `(#:cargo-inputs (("rust-ppv-lite86" ,rust-ppv-lite86-0.2)
                       ("rust-rand-core" ,rust-rand-core-0.9)
                       ("rust-serde" ,rust-serde-1))
       #:cargo-development-inputs (("rust-serde-json" ,rust-serde-json-1.0.141))))
    (home-page "https://crates.io/crates/rand_chacha")
    (synopsis "ChaCha random number generator")
    (description "This package provides the ChaCha random number generator.")
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
     `(#:cargo-inputs (("rust-getrandom" ,rust-getrandom-0.3)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://rust-random.github.io/book")
    (synopsis "Core random number generator traits and tools")
    (description
     "This package provides core random number generator traits and
tools for implementation.")
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
        (base32 "1xr04g5zrzqi9n7vyzjznnyrmy55i8k34ripsb2gmdxazzvw72ml"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-rand-core" ,rust-rand-core-0.9)
                       ("rust-serde" ,rust-serde-1))
       #:cargo-development-inputs (("rust-bincode" ,rust-bincode-1))))
    (home-page "https://crates.io/crates/rand_pcg")
    (synopsis "Selected PCG random number generators")
    (description
     "This package implements a selection of PCG random number generators.")
    (license (list license:asl2.0 license:expat))))

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

(define-public rust-redis-0.32
  (package
    (name "rust-redis")
    (version "0.32.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "redis" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1q9ymzsfarwgprlbmgk7hlhavapvxw0hw7nzphiklwy9rbs6pxp1"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-ahash" ,rust-ahash-0.8)
                       ("rust-arc-swap" ,rust-arc-swap-1)
                       ("rust-async-io" ,rust-async-io-2)
                       ("rust-async-native-tls" ,rust-async-native-tls-0.5)
                       ("rust-async-std" ,rust-async-std-1)
                       ("rust-backon" ,rust-backon-1)
                       ("rust-bb8" ,rust-bb8-0.9)
                       ("rust-bigdecimal" ,rust-bigdecimal-0.4)
                       ("rust-bytes" ,rust-bytes-1)
                       ("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-combine" ,rust-combine-4)
                       ("rust-crc16" ,rust-crc16-0.4)
                       ("rust-futures-channel" ,rust-futures-channel-0.3)
                       ("rust-futures-rustls" ,rust-futures-rustls-0.26)
                       ("rust-futures-sink" ,rust-futures-sink-0.3)
                       ("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-hashbrown" ,rust-hashbrown-0.15)
                       ("rust-itoa" ,rust-itoa-1)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-lru" ,rust-lru-0.16)
                       ("rust-native-tls" ,rust-native-tls-0.2)
                       ("rust-num-bigint" ,rust-num-bigint-0.4)
                       ("rust-percent-encoding" ,rust-percent-encoding-2)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                       ("rust-r2d2" ,rust-r2d2-0.8)
                       ("rust-rand" ,rust-rand-0.9)
                       ("rust-rust-decimal" ,rust-rust-decimal-1)
                       ("rust-rustls" ,rust-rustls-0.23)
                       ("rust-rustls-native-certs" ,rust-rustls-native-certs-0.8)
                       ("rust-ryu" ,rust-ryu-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1.0.141)
                       ("rust-sha1-smol" ,rust-sha1-smol-1)
                       ("rust-smol" ,rust-smol-2)
                       ("rust-smol-timeout" ,rust-smol-timeout-0.6)
                       ("rust-socket2" ,rust-socket2-0.6)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tokio-native-tls" ,rust-tokio-native-tls-0.3)
                       ("rust-tokio-rustls" ,rust-tokio-rustls-0.26)
                       ("rust-tokio-util" ,rust-tokio-util-0.7)
                       ("rust-url" ,rust-url-2)
                       ("rust-uuid" ,rust-uuid-1)
                       ("rust-webpki-roots" ,rust-webpki-roots-1))))
    (home-page "https://github.com/redis-rs/redis-rs")
    (synopsis "Redis driver for Rust")
    (description "This package provides Redis driver for Rust.")
    (license license:bsd-3)))

(define-public rust-redis-0.29
  (package
    (name "rust-redis")
    (version "0.29.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "redis" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0pv9aj8dlzs4q28nap6k7da4x4la0ikyzvyqck70hi7x28x2zi0v"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-ahash" ,rust-ahash-0.8)
                       ("rust-arc-swap" ,rust-arc-swap-1)
                       ("rust-async-native-tls" ,rust-async-native-tls-0.5)
                       ("rust-async-std" ,rust-async-std-1)
                       ("rust-backon" ,rust-backon-1)
                       ("rust-bb8" ,rust-bb8-0.9)
                       ("rust-bigdecimal" ,rust-bigdecimal-0.4)
                       ("rust-bytes" ,rust-bytes-1)
                       ("rust-combine" ,rust-combine-4)
                       ("rust-crc16" ,rust-crc16-0.4)
                       ("rust-futures-channel" ,rust-futures-channel-0.3)
                       ("rust-futures-rustls" ,rust-futures-rustls-0.26)
                       ("rust-futures-sink" ,rust-futures-sink-0.3)
                       ("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-hashbrown" ,rust-hashbrown-0.15)
                       ("rust-itoa" ,rust-itoa-1)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-lru" ,rust-lru-0.13)
                       ("rust-native-tls" ,rust-native-tls-0.2)
                       ("rust-num-bigint" ,rust-num-bigint-0.4)
                       ("rust-percent-encoding" ,rust-percent-encoding-2)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                       ("rust-r2d2" ,rust-r2d2-0.8)
                       ("rust-rand" ,rust-rand-0.9)
                       ("rust-rust-decimal" ,rust-rust-decimal-1)
                       ("rust-rustls" ,rust-rustls-0.23)
                       ("rust-rustls-native-certs" ,rust-rustls-native-certs-0.8)
                       ("rust-ryu" ,rust-ryu-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1.0.141)
                       ("rust-sha1-smol" ,rust-sha1-smol-1)
                       ("rust-socket2" ,rust-socket2-0.5)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tokio-native-tls" ,rust-tokio-native-tls-0.3)
                       ("rust-tokio-rustls" ,rust-tokio-rustls-0.26)
                       ("rust-tokio-util" ,rust-tokio-util-0.7)
                       ("rust-url" ,rust-url-2)
                       ("rust-uuid" ,rust-uuid-1)
                       ("rust-webpki-roots" ,rust-webpki-roots-0.26))
       #:cargo-development-inputs (("rust-anyhow" ,rust-anyhow-1)
                                   ("rust-assert-approx-eq" ,rust-assert-approx-eq-1)
                                   ("rust-criterion" ,rust-criterion-0.5)
                                   ("rust-fnv" ,rust-fnv-1)
                                   ("rust-futures" ,rust-futures-0.3)
                                   ("rust-futures-time" ,rust-futures-time-3)
                                   ("rust-once-cell" ,rust-once-cell-1)
                                   ("rust-partial-io" ,rust-partial-io-0.5)
                                   ("rust-quickcheck" ,rust-quickcheck-1)
                                   ("rust-rstest" ,rust-rstest-0.24)
                                   ("rust-tempfile" ,rust-tempfile-3)
                                   ("rust-tokio" ,rust-tokio-1))))
    (home-page "https://github.com/redis-rs/redis-rs")
    (synopsis "Redis driver for Rust")
    (description "This package provides Redis driver for Rust.")
    (license license:bsd-3)))

;; Broken.
(define-public rust-redox-users-0.5
  (package
    (name "rust-redox-users")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "redox_users" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0awxx66izdw6kz97r3zxrl5ms5f6dqi5l0f58mlsvlmx8wyrsvyx"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-getrandom" ,rust-getrandom-0.2)
                       ("rust-libredox" ,rust-libredox-0.1)
                       ("rust-rust-argon2" ,rust-rust-argon2-0.8)
                       ("rust-thiserror" ,rust-thiserror-2)
                       ("rust-zeroize" ,rust-zeroize-1))))
    (home-page "https://gitlab.redox-os.org/redox-os/users")
    (synopsis "Rust library to access Redox users and groups functionality")
    (description
     "This package provides a Rust library to access Redox users and groups
functionality.")
    (license license:expat)))

(define-public rust-regalloc2-0.12
  (package
    (name "rust-regalloc2")
    (version "0.12.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "regalloc2" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0d4pllvcg7m2l3j8rmbfhf63pdi6jf5gimg6r25ry572gn1v25jj"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-allocator-api2" ,rust-allocator-api2-0.2)
                       ("rust-bumpalo" ,rust-bumpalo-3)
                       ("rust-hashbrown" ,rust-hashbrown-0.15)
                       ("rust-libfuzzer-sys" ,rust-libfuzzer-sys-0.4)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-rustc-hash" ,rust-rustc-hash-2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-smallvec" ,rust-smallvec-1))))
    (home-page "https://github.com/bytecodealliance/regalloc2")
    (synopsis "Backtracking register allocator inspired from IonMonkey")
    (description
     "This package provides Backtracking register allocator inspired from @code{IonMonkey}.")
    (license (list license:asl2.0))))

(define-public rust-regalloc2-0.11
  (package
    (name "rust-regalloc2")
    (version "0.11.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "regalloc2" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "16k30jbh1ag5vb4l6p43jik1dzq8pymjbiwblkj189hl32ryc1nw"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-allocator-api2" ,rust-allocator-api2-0.2)
                       ("rust-bumpalo" ,rust-bumpalo-3)
                       ("rust-hashbrown" ,rust-hashbrown-0.15)
                       ("rust-libfuzzer-sys" ,rust-libfuzzer-sys-0.4)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-rustc-hash" ,rust-rustc-hash-2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-smallvec" ,rust-smallvec-1))))
    (home-page "https://github.com/bytecodealliance/regalloc2")
    (synopsis "Backtracking register allocator inspired from IonMonkey")
    (description
     "This package provides Backtracking register allocator inspired from @code{IonMonkey}.")
    (license license:asl2.0)))

(define-public rust-rend-0.5
  (package
    (name "rust-rend")
    (version "0.5.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "rend" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "05gjxzzsajl61sgif4h0lvagmbry5rm2xak6782j3lccy9mqlpm3"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-bytecheck" ,rust-bytecheck-0.8)
                       ("rust-bytemuck" ,rust-bytemuck-1)
                       ("rust-zerocopy" ,rust-zerocopy-0.8)
                       ("rust-zerocopy-derive" ,rust-zerocopy-derive-0.8))))
    (home-page "https://github.com/djkoloski/rend")
    (synopsis "Cross-platform, endian-aware primitives for Rust")
    (description
     "This package provides Cross-platform, endian-aware primitives for Rust.")
    (license license:expat)))

(define-public rust-rkyv-0.8
  (package
    (name "rust-rkyv")
    (version "0.8.10")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "rkyv" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0rbvkcm1ia5rafajf9hlqcw882slm123jj6vzkif2lsmqxqp650y"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-arrayvec" ,rust-arrayvec-0.7)
                       ("rust-bytecheck" ,rust-bytecheck-0.8)
                       ("rust-bytes" ,rust-bytes-1)
                       ("rust-hashbrown" ,rust-hashbrown-0.14)
                       ("rust-hashbrown" ,rust-hashbrown-0.15)
                       ("rust-indexmap" ,rust-indexmap-2)
                       ("rust-munge" ,rust-munge-0.4)
                       ("rust-ptr-meta" ,rust-ptr-meta-0.3)
                       ("rust-rancor" ,rust-rancor-0.1)
                       ("rust-rend" ,rust-rend-0.5)
                       ("rust-rkyv-derive" ,rust-rkyv-derive-0.8)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-smol-str" ,rust-smol-str-0.3)
                       ("rust-smol-str" ,rust-smol-str-0.2)
                       ("rust-thin-vec" ,rust-thin-vec-0.2)
                       ("rust-tinyvec" ,rust-tinyvec-1)
                       ("rust-triomphe" ,rust-triomphe-0.1)
                       ("rust-uuid" ,rust-uuid-1))
       #:cargo-development-inputs (("rust-ahash" ,rust-ahash-0.8)
                                   ("rust-divan" ,rust-divan-0.1)
                                   ("rust-rustversion" ,rust-rustversion-1)
                                   ("rust-trybuild" ,rust-trybuild-1))))
    (home-page "https://github.com/rkyv/rkyv")
    (synopsis "Zero-copy deserialization framework for Rust")
    (description
     "This package provides Zero-copy deserialization framework for Rust.")
    (license license:expat)))

(define-public rust-rkyv-derive-0.8
  (package
    (name "rust-rkyv-derive")
    (version "0.8.10")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "rkyv_derive" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0ymv3al6d3qza3lpqdhp7v2lclkdxzl05f14s5swdxls32n40sr4"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/rkyv/rkyv")
    (synopsis "Derive macro for rkyv")
    (description "This package provides Derive macro for rkyv.")
    (license license:expat)))

(define-public rust-rstest-0.24
  (package
    (name "rust-rstest")
    (version "0.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "rstest" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "12fd0cnd49n6dnlmygca97lkakvc9czs1hqy7khr7aq5d0lhbs83"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-futures-timer" ,rust-futures-timer-3)
                       ("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-rstest-macros" ,rust-rstest-macros-0.24)
                       ("rust-rustc-version" ,rust-rustc-version-0.4))
       #:cargo-development-inputs (("rust-actix-rt" ,rust-actix-rt-2)
                                   ("rust-async-std" ,rust-async-std-1)
                                   ("rust-lazy-static" ,rust-lazy-static-1)
                                   ("rust-pretty-assertions" ,rust-pretty-assertions-1)
                                   ("rust-rstest" ,rust-rstest-0.23)
                                   ("rust-temp-testdir" ,rust-temp-testdir-0.2)
                                   ("rust-tokio" ,rust-tokio-1)
                                   ("rust-unindent" ,rust-unindent-0.2))))
    (home-page "https://github.com/la10736/rstest")
    (synopsis "Rust fixture based test framework. It use procedural macro
to implement fixtures and table based tests.")
    (description
     "This package provides Rust fixture based test framework.  It use procedural macro to implement
fixtures and table based tests.")
    (license (list license:expat license:asl2.0))))

(define-public rust-rtos-trace-0.1
  (package
    (name "rust-rtos-trace")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "rtos-trace" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "15w0zcqnb9vakisvkscdy0vjm6y4wsi2y4br76dh9wkl6gnbrdnd"))))
    (build-system cargo-build-system)
    (home-page "https://bern-rtos.org")
    (synopsis "RTOS tracing trait")
    (description "This package provides RTOS tracing trait.")
    (license license:expat)))

(define-public rust-rusb-0.8
  (package
    (name "rust-rusb")
    (version "0.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "rusb" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1b80icrc7amkg1mz1cwi4hprslfcw1g3w2vm3ixyfnyc5130i9fr"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                       ("rust-libusb1-sys" ,rust-libusb1-sys-0.5))
       #:cargo-development-inputs (("rust-regex" ,rust-regex-1))))
    (home-page "https://github.com/a1ien/rusb")
    (synopsis "Rust library for accessing USB devices")
    (description "This package provides a library for accessing USB devices.")
    (license license:expat)))

(define-public rust-rust-decimal-1
  (package
    (name "rust-rust-decimal")
    (version "1.37.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "rust_decimal" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0p83j981r1y8s8k6c11j26gyflfar93kqbf4344kx800am1ac0xj"))))
    (build-system cargo-build-system)
    (arguments
     `( ;Tests fail.
        #:tests? #f
       #:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                       ("rust-arrayvec" ,rust-arrayvec-0.7)
                       ("rust-borsh" ,rust-borsh-1)
                       ("rust-bytes" ,rust-bytes-1)
                       ("rust-criterion" ,rust-criterion-0.5)
                       ("rust-diesel" ,rust-diesel-2)
                       ("rust-ndarray" ,rust-ndarray-0.15)
                       ("rust-num-traits" ,rust-num-traits-0.2)
                       ("rust-postgres" ,rust-postgres-0.19)
                       ("rust-postgres-types" ,rust-postgres-types-0.2)
                       ("rust-proptest" ,rust-proptest-1)
                       ("rust-rand" ,rust-rand-0.8)
                       ("rust-rand" ,rust-rand-0.9)
                       ("rust-rkyv" ,rust-rkyv-0.8)
                       ("rust-rocket" ,rust-rocket-0.5)
                       ("rust-rust-decimal-macros" ,rust-rust-decimal-macros-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1.0.141)
                       ("rust-tokio-postgres" ,rust-tokio-postgres-0.7)
                       ("rust-version-sync" ,rust-version-sync-0.9))))
    (home-page "https://github.com/paupino/rust-decimal")
    (synopsis
     "Decimal number implementation written in pure Rust suitable for financial and fixed-precision calculations")
    (description
     "This package provides Decimal number implementation written in pure Rust suitable for financial and
fixed-precision calculations.")
    (license license:expat)))

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
    (synopsis "A better and simple i18n crate")
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
                       ("rust-serde-json" ,rust-serde-json-1.0.141)
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
                       ("rust-serde-json" ,rust-serde-json-1.0.141)
                       ("rust-serde-yml" ,rust-serde-yml-0.0.12)
                       ("rust-siphasher" ,rust-siphasher-1)
                       ("rust-toml" ,rust-toml-0.8)
                       ("rust-triomphe" ,rust-triomphe-0.1))))
    (home-page "https://github.com/longbridge/rust-i18n")
    (synopsis "Support for @code{rust-rust-i18n} crate")
    (description "Support for @code{rust-rust-i18n} crate.")
    (license license:expat)))

(define-public rust-rustix-linux-procfs-0.1
  (package
    (name "rust-rustix-linux-procfs")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "rustix-linux-procfs" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0mi0w4zgw263gaf2ss5a2qg38hcqvh979wjqqzrc85max7vlpj1g"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-once-cell" ,rust-once-cell-1)
                       ("rust-rustix" ,rust-rustix-1))))
    (home-page "https://github.com/sunfishcode/rustix-linux-procfs")
    (synopsis "Utilities for opening Linux procfs files and directories")
    (description
     "This package provides Utilities for opening Linux procfs files and directories.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-scoped-env-2
  (package
    (name "rust-scoped-env")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "scoped-env" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "09n0q6v9plj1s3vmd8s3nh8wclcwirayrx0bnwdswn4hinkkhqx8"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/Nokel81/scoped-env")
    (synopsis "lifetime scoped env variable setting")
    (description
     "This package provides a lifetime scoped env variable setting.")
    (license license:expat)))

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
    (description "This package provides the macros 1.1 implementation of
@code{#[derive(Serialize, Deserialize)]}.")
    (license (list license:expat license:asl2.0))))

(define-public rust-serde-json-1.0.141
  (package
    (name "rust-serde-json")
    (version "1.0.141")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "serde_json" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1lq39h6lmkib00r4xipg26npl22pmkcy2r7cqqb84wdy3vrfzf9h"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-automod" ,rust-automod-1)
                       ("rust-indexmap" ,rust-indexmap-2)
                       ("rust-indoc" ,rust-indoc-2)
                       ("rust-itoa" ,rust-itoa-1)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-ryu" ,rust-ryu-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-stacker" ,rust-serde-stacker-0.1))))
    (home-page "https://github.com/serde-rs/json")
    (synopsis "JSON serialization file format")
    (description "This package provides a JSON serialization file format.")
    (license (list license:expat license:asl2.0))))

(define-public rust-serde-spanned-0.6.9
  (package
    (name "rust-serde-spanned")
    (version "0.6.9")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "serde_spanned" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "18vmxq6qfrm110caszxrzibjhy2s54n1g5w1bshxq9kjmz7y0hdz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:tests? #f ;unresolved import `toml`
       #:cargo-inputs (("rust-serde" ,rust-serde-1))
       #:cargo-development-inputs (("rust-serde" ,rust-serde-1)
                                   ("rust-serde-derive" ,rust-serde-derive-1)
                                   ("rust-serde-untagged" ,rust-serde-untagged-0.1))))
    (home-page "https://github.com/toml-rs/toml")
    (synopsis "Encoder and decoder of TOML-formatted files and streams")
    (description
     "This package provides a native Rust encoder and decoder of
TOML-formatted files and streams.  Provides implementations of the standard
Serialize/Deserialize traits for TOML data to facilitate deserializing and
serializing Rust structures.")
    (license (list license:expat license:asl2.0))))

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
    (synopsis "Work with YAML using the Serde serialization framework")
    (description
     "This package provides a robust library that simplifies the
serialization and deserialization of Rust data structures to and
from YAML format using the widely-used Serde framework.")
    (license (list license:expat license:asl2.0))))

(define-public rust-similar-2.7
  (package
    (name "rust-similar")
    (version "2.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "similar" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1aidids7ymfr96s70232s6962v5g9l4zwhkvcjp4c5hlb6b5vfxv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-unicode-segmentation" ,rust-unicode-segmentation-1)
                       ("rust-web-time" ,rust-web-time-1))
       #:cargo-development-inputs (("rust-console" ,rust-console-0.15)
                                   ("rust-insta" ,rust-insta-1)
                                   ("rust-serde-json" ,rust-serde-json-1.0.141))))
    (home-page "https://github.com/mitsuhiko/similar")
    (synopsis "diff library for Rust")
    (description "This package provides a diff library for Rust.")
    (license license:asl2.0)))

(define-public rust-similar-asserts-1.7
  (package
    (inherit rust-similar-asserts-1)
    (name "rust-similar-asserts")
    (version "1.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "similar-asserts" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "16pb45hmcl5hx3xc4bb48gzhr8q35zc2p8j7i1836zl15jb43d5m"))))))

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
                       ("rust-serde-json" ,rust-serde-json-1.0.141))))
    (home-page "https://docs.rs/siphasher")
    (synopsis "SipHash-2-4, SipHash-1-3 and 128-bit variants in pure Rust")
    (description "This package provides SipHash-2-4, SipHash-1-3 and 128-bit
variants in pure Rust.")
    (license (list license:expat license:asl2.0))))

(define-public rust-smol-timeout-0.6
  (package
    (name "rust-smol-timeout")
    (version "0.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "smol-timeout" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "07ygn2h0zdfldc6hqyzdymfsfa0djbc51lc0m9qvk35rfh2q6nbq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-async-io" ,rust-async-io-2)
                       ("rust-futures-lite" ,rust-futures-lite-2.6)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2))))
    (home-page "https://github.com/r3v2d0g/smol-timeout")
    (synopsis "way to poll a future until it or a timer completes.")
    (description
     "This package provides a way to poll a future until it or a timer completes.")
    (license license:mpl2.0)))

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
        (base32 "0ss3nd9ky0fkq7idj7jzr22kvkhxz3ylrq9fmiq5sdg3h52zrp4n"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anstream" ,rust-anstream-0.6)
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
                       ("rust-serde-json" ,rust-serde-json-1.0.141)
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

(define-public rust-socket2-0.6
  (package
    (name "rust-socket2")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "socket2" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "01qqdzfnr0bvdwq6wl56c9c4m2cvbxn43dfpcv8gjx208sph8d93"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                       ("rust-windows-sys" ,rust-windows-sys-0.59))))
    (home-page "https://github.com/rust-lang/socket2")
    (synopsis
     "Utilities for handling networking sockets with a maximal amount of configuration
possible intended.")
    (description
     "This package provides Utilities for handling networking sockets with a maximal amount of configuration
possible intended.")
    (license (list license:expat license:asl2.0))))

(define-public rust-souper-ir-2
  (package
    (name "rust-souper-ir")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "souper-ir" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0i60q84w5k3rd0j3zhsdc5xasrd4wrkamyrs01rik3lq6g71h355"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-id-arena" ,rust-id-arena-2))))
    (home-page "https://github.com/fitzgen/souper-ir")
    (synopsis "library for manipulating Souper IR")
    (description "This package provides a library for manipulating Souper IR.")
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
     `(#:tests? #f ;TODO: figure out why tests are failing
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-libssh2-sys" ,rust-libssh2-sys-0.3)
                       ("rust-parking-lot" ,rust-parking-lot-0.12))))
    (native-inputs (list pkg-config))
    (inputs (list zlib libgit2-1.8 libssh2 openssl))
    (home-page "https://github.com/alexcrichton/ssh2-rs")
    (synopsis "Bindings for libssh2 for interacting with SSH servers")
    (description
     "This package provides bindings for libssh2 for interacting with SSH
servers and executing remote commands, forwarding local ports, etc.")
    (license (list license:expat license:asl2.0))))

(define-public rust-stm32f30x-0.8
  (package
    (name "rust-stm32f30x")
    (version "0.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "stm32f30x" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "17sbnjyy4ywdv0lhmcgd86cl0316fgpxfzrgv30g1b2h1pzl32kn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-bare-metal" ,rust-bare-metal-0.2)
                       ("rust-cortex-m" ,rust-cortex-m-0.5)
                       ("rust-cortex-m-rt" ,rust-cortex-m-rt-0.6)
                       ("rust-vcell" ,rust-vcell-0.1))))
    (home-page "https://github.com/japaric/stm32f30x")
    (synopsis "Peripheral access API for STM32F30X microcontrollers")
    (description
     "This package provides Peripheral access API for STM32F30X microcontrollers.")
    (license (list license:expat license:asl2.0))))

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
     `(#:cargo-inputs (("rust-vte" ,rust-vte-0.14))
       #:cargo-development-inputs (("rust-doc-comment" ,rust-doc-comment-0.3))))
    (home-page "https://github.com/luser/strip-ansi-escapes")
    (synopsis "Strip ANSI escape sequences from byte streams")
    (description
     "This package provides Strip ANSI escape sequences from byte streams.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-structure-0.1
  (package
    (name "rust-structure")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "structure" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0ngss4aylxg0pjwj8x5pv159hvh92ldikn8lic0mp4zqkkmrldx8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-byteorder" ,rust-byteorder-1)
                       ("rust-proc-macro-hack" ,rust-proc-macro-hack-0.4)
                       ("rust-structure-macro-impl" ,rust-structure-macro-impl-0.1))))
    (home-page "https://github.com/liranringel/structure")
    (synopsis
     "Use format strings to create strongly-typed data pack/unpack interfaces")
    (description
     "This package provides format strings used to create strongly-typed data
pack/unpack interfaces.")
    (license (list license:expat license:asl2.0))))

(define-public rust-structure-macro-impl-0.1
  (package
    (name "rust-structure-macro-impl")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "structure-macro-impl" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1jksyxhp7z83rxm6x427pps8f03hgymzz3v8g1cbpj194jgm5h70"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-proc-macro-hack" ,rust-proc-macro-hack-0.4)
                       ("rust-quote" ,rust-quote-0.3))))
    (home-page "https://github.com/liranringel/structure")
    (synopsis "Procedural macro crate for the structure crate")
    (description
     "This package provides Procedural macros @code{rust-structure} crate.")
    (license (list license:expat license:asl2.0))))

(define-public rust-system-interface-0.27
  (package
    (name "rust-system-interface")
    (version "0.27.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "system-interface" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0ic7qxkgxh8hbphcawcz2xdnb5lmlirkhj4158f5466ffkv94ifc"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-async-std" ,rust-async-std-1)
                       ("rust-bitflags" ,rust-bitflags-2)
                       ("rust-cap-async-std" ,rust-cap-async-std-3)
                       ("rust-cap-fs-ext" ,rust-cap-fs-ext-3)
                       ("rust-cap-std" ,rust-cap-std-3)
                       ("rust-cap-tempfile" ,rust-cap-tempfile-3)
                       ("rust-char-device" ,rust-char-device-0.16)
                       ("rust-fd-lock" ,rust-fd-lock-4)
                       ("rust-io-lifetimes" ,rust-io-lifetimes-2)
                       ("rust-os-pipe" ,rust-os-pipe-1)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-socketpair" ,rust-socketpair-0.19)
                       ("rust-ssh2" ,rust-ssh2-0.9)
                       ("rust-windows-sys" ,rust-windows-sys-0.59)
                       ("rust-winx" ,rust-winx-0.36))))
    (home-page "https://github.com/bytecodealliance/system-interface")
    (synopsis "Extensions to the Rust standard library")
    (description
     "This package provides Extensions to the Rust standard library.")
    (license (list license:asl2.0 license:asl2.0 license:expat))))

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
        (base32 "11a2pprf5j7ypjfyki8hal4604qaf6gx3ggdzzj7ina1j062hxvd"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-atty" ,rust-atty-0.2)
                       ("rust-bytecount" ,rust-bytecount-0.6)
                       ("rust-handlebars" ,rust-handlebars-4)
                       ("rust-os-pipe" ,rust-os-pipe-1)
                       ("rust-portable-pty" ,rust-portable-pty-0.7)
                       ("rust-pretty-assertions" ,rust-pretty-assertions-1)
                       ("rust-quick-xml" ,rust-quick-xml-0.23)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-termcolor" ,rust-termcolor-1)
                       ("rust-unicode-width" ,rust-unicode-width-0.1))
       #:cargo-development-inputs (("rust-anyhow" ,rust-anyhow-1)
                                   ("rust-assert-matches" ,rust-assert-matches-1)
                                   ("rust-doc-comment" ,rust-doc-comment-0.3)
                                   ("rust-version-sync" ,rust-version-sync-0.9))))
    (home-page "https://github.com/slowli/term-transcript")
    (synopsis "Snapshotting and snapshot testing for CLI / REPL applications")
    (description "This package provides snapshotting and snapshot testing for
CLI / REPL applications.")
    (license (list license:expat license:asl2.0))))

(define-public rust-thiserror-2
  (package
    (name "rust-thiserror")
    (version "2.0.12")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "thiserror" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "024791nsc0np63g2pq30cjf9acj38z3jwx9apvvi8qsqmqnqlysn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-thiserror-impl" ,rust-thiserror-impl-2))))
    (home-page "https://github.com/dtolnay/thiserror")
    (synopsis "derive(Error)")
    (description "This package provides derive(Error).")
    (license (list license:expat license:asl2.0))))

(define-public rust-thiserror-impl-2
  (package
    (name "rust-thiserror-impl")
    (version "2.0.12")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "thiserror-impl" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "07bsn7shydaidvyyrm7jz29vp78vrxr9cr9044rfmn078lmz8z3z"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/dtolnay/thiserror")
    (synopsis "Implementation detail of the `thiserror` crate")
    (description
     "This package provides Implementation detail of the `thiserror` crate.")
    (license (list license:expat license:asl2.0))))

(define-public rust-toml-0.8.23
  (package
    (name "rust-toml")
    (version "0.8.23")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "toml" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0qnkrq4lm2sdhp3l6cb6f26i8zbnhqb7mhbmksd550wxdfcyn6yw"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-indexmap" ,rust-indexmap-2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-spanned" ,rust-serde-spanned-0.6.9)
                       ("rust-toml-datetime" ,rust-toml-datetime-0.6.11)
                       ("rust-toml-edit" ,rust-toml-edit-0.22.27))
       #:cargo-development-inputs (("rust-serde" ,rust-serde-1)
                                   ("rust-serde-json" ,rust-serde-json-1.0.141)
                                   ("rust-snapbox" ,rust-snapbox-0.6)
                                   ("rust-toml-test-data" ,rust-toml-test-data-2)
                                   ("rust-toml-test-harness" ,rust-toml-test-harness-1)
                                   ("rust-walkdir" ,rust-walkdir-2))))
    (home-page "https://github.com/toml-rs/toml")
    (synopsis
     "native Rust encoder and decoder of TOML-formatted files and streams. Provides
implementations of the standard Serialize/Deserialize traits for TOML data to
facilitate deserializing and serializing Rust structures.")
    (description
     "This package provides a native Rust encoder and decoder of TOML-formatted files
and streams.  Provides implementations of the standard Serialize/Deserialize
traits for TOML data to facilitate deserializing and serializing Rust
structures.")
    (license (list license:expat license:asl2.0))))

(define-public rust-toml-datetime-0.6.11
  (package
    (name "rust-toml-datetime")
    (version "0.6.11")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "toml_datetime" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "077ix2hb1dcya49hmi1avalwbixmrs75zgzb3b2i7g2gizwdmk92"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/toml-rs/toml")
    (synopsis "TOML-compatible datetime type")
    (description
     "This package provides a TOML-compatible datetime type for Rust.")
    ;; The user can choose either license.
    (license (list license:expat license:asl2.0))))

(define-public rust-toml-edit-0.22.27
  (package
    (name "rust-toml-edit")
    (version "0.22.27")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "toml_edit" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "16l15xm40404asih8vyjvnka9g0xs9i4hfb6ry3ph9g419k8rzj1"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-indexmap" ,rust-indexmap-2)
                       ("rust-kstring" ,rust-kstring-2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-spanned" ,rust-serde-spanned-0.6)
                       ("rust-toml-datetime" ,rust-toml-datetime-0.6)
                       ("rust-toml-write" ,rust-toml-write-0.1)
                       ("rust-winnow" ,rust-winnow-0.7))
       #:cargo-development-inputs (("rust-libtest-mimic" ,rust-libtest-mimic-0.7)
                                   ("rust-proptest" ,rust-proptest-1)
                                   ("rust-serde-json" ,rust-serde-json-1.0.141)
                                   ("rust-snapbox" ,rust-snapbox-0.6)
                                   ("rust-toml-test-data" ,rust-toml-test-data-1)
                                   ("rust-toml-test-harness" ,rust-toml-test-harness-0.4))))
    (home-page "https://github.com/toml-rs/toml")
    (synopsis "Yet another format-preserving TOML parser")
    (description "This package provides yet another format-preserving TOML
parser.")
    (license (list license:expat license:asl2.0))))

(define-public rust-toml-test-data-2
  (package
    (name "rust-toml-test-data")
    (version "2.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "toml-test-data" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1fhqxcchfav2rvnxwncwvf8maib9bs1bc9wr0krrzzrabfp76z93"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-include-dir" ,rust-include-dir-0.7))))
    (home-page "https://github.com/epage/toml-test-rs")
    (synopsis "TOML test cases")
    (description "This package provides TOML test cases.")
    (license (list license:expat license:asl2.0))))

(define-public rust-toml-test-harness-1
  (package
    (name "rust-toml-test-harness")
    (version "1.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "toml-test-harness" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1wzxqp7zkmnvmb6m0ypg564crj5f66hxky19lrwm38l29xnknq56"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-ignore" ,rust-ignore-0.4)
                       ("rust-libtest-mimic" ,rust-libtest-mimic-0.7)
                       ("rust-snapbox" ,rust-snapbox-0.6)
                       ("rust-toml-test" ,rust-toml-test-2)
                       ("rust-toml-test-data" ,rust-toml-test-data-2))))
    (home-page "https://github.com/epage/toml-test-rs")
    (synopsis "Cargo test harness for verifying TOML parsers")
    (description
     "This package provides Cargo test harness for verifying TOML parsers.")
    (license (list license:expat license:asl2.0))))

(define-public rust-toml-write-0.1
  (package
    (name "rust-toml-write")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "toml_write" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "008qlhqlqvljp1gpp9rn5cqs74gwvdgbvs92wnpq8y3jlz4zi6ax"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-development-inputs (("rust-proptest" ,rust-proptest-1)
                                   ("rust-snapbox" ,rust-snapbox-0.6)
                                   ("rust-toml" ,rust-toml-0.5))))
    (home-page "https://github.com/toml-rs/toml")
    (synopsis "low-level interface for writing out TOML")
    (description
     "This package provides a low-level interface for writing out TOML.")
    (license (list license:expat license:asl2.0))))

(define-public rust-trait-variant-0.1
  (package
    (name "rust-trait-variant")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "trait-variant" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "19vpbnbcsxdiznwdw854pd0vya7rm7v7hnl3nh741621603pg5vh"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2)
                       ("rust-tokio" ,rust-tokio-1))))
    (home-page "https://github.com/rust-lang/impl-trait-utils")
    (synopsis "Utilities for working with impl traits in Rust")
    (description
     "This package provides Utilities for working with impl traits in Rust.")
    (license (list license:expat license:asl2.0))))

(define-public rust-tree-sitter-0.25
  (package
    (name "rust-tree-sitter")
    (version "0.25.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1w7rx91039kgms5m6ka2qknrfl3ac7634wb53yjzq2xz7ka1ikx7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-bindgen" ,rust-bindgen-0.71)
                       ("rust-cc" ,rust-cc-1.2.30)
                       ("rust-regex" ,rust-regex-1)
                       ("rust-regex-syntax" ,rust-regex-syntax-0.8)
                       ("rust-serde-json" ,rust-serde-json-1.0.141)
                       ("rust-streaming-iterator" ,rust-streaming-iterator-0.1)
                       ("rust-tree-sitter-language" ,rust-tree-sitter-language-0.1)
                       ("rust-wasmtime-c-api-impl" ,rust-wasmtime-c-api-impl-29))))
    (home-page "https://tree-sitter.github.io/tree-sitter")
    (synopsis "Rust bindings to the Tree-sitter parsing library")
    (description
     "This package provides Rust bindings to the Tree-sitter parsing library.")
    (license license:expat)))

(define-public rust-tree-sitter-0.24
  (package
    (name "rust-tree-sitter")
    (version "0.24.7")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0xbg9i3kvz316mhwciq147b7kzxqmbvwcl1bw7dd5izzlzzpsf55"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-bindgen" ,rust-bindgen-0.70)
                       ("rust-cc" ,rust-cc-1)
                       ("rust-regex" ,rust-regex-1)
                       ("rust-regex-syntax" ,rust-regex-syntax-0.8)
                       ("rust-streaming-iterator" ,rust-streaming-iterator-0.1)
                       ("rust-tree-sitter-language" ,rust-tree-sitter-language-0.1)
                       ("rust-wasmtime-c-api-impl" ,rust-wasmtime-c-api-impl-25))))
    (home-page "https://tree-sitter.github.io/tree-sitter")
    (synopsis "Rust bindings to the Tree-sitter parsing library")
    (description
     "This package provides Rust bindings to the Tree-sitter parsing library.")
    (license license:expat)))

(define-public rust-tree-sitter-0.23
  (package
    (name "rust-tree-sitter")
    (version "0.23.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1jn57vzsplng4ldjfyl626d1q662xl4ydmn1bibn7pdnlc1dy0q2"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-bindgen" ,rust-bindgen-0.70)
                       ("rust-cc" ,rust-cc-1)
                       ("rust-regex" ,rust-regex-1)
                       ("rust-regex-syntax" ,rust-regex-syntax-0.8)
                       ("rust-tree-sitter-language" ,rust-tree-sitter-language-0.1)
                       ("rust-wasmtime-c-api-impl" ,rust-wasmtime-c-api-impl-24))))
    (home-page "https://tree-sitter.github.io/tree-sitter")
    (synopsis "Rust bindings to the Tree-sitter parsing library")
    (description
     "This package provides Rust bindings to the Tree-sitter parsing library.")
    (license license:expat)))

(define-public rust-tree-sitter-bash-0.25
  (package
    (name "rust-tree-sitter-bash")
    (version "0.25.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-bash" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "19nqdv5x8rcq74mx2h9ivjzsxq2nf06ipp7b6w98msb7wq30c6w7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-tree-sitter-language" ,rust-tree-sitter-language-0.1))
       #:cargo-development-inputs (("rust-tree-sitter" ,rust-tree-sitter-0.25))))
    (home-page "https://github.com/tree-sitter/tree-sitter-bash")
    (synopsis "Bash grammar for tree-sitter")
    (description "This package provides Bash grammar for tree-sitter.")
    (license license:expat)))

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

(define-public rust-tree-sitter-c-0.24
  (package
    (name "rust-tree-sitter-c")
    (version "0.24.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-c" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "01r7f8fcls4dalhlrm4jqi473fyja9sib5l5zrckl219067ssfhs"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-tree-sitter-language" ,rust-tree-sitter-language-0.1))
       #:cargo-development-inputs (("rust-tree-sitter" ,rust-tree-sitter-0.25))))
    (home-page "https://github.com/tree-sitter/tree-sitter-c")
    (synopsis "C grammar for tree-sitter")
    (description "This package provides C grammar for tree-sitter.")
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

(define-public rust-tree-sitter-c-sharp-0.23
  (package
    (name "rust-tree-sitter-c-sharp")
    (version "0.23.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-c-sharp" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1c7w6wvjc54k6kh0qrlspm9ksr4y10aq4fv6b0bkaibvrb66mw37"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-tree-sitter-language" ,rust-tree-sitter-language-0.1))
       #:cargo-development-inputs (("rust-tree-sitter" ,rust-tree-sitter-0.24))))
    (home-page "https://github.com/tree-sitter/tree-sitter-c-sharp")
    (synopsis "C# grammar for tree-sitter")
    (description "This package provides C# grammar for tree-sitter.")
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

(define-public rust-tree-sitter-cpp-0.23
  (package
    (name "rust-tree-sitter-cpp")
    (version "0.23.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-cpp" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0hs7p45av437iw8rzsyw46qs06axbam7wadr655apd27kpm9c8fz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-tree-sitter-language" ,rust-tree-sitter-language-0.1))
       #:cargo-development-inputs (("rust-tree-sitter" ,rust-tree-sitter-0.24))))
    (home-page "https://github.com/tree-sitter/tree-sitter-cpp")
    (synopsis "C++ grammar for tree-sitter")
    (description "This package provides C++ grammar for tree-sitter.")
    (license license:expat)))

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

(define-public rust-tree-sitter-elixir-0.3
  (package
    (name "rust-tree-sitter-elixir")
    (version "0.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-elixir" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0grdkbx6bqw3s1w3mkk94sibmhgdicdlqirjzpc57zdl8x348pg4"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-tree-sitter-language" ,rust-tree-sitter-language-0.1))
       #:cargo-development-inputs (("rust-tree-sitter" ,rust-tree-sitter-0.23))))
    (home-page "https://github.com/elixir-lang/tree-sitter-elixir")
    (synopsis "Elixir grammar for the tree-sitter parsing library")
    (description
     "This package provides Elixir grammar for the tree-sitter parsing library.")
    (license license:asl2.0)))

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
    (description "This package provides a Elixir grammar for tree-sitter.")
    (license license:asl2.0)))

(define-public rust-tree-sitter-go-0.23
  (package
    (name "rust-tree-sitter-go")
    (version "0.23.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-go" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0cc4w4p12inxpsn2hgpmbvw1nyf5cm0l9pa705hbw3928milfgdi"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-tree-sitter-language" ,rust-tree-sitter-language-0.1))
       #:cargo-development-inputs (("rust-tree-sitter" ,rust-tree-sitter-0.24))))
    (home-page "https://github.com/tree-sitter/tree-sitter-go")
    (synopsis "Go grammar for tree-sitter")
    (description "This package provides Go grammar for tree-sitter.")
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

(define-public rust-tree-sitter-haskell-0.23
  (package
    (name "rust-tree-sitter-haskell")
    (version "0.23.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-haskell" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "19057d99kaq7bn8k86baf7v4q4mjv8p5mjr7zh9vm32l0kjm2z4p"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-tree-sitter-language" ,rust-tree-sitter-language-0.1))
       #:cargo-development-inputs (("rust-tree-sitter" ,rust-tree-sitter-0.23))))
    (home-page "https://github.com/tree-sitter/tree-sitter-haskell")
    (synopsis "Haskell grammar for tree-sitter")
    (description "This package provides Haskell grammar for tree-sitter.")
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

(define-public rust-tree-sitter-highlight-0.25
  (package
    (name "rust-tree-sitter-highlight")
    (version "0.25.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-highlight" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1ak12xl0hlj16x9k1jr7hfslwavgx5dkbp8adjgy2wfxnm56iskf"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-regex" ,rust-regex-1)
                       ("rust-streaming-iterator" ,rust-streaming-iterator-0.1)
                       ("rust-thiserror" ,rust-thiserror-2)
                       ("rust-tree-sitter" ,rust-tree-sitter-0.25))))
    (home-page "https://tree-sitter.github.io/tree-sitter")
    (synopsis "Library for performing syntax highlighting with Tree-sitter")
    (description
     "This package provides Library for performing syntax highlighting with Tree-sitter.")
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

(define-public rust-tree-sitter-html-0.23
  (package
    (name "rust-tree-sitter-html")
    (version "0.23.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-html" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1vk3xyxnf3xv19qisyj2knd346dq4yjamawv6bg1w1ljbn7706r6"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-tree-sitter-language" ,rust-tree-sitter-language-0.1))
       #:cargo-development-inputs (("rust-tree-sitter" ,rust-tree-sitter-0.24))))
    (home-page "https://github.com/tree-sitter/tree-sitter-html")
    (synopsis "HTML grammar for tree-sitter")
    (description "This package provides HTML grammar for tree-sitter.")
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

(define-public rust-tree-sitter-java-0.23
  (package
    (name "rust-tree-sitter-java")
    (version "0.23.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-java" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1mlh3skj2nasrwdz0v865r4hxnk7v8037z8nwqab4yf6r36wp9ha"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-tree-sitter-language" ,rust-tree-sitter-language-0.1))
       #:cargo-development-inputs (("rust-tree-sitter" ,rust-tree-sitter-0.24))))
    (home-page "https://github.com/tree-sitter/tree-sitter-java")
    (synopsis "Java grammar for tree-sitter")
    (description "This package provides Java grammar for tree-sitter.")
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

(define-public rust-tree-sitter-javascript-0.23
  (package
    (name "rust-tree-sitter-javascript")
    (version "0.23.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-javascript" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1cf19p9rl96yqjjhzimhp0dpvp2xxq8fqg2w29nc25h4krcvyh5z"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-tree-sitter-language" ,rust-tree-sitter-language-0.1))
       #:cargo-development-inputs (("rust-tree-sitter" ,rust-tree-sitter-0.24))))
    (home-page "https://github.com/tree-sitter/tree-sitter-javascript")
    (synopsis "JavaScript grammar for tree-sitter")
    (description
     "This package provides @code{JavaScript} grammar for tree-sitter.")
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
    (description "This package provides a JavaScript grammar for tree-sitter.")
    (license license:expat)))

(define-public rust-tree-sitter-json-0.24
  (package
    (name "rust-tree-sitter-json")
    (version "0.24.8")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-json" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0wf4gsa5mcrcprg8wh647n76rwv4cx8kbky6zw605h06lk67lwjd"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-tree-sitter-language" ,rust-tree-sitter-language-0.1))
       #:cargo-development-inputs (("rust-tree-sitter" ,rust-tree-sitter-0.24))))
    (home-page "https://github.com/tree-sitter/tree-sitter-json")
    (synopsis "JSON grammar for tree-sitter")
    (description "This package provides JSON grammar for tree-sitter.")
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

(define-public rust-tree-sitter-language-0.1
  (package
    (name "rust-tree-sitter-language")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-language" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1f14p8i09yrfsf9708jmayy0km78n9pqzxmf31xzd0vk45q3j0f4"))))
    (build-system cargo-build-system)
    (home-page "https://tree-sitter.github.io/tree-sitter")
    (synopsis
     "The tree-sitter Language type, used by the library and by language implementations")
    (description
     "This package provides The tree-sitter Language type, used by the library and by language
implementations.")
    (license license:expat)))

(define-public rust-tree-sitter-ocaml-0.24
  (package
    (name "rust-tree-sitter-ocaml")
    (version "0.24.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-ocaml" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0h5nx24ffbkdswh7gv1qp5hfxfdz1wbq9i4ybxmzam9q5dcdn6bx"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-tree-sitter-language" ,rust-tree-sitter-language-0.1))
       #:cargo-development-inputs (("rust-tree-sitter" ,rust-tree-sitter-0.24))))
    (home-page "https://github.com/tree-sitter/tree-sitter-ocaml")
    (synopsis "OCaml grammar for tree-sitter")
    (description "This package provides OCaml grammar for tree-sitter.")
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

(define-public rust-tree-sitter-php-0.23
  (package
    (name "rust-tree-sitter-php")
    (version "0.23.11")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-php" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "030kiknyk2lw54yj7mzj92kfr5v0qr81qymhvkqy9kvjj97fjrph"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-tree-sitter-language" ,rust-tree-sitter-language-0.1))
       #:cargo-development-inputs (("rust-tree-sitter" ,rust-tree-sitter-0.24))))
    (home-page "https://github.com/tree-sitter/tree-sitter-php")
    (synopsis "PHP grammar for tree-sitter")
    (description "This package provides PHP grammar for tree-sitter.")
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

(define-public rust-tree-sitter-python-0.23
  (package
    (name "rust-tree-sitter-python")
    (version "0.23.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-python" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "012bgzycya91lpdbrrr8xnw9xjz116nf1w61c2pwxapk4ym5l1ix"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-tree-sitter-language" ,rust-tree-sitter-language-0.1))
       #:cargo-development-inputs (("rust-tree-sitter" ,rust-tree-sitter-0.24))))
    (home-page "https://github.com/tree-sitter/tree-sitter-python")
    (synopsis "Python grammar for tree-sitter")
    (description "This package provides Python grammar for tree-sitter.")
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

(define-public rust-tree-sitter-ruby-0.23
  (package
    (name "rust-tree-sitter-ruby")
    (version "0.23.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-ruby" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "15cz4h1sfgf838r2pmf7vg9ahh0kwgkvvnjgbdbrrfzn9vm8815y"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-tree-sitter-language" ,rust-tree-sitter-language-0.1))
       #:cargo-development-inputs (("rust-tree-sitter" ,rust-tree-sitter-0.24))))
    (home-page "https://github.com/tree-sitter/tree-sitter-ruby")
    (synopsis "Ruby grammar for tree-sitter")
    (description "This package provides Ruby grammar for tree-sitter.")
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

(define-public rust-tree-sitter-rust-0.24
  (package
    (name "rust-tree-sitter-rust")
    (version "0.24.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-rust" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1q8vqslcnp2pvyg06733ddag4i4w3jlv5s1bf8h28jk89h1ii6sb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-tree-sitter-language" ,rust-tree-sitter-language-0.1))
       #:cargo-development-inputs (("rust-tree-sitter" ,rust-tree-sitter-0.24))))
    (home-page "https://github.com/tree-sitter/tree-sitter-rust")
    (synopsis "Rust grammar for tree-sitter")
    (description "This package provides Rust grammar for tree-sitter.")
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

(define-public rust-tree-sitter-scala-0.23
  (package
    (name "rust-tree-sitter-scala")
    (version "0.23.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-scala" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0bsxq5ihmi4qp1g3cfrnmgznp8h4y739d8mz2yn9wvkknil5xppg"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-tree-sitter-language" ,rust-tree-sitter-language-0.1))
       #:cargo-development-inputs (("rust-tree-sitter" ,rust-tree-sitter-0.24))))
    (home-page "https://github.com/tree-sitter/tree-sitter-scala")
    (synopsis "Scala grammar for tree-sitter")
    (description "This package provides Scala grammar for tree-sitter.")
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
    (description "This package provides a TOML grammar for tree-sitter")
    (license license:expat)))

(define-public rust-tree-sitter-toml-ng-0.7
  (package
    (name "rust-tree-sitter-toml-ng")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-toml-ng" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1cgbwl6x33d033ws4dwf3nw2pyd37m0bwxbxhl776jdfk34c5bg9"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-tree-sitter-language" ,rust-tree-sitter-language-0.1))
       #:cargo-development-inputs (("rust-tree-sitter" ,rust-tree-sitter-0.24))))
    (home-page "https://github.com/tree-sitter-grammars/tree-sitter-toml")
    (synopsis "TOML grammar for tree-sitter")
    (description "This package provides TOML grammar for tree-sitter.")
    (license license:expat)))

(define-public rust-tree-sitter-typescript-0.23
  (package
    (name "rust-tree-sitter-typescript")
    (version "0.23.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tree-sitter-typescript" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1zsyaxx3v1sd8gx2zkscwv6z1sq2nvccqpvd8k67ayllipnpcpvc"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-tree-sitter-language" ,rust-tree-sitter-language-0.1))
       #:cargo-development-inputs (("rust-tree-sitter" ,rust-tree-sitter-0.24))))
    (home-page "https://github.com/tree-sitter/tree-sitter-typescript")
    (synopsis "TypeScript and TSX grammars for tree-sitter")
    (description
     "This package provides @code{TypeScript} and TSX grammars for tree-sitter.")
    (license license:expat)))

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
     `(#:cargo-inputs (("rust-color-eyre" ,rust-color-eyre-0.6)
                       ("rust-itertools" ,rust-itertools-0.13)
                       ("rust-ratatui" ,rust-ratatui-0.29)
                       ("rust-ratatui-macros" ,rust-ratatui-macros-0.6)
                       ("rust-rstest" ,rust-rstest-0.23))))
    (home-page "https://github.com/joshka/tui-widgets")
    (synopsis "Library for building interactive prompts for ratatui.")
    (description
     "This package provides a library for building interactive prompts for ratatui.")
    (license (list license:expat license:asl2.0))))

(define-public rust-uuid-1
  (package
    (name "rust-uuid")
    (version "1.17.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "uuid" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "07ckq4fdiygy02gmislzfp727hx9zw6lskk9dbcds5ax3sfikx1w"))))
    (build-system cargo-build-system)
    (arguments
     `( ;Requires a wasm-bindgen feature that doesn't seem to exist.
        #:skip-build? #t
       #:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                       ("rust-atomic" ,rust-atomic-0.6)
                       ("rust-borsh" ,rust-borsh-1)
                       ("rust-borsh-derive" ,rust-borsh-derive-1)
                       ("rust-bytemuck" ,rust-bytemuck-1)
                       ("rust-getrandom" ,rust-getrandom-0.3)
                       ("rust-js-sys" ,rust-js-sys-0.3)
                       ("rust-md-5" ,rust-md-5-0.10)
                       ("rust-rand" ,rust-rand-0.9)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-sha1-smol" ,rust-sha1-smol-1)
                       ("rust-slog" ,rust-slog-2)
                       ("rust-uuid-macro-internal" ,rust-uuid-macro-internal-1)
                       ("rust-uuid-rng-internal" ,rust-uuid-rng-internal-1)
                       ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
                       ("rust-wasm-bindgen-test" ,rust-wasm-bindgen-test-0.3)
                       ("rust-zerocopy" ,rust-zerocopy-0.8))))
    (home-page "https://github.com/uuid-rs/uuid")
    (synopsis "library to generate and parse UUIDs.")
    (description
     "This package provides a library to generate and parse UUIDs.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-uuid-0.3
  (package
    (name "rust-uuid")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "uuid" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0qni2i2h45h7rfprsh935j2990ffyvcckwxs6wpy5xyaarqzb7qs"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-rand" ,rust-rand-0.3)
                       ("rust-rustc-serialize" ,rust-rustc-serialize-0.3)
                       ("rust-serde" ,rust-serde-0.8)
                       ("rust-sha1" ,rust-sha1-0.2))))
    (home-page "https://github.com/uuid-rs/uuid")
    (synopsis "library to generate and parse UUIDs.")
    (description
     "This package provides a library to generate and parse UUIDs.")
    (license (list license:expat license:asl2.0))))

(define-public rust-uuid-macro-internal-1
  (package
    (name "rust-uuid-macro-internal")
    (version "1.17.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "uuid-macro-internal" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1dy26dxy0l1gd34cd0xlkry5n00fis983qrh66h5x6c1qgl85di6"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/uuid-rs/uuid")
    (synopsis "Private implementation details of the uuid! macro")
    (description
     "This package provides Private implementation details of the uuid! macro.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-uuid-rng-internal-1
  (package
    (name "rust-uuid-rng-internal")
    (version "1.17.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "uuid-rng-internal" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1s97wihyn5x9m7k2yl4i9xzzy3fpc4p8plk08vfwbv986pj7ghhi"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-getrandom" ,rust-getrandom-0.3)
                       ("rust-rand" ,rust-rand-0.9))))
    (home-page "https://github.com/uuid-rs/uuid")
    (synopsis "Private implementation details of the uuid crate")
    (description
     "This package provides Private implementation details of the uuid crate.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-vcell-0.1
  (package
    (name "rust-vcell")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "vcell" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "00n0ss2z3rh0ihig6d4w7xp72g58f7g1m6s5v4h3nc6jacdrqhvp"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/japaric/vcell")
    (synopsis "`Cell` with volatile read / write operations")
    (description
     "This package provides `Cell` with volatile read / write operations.")
    (license (list license:expat license:asl2.0))))

(define-public rust-vcell-0.1
  (package
    (name "rust-vcell")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "vcell" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "00n0ss2z3rh0ihig6d4w7xp72g58f7g1m6s5v4h3nc6jacdrqhvp"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/japaric/vcell")
    (synopsis "`Cell` with volatile read / write operations")
    (description
     "This package provides `Cell` with volatile read / write operations.")
    (license (list license:expat license:asl2.0))))

(define-public rust-vcell-0.1
  (package
    (name "rust-vcell")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "vcell" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "00n0ss2z3rh0ihig6d4w7xp72g58f7g1m6s5v4h3nc6jacdrqhvp"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/japaric/vcell")
    (synopsis "`Cell` with volatile read / write operations")
    (description
     "This package provides `Cell` with volatile read / write operations.")
    (license (list license:expat license:asl2.0))))

(define-public rust-vcell-0.1
  (package
    (name "rust-vcell")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "vcell" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "00n0ss2z3rh0ihig6d4w7xp72g58f7g1m6s5v4h3nc6jacdrqhvp"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/japaric/vcell")
    (synopsis "`Cell` with volatile read / write operations")
    (description
     "This package provides `Cell` with volatile read / write operations.")
    (license (list license:expat license:asl2.0))))

(define-public rust-volatile-register-0.2
  (package
    (name "rust-volatile-register")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "volatile-register" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1k0rkm81qyhn4r8f03z0sch2kyikkgjjfalpaami9c08c8m7whyy"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-vcell" ,rust-vcell-0.1))))
    (home-page "https://github.com/rust-embedded/volatile-register")
    (synopsis "Volatile access to memory mapped hardware registers")
    (description
     "This package provides Volatile access to memory mapped hardware registers.")
    (license (list license:expat license:asl2.0))))

(define-public rust-volatile-register-0.2
  (package
    (name "rust-volatile-register")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "volatile-register" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1k0rkm81qyhn4r8f03z0sch2kyikkgjjfalpaami9c08c8m7whyy"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-vcell" ,rust-vcell-0.1))))
    (home-page "https://github.com/rust-embedded/volatile-register")
    (synopsis "Volatile access to memory mapped hardware registers")
    (description
     "This package provides Volatile access to memory mapped hardware registers.")
    (license (list license:expat license:asl2.0))))

(define-public rust-volatile-register-0.2
  (package
    (name "rust-volatile-register")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "volatile-register" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1k0rkm81qyhn4r8f03z0sch2kyikkgjjfalpaami9c08c8m7whyy"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-vcell" ,rust-vcell-0.1))))
    (home-page "https://github.com/rust-embedded/volatile-register")
    (synopsis "Volatile access to memory mapped hardware registers")
    (description
     "This package provides Volatile access to memory mapped hardware registers.")
    (license (list license:expat license:asl2.0))))

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
       #:cargo-inputs (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
                       ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
                       ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
                       ("rust-wit-bindgen-rt" ,rust-wit-bindgen-rt-0.33))))
    (home-page "https://github.com/bytecodealliance/wasi")
    (synopsis "Experimental WASI API bindings for Rust")
    (description
     "This package provides experimental WASI API bindings for Rust.")
    (license (list license:asl2.0 license:expat))))

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
       (snippet '(begin
                   (substitute* "Cargo.toml"
                     (("\"=([[:digit:]]+(\\.[[:digit:]]+)*)" _ version)
                      (string-append "\"^" version)))))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1.0.141)
                       ("rust-wasm-bindgen-macro" ,rust-wasm-bindgen-macro-0.2.100))
       #:cargo-development-inputs (("rust-paste" ,rust-paste-1)
                                   ("rust-serde-derive" ,rust-serde-derive-1))))
    (home-page "https://rustwasm.github.io/")
    (synopsis "Easy support for interacting between JS and Rust")
    (description "Easy support for interacting between JS and Rust.")
    (license (list license:asl2.0 license:expat))))

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
     `(#:cargo-inputs (("rust-bumpalo" ,rust-bumpalo-3)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2)
                       ("rust-wasm-bindgen-shared" ,rust-wasm-bindgen-shared-0.2.100))))
    (home-page "https://rustwasm.github.io/wasm-bindgen/")
    (synopsis "Backend code generation of the wasm-bindgen tool")
    (description "Backend code generation of the wasm-bindgen tool.")
    (license (list license:expat license:asl2.0))))

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
     `(#:tests? #f ;use of undeclared crate or module `web_sys`
       #:cargo-inputs (("rust-quote" ,rust-quote-1)
                       ("rust-wasm-bindgen-macro-support" ,rust-wasm-bindgen-macro-support-0.2.100))
       #:cargo-development-inputs (("rust-trybuild" ,rust-trybuild-1))))
    (home-page "https://rustwasm.github.io/wasm-bindgen/")
    (synopsis "Definition of the @code{#[wasm_bindgen]} attribute")
    (description
     "Definition of the @code{#[wasm_bindgen]} attribute, an internal
dependency.")
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
     `(#:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2)
                       ("rust-wasm-bindgen-backend" ,rust-wasm-bindgen-backend-0.2.100)
                       ("rust-wasm-bindgen-shared" ,rust-wasm-bindgen-shared-0.2))))
    (home-page "https://rustwasm.github.io/wasm-bindgen/")
    (synopsis "The @code{#[wasm_bindgen]} macro")
    (description "The part of the implementation of the @code{#[wasm_bindgen]}
attribute that is not in the shared backend crate.")
    (license (list license:asl2.0 license:expat))))

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
     `(#:cargo-inputs (("rust-unicode-ident" ,rust-unicode-ident-1))))
    (home-page "https://rustwasm.github.io/wasm-bindgen/")
    (synopsis "Shared support between wasm-bindgen and wasm-bindgen cli")
    (description
     "This package provides shared support between
@code{wasm-bindgen} and @code{wasm-bindgen} cli, an internal dependency.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-wasm-encoder-0.235
  (package
    (name "rust-wasm-encoder")
    (version "0.235.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasm-encoder" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0ajw7asr0q3y778r632f3csrlaw8g50qabghgwv23djw74y3kg5k"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-leb128fmt" ,rust-leb128fmt-0.1)
                       ("rust-wasmparser" ,rust-wasmparser-0.235)
                       ("rust-wasmprinter" ,rust-wasmprinter-0.235))
       ;; Tests fail.
       #:tests? #f))
    (home-page
     "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wasm-encoder")
    (synopsis "low-level WebAssembly encoder.")
    (description
     "This package provides a low-level @code{WebAssembly} encoder.")
    (license (list license:asl2.0 license:asl2.0 license:expat))))

(define-public rust-wasm-encoder-0.221
  (package
    (name "rust-wasm-encoder")
    (version "0.221.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasm-encoder" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1r9jv84kbjf6z18rgf3666vvcn5fybzn9daszsj81pi097z4916w"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-leb128" ,rust-leb128-0.2)
                       ("rust-wasmparser" ,rust-wasmparser-0.221))
       #:cargo-development-inputs (("rust-anyhow" ,rust-anyhow-1)
                                   ("rust-tempfile" ,rust-tempfile-3)
                                   ("rust-wasmprinter" ,rust-wasmprinter-0.221))))
    (home-page
     "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wasm-encoder")
    (synopsis "low-level WebAssembly encoder.")
    (description
     "This package provides a low-level @code{WebAssembly} encoder.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-wasm-timer-0.2
  (package
    (name "rust-wasm-timer")
    (version "0.2.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasm-timer" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0zsyijv3wgj9p4q47a4awla8j4kw33jd7da2fsd1wml0nh6wn3my"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-futures" ,rust-futures-0.3)
                       ("rust-js-sys" ,rust-js-sys-0.3)
                       ("rust-parking-lot" ,rust-parking-lot-0.11)
                       ("rust-pin-utils" ,rust-pin-utils-0.1)
                       ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
                       ("rust-wasm-bindgen-futures" ,rust-wasm-bindgen-futures-0.4)
                       ("rust-web-sys" ,rust-web-sys-0.3))))
    (home-page "https://github.com/tomaka/wasm-timer")
    (synopsis
     "Abstraction over std::time::Instant and futures-timer that works on WASM")
    (description
     "This package provides Abstraction over std::time::Instant and futures-timer that works on WASM.")
    (license license:expat)))

(define-public rust-wasm-wave-0.235
  (package
    (name "rust-wasm-wave")
    (version "0.235.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasm-wave" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1ldpm1ibchijivkwan78d79jn29rf2ncfhivqvzmf4jwvh4cjjq3"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-indexmap" ,rust-indexmap-2)
                       ("rust-logos" ,rust-logos-0.14)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-wit-parser" ,rust-wit-parser-0.235))))
    (home-page
     "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wasm-wave")
    (synopsis "WebAssembly Value Encoding")
    (description "This package provides @code{WebAssembly} Value Encoding.")
    (license (list license:asl2.0 license:asl2.0 license:expat))))

(define-public rust-wasm-wave-0.221
  (package
    (name "rust-wasm-wave")
    (version "0.221.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasm-wave" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1ysjy5gp0yflbmlly1scdfpd4m99m2gwc8pzppsyrkinpla86i1w"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-indexmap" ,rust-indexmap-2)
                       ("rust-logos" ,rust-logos-0.14)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-wit-parser" ,rust-wit-parser-0.221))
       #:cargo-development-inputs (("rust-anyhow" ,rust-anyhow-1))))
    (home-page
     "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wasm-wave")
    (synopsis "WebAssembly Value Encoding")
    (description "This package provides @code{WebAssembly} Value Encoding.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-wasmparser-0.235
  (package
    (name "rust-wasmparser")
    (version "0.235.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmparser" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "05q9craiackn3aq346y7kv5h7s1p548x3zszxpv66bgs3339c4hn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-criterion" ,rust-criterion-0.5)
                       ("rust-env-logger" ,rust-env-logger-0.11)
                       ("rust-hashbrown" ,rust-hashbrown-0.15)
                       ("rust-indexmap" ,rust-indexmap-2)
                       ("rust-semver" ,rust-semver-1)
                       ("rust-serde" ,rust-serde-1))
       ;; Unresolved import and lack of type notations.
       #:tests? #f))
    (home-page
     "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wasmparser")
    (synopsis
     "simple event-driven library for parsing WebAssembly binary files.")
    (description
     "This package provides a simple event-driven library for parsing
@code{WebAssembly} binary files.")
    (license (list license:asl2.0 license:asl2.0 license:expat))))

(define-public rust-wasmparser-0.221
  (package
    (name "rust-wasmparser")
    (version "0.221.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmparser" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "11ficyz79dcypkxxg1c8vl8bm0avg8a80csnxq6vxhismcvglsyh"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-hashbrown" ,rust-hashbrown-0.15)
                       ("rust-indexmap" ,rust-indexmap-2)
                       ("rust-semver" ,rust-semver-1)
                       ("rust-serde" ,rust-serde-1))
       #:cargo-development-inputs (("rust-anyhow" ,rust-anyhow-1)
                                   ("rust-criterion" ,rust-criterion-0.5)
                                   ("rust-env-logger" ,rust-env-logger-0.11)
                                   ("rust-log" ,rust-log-0.4)
                                   ("rust-once-cell" ,rust-once-cell-1)
                                   ("rust-rayon" ,rust-rayon-1))))
    (home-page
     "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wasmparser")
    (synopsis
     "simple event-driven library for parsing WebAssembly binary files.")
    (description
     "This package provides a simple event-driven library for parsing
@code{WebAssembly} binary files.")
    (license (list license:asl2.0 license:expat))))

;; Unresolved import.
(define-public rust-wasmprinter-0.235
  (package
    (name "rust-wasmprinter")
    (version "0.235.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmprinter" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "02psv2p5gl5v66qkavcnyh5wm32ivbdbmd6swr29asyyfs88xakm"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-termcolor" ,rust-termcolor-1)
                       ("rust-wasmparser" ,rust-wasmparser-0.235))))
    (home-page
     "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wasmprinter")
    (synopsis
     "Rust converter from the WebAssembly binary format to the text format.")
    (description
     "This package provides Rust converter from the @code{WebAssembly} binary format to the text format.")
    (license (list license:asl2.0 license:asl2.0 license:expat))))

;; Unresolved import.
(define-public rust-wasmprinter-0.235
  (package
    (name "rust-wasmprinter")
    (version "0.235.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmprinter" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "02psv2p5gl5v66qkavcnyh5wm32ivbdbmd6swr29asyyfs88xakm"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-termcolor" ,rust-termcolor-1)
                       ("rust-wasmparser" ,rust-wasmparser-0.235))))
    (home-page
     "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wasmprinter")
    (synopsis
     "Rust converter from the WebAssembly binary format to the text format.")
    (description
     "This package provides Rust converter from the @code{WebAssembly} binary format to the text format.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-wasmprinter-0.221
  (package
    (name "rust-wasmprinter")
    (version "0.221.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmprinter" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "10xjs2bzvppwr4qdsgfqqmafjah9290bd0gz35w6r4pjjwmc8hvk"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-termcolor" ,rust-termcolor-1)
                       ("rust-wasmparser" ,rust-wasmparser-0.221))))
    (home-page
     "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wasmprinter")
    (synopsis
     "Rust converter from the WebAssembly binary format to the text format.")
    (description
     "This package provides Rust converter from the @code{WebAssembly} binary format to the text format.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-wasmtime-35
  (package
    (name "rust-wasmtime")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1x46yqx1yx4cafk8p75gs2jilkzxs5rw8wkissqg6sm149lrgzmn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-addr2line" ,rust-addr2line-0.24)
                       ("rust-anyhow" ,rust-anyhow-1)
                       ("rust-async-trait" ,rust-async-trait-0.1)
                       ("rust-bitflags" ,rust-bitflags-2)
                       ("rust-bumpalo" ,rust-bumpalo-3)
                       ("rust-cc" ,rust-cc-1)
                       ("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-encoding-rs" ,rust-encoding-rs-0.8)
                       ("rust-futures" ,rust-futures-0.3)
                       ("rust-fxprof-processed-profile" ,rust-fxprof-processed-profile-0.6)
                       ("rust-gimli" ,rust-gimli-0.31)
                       ("rust-hashbrown" ,rust-hashbrown-0.15)
                       ("rust-indexmap" ,rust-indexmap-2)
                       ("rust-ittapi" ,rust-ittapi-0.4)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-mach2" ,rust-mach2-0.4)
                       ("rust-memfd" ,rust-memfd-0.6)
                       ("rust-object" ,rust-object-0.36)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-postcard" ,rust-postcard-1)
                       ("rust-pulley-interpreter" ,rust-pulley-interpreter-35)
                       ("rust-rayon" ,rust-rayon-1)
                       ("rust-rustix" ,rust-rustix-1)
                       ("rust-semver" ,rust-semver-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-derive" ,rust-serde-derive-1)
                       ("rust-serde-json" ,rust-serde-json-1.0.141)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-target-lexicon" ,rust-target-lexicon-0.13)
                       ("rust-trait-variant" ,rust-trait-variant-0.1)
                       ("rust-wasm-encoder" ,rust-wasm-encoder-0.235)
                       ("rust-wasm-wave" ,rust-wasm-wave-0.235)
                       ("rust-wasmparser" ,rust-wasmparser-0.235)
                       ("rust-wasmtime-environ" ,rust-wasmtime-environ-35)
                       ("rust-wasmtime-internal-asm-macros" ,rust-wasmtime-internal-asm-macros-35)
                       ("rust-wasmtime-internal-cache" ,rust-wasmtime-internal-cache-35)
                       ("rust-wasmtime-internal-component-macro" ,rust-wasmtime-internal-component-macro-35)
                       ("rust-wasmtime-internal-component-util" ,rust-wasmtime-internal-component-util-35)
                       ("rust-wasmtime-internal-cranelift" ,rust-wasmtime-internal-cranelift-35)
                       ("rust-wasmtime-internal-fiber" ,rust-wasmtime-internal-fiber-35)
                       ("rust-wasmtime-internal-jit-debug" ,rust-wasmtime-internal-jit-debug-35)
                       ("rust-wasmtime-internal-jit-icache-coherence" ,rust-wasmtime-internal-jit-icache-coherence-35)
                       ("rust-wasmtime-internal-math" ,rust-wasmtime-internal-math-35)
                       ("rust-wasmtime-internal-slab" ,rust-wasmtime-internal-slab-35)
                       ("rust-wasmtime-internal-unwinder" ,rust-wasmtime-internal-unwinder-35)
                       ("rust-wasmtime-internal-versioned-export-macros" ,rust-wasmtime-internal-versioned-export-macros-35)
                       ("rust-wasmtime-internal-versioned-export-macros" ,rust-wasmtime-internal-versioned-export-macros-35)
                       ("rust-wasmtime-internal-winch" ,rust-wasmtime-internal-winch-35)
                       ("rust-wasmtime-internal-wmemcheck" ,rust-wasmtime-internal-wmemcheck-35)
                       ("rust-wat" ,rust-wat-1)
                       ("rust-windows-sys" ,rust-windows-sys-0.59))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "High-level API to expose the Wasmtime runtime")
    (description
     "This package provides High-level API to expose the Wasmtime runtime.")
    (license (list license:asl2.0))))

(define-public rust-wasmtime-29
  (package
    (name "rust-wasmtime")
    (version "29.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0s8f05h19hnnhx2jmi7dr4m1kjbacpbxbih49hf6smbj0qjnm5qi"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-addr2line" ,rust-addr2line-0.24)
                       ("rust-anyhow" ,rust-anyhow-1)
                       ("rust-async-trait" ,rust-async-trait-0.1)
                       ("rust-bitflags" ,rust-bitflags-2)
                       ("rust-bumpalo" ,rust-bumpalo-3)
                       ("rust-cc" ,rust-cc-1)
                       ("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-encoding-rs" ,rust-encoding-rs-0.8)
                       ("rust-fxprof-processed-profile" ,rust-fxprof-processed-profile-0.6)
                       ("rust-gimli" ,rust-gimli-0.31)
                       ("rust-hashbrown" ,rust-hashbrown-0.14)
                       ("rust-indexmap" ,rust-indexmap-2)
                       ("rust-ittapi" ,rust-ittapi-0.4)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-mach2" ,rust-mach2-0.4)
                       ("rust-memfd" ,rust-memfd-0.6)
                       ("rust-object" ,rust-object-0.36)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-paste" ,rust-paste-1)
                       ("rust-postcard" ,rust-postcard-1)
                       ("rust-psm" ,rust-psm-0.1)
                       ("rust-pulley-interpreter" ,rust-pulley-interpreter-29)
                       ("rust-rayon" ,rust-rayon-1)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-semver" ,rust-semver-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-derive" ,rust-serde-derive-1)
                       ("rust-serde-json" ,rust-serde-json-1.0.141)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-sptr" ,rust-sptr-0.3)
                       ("rust-target-lexicon" ,rust-target-lexicon-0.13)
                       ("rust-trait-variant" ,rust-trait-variant-0.1)
                       ("rust-wasm-encoder" ,rust-wasm-encoder-0.221)
                       ("rust-wasm-wave" ,rust-wasm-wave-0.221)
                       ("rust-wasmparser" ,rust-wasmparser-0.221)
                       ("rust-wasmtime-asm-macros" ,rust-wasmtime-asm-macros-29)
                       ("rust-wasmtime-cache" ,rust-wasmtime-cache-29)
                       ("rust-wasmtime-component-macro" ,rust-wasmtime-component-macro-29)
                       ("rust-wasmtime-component-util" ,rust-wasmtime-component-util-29)
                       ("rust-wasmtime-cranelift" ,rust-wasmtime-cranelift-29)
                       ("rust-wasmtime-environ" ,rust-wasmtime-environ-29)
                       ("rust-wasmtime-fiber" ,rust-wasmtime-fiber-29)
                       ("rust-wasmtime-jit-debug" ,rust-wasmtime-jit-debug-29)
                       ("rust-wasmtime-jit-icache-coherence" ,rust-wasmtime-jit-icache-coherence-29)
                       ("rust-wasmtime-math" ,rust-wasmtime-math-29)
                       ("rust-wasmtime-slab" ,rust-wasmtime-slab-29)
                       ("rust-wasmtime-versioned-export-macros" ,rust-wasmtime-versioned-export-macros-29)
                       ("rust-wasmtime-versioned-export-macros" ,rust-wasmtime-versioned-export-macros-29)
                       ("rust-wasmtime-winch" ,rust-wasmtime-winch-29)
                       ("rust-wasmtime-wmemcheck" ,rust-wasmtime-wmemcheck-29)
                       ("rust-wat" ,rust-wat-1)
                       ("rust-windows-sys" ,rust-windows-sys-0.59))
       #:cargo-development-inputs (("rust-env-logger" ,rust-env-logger-0.11)
                                   ("rust-proptest" ,rust-proptest-1)
                                   ("rust-rand" ,rust-rand-0.8)
                                   ("rust-tempfile" ,rust-tempfile-3))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "High-level API to expose the Wasmtime runtime")
    (description
     "This package provides High-level API to expose the Wasmtime runtime.")
    (license license:asl2.0)))

(define-public rust-wasmtime-asm-macros-29
  (package
    (name "rust-wasmtime-asm-macros")
    (version "29.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-asm-macros" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1wk4rwn8085nllba4nz4z68ihl9ypm4zisjvyzlzn0aj286qn5qz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Macros for defining asm functions in Wasmtime")
    (description
     "This package provides Macros for defining asm functions in Wasmtime.")
    (license license:asl2.0)))

(define-public rust-wasmtime-c-api-impl-35
  (package
    (name "rust-wasmtime-c-api-impl")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-c-api-impl" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "04yga5ghpdblrmsvlczhscr0w8ds4ijbnhcwysygp81j5y5n988y"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-cap-std" ,rust-cap-std-3)
                       ("rust-env-logger" ,rust-env-logger-0.11)
                       ("rust-futures" ,rust-futures-0.3)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tracing" ,rust-tracing-0.1)
                       ("rust-wasmtime" ,rust-wasmtime-35)
                       ("rust-wasmtime-internal-c-api-macros" ,rust-wasmtime-internal-c-api-macros-35)
                       ("rust-wasmtime-wasi" ,rust-wasmtime-wasi-35)
                       ("rust-wat" ,rust-wat-1))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "C API to expose the Wasmtime runtime")
    (description "This package provides C API to expose the Wasmtime runtime.")
    (license (list license:asl2.0))))

(define-public rust-wasmtime-c-api-impl-29
  (package
    (name "rust-wasmtime-c-api-impl")
    (version "29.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-c-api-impl" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "037dcqkjwl8vxmnfh6pqlzcpcdjgpb0r9fvvgiwyabcgc3rwwc7a"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-cap-std" ,rust-cap-std-3)
                       ("rust-env-logger" ,rust-env-logger-0.11)
                       ("rust-futures" ,rust-futures-0.3)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tracing" ,rust-tracing-0.1)
                       ("rust-wasmtime" ,rust-wasmtime-29)
                       ("rust-wasmtime-c-api-macros" ,rust-wasmtime-c-api-macros-29)
                       ("rust-wasmtime-wasi" ,rust-wasmtime-wasi-29)
                       ("rust-wat" ,rust-wat-1))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "C API to expose the Wasmtime runtime")
    (description "This package provides C API to expose the Wasmtime runtime.")
    (license license:asl2.0)))

(define-public rust-wasmtime-c-api-macros-29
  (package
    (name "rust-wasmtime-c-api-macros")
    (version "29.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-c-api-macros" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0nxndnwfwx490yw5rwc1gn2xvd66c5z3sil29lw5sk8jw7mpjah2"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Support macros for `wasmtime-c-api`")
    (description "This package provides Support macros for `wasmtime-c-api`.")
    (license license:asl2.0)))

(define-public rust-wasmtime-cache-29
  (package
    (name "rust-wasmtime-cache")
    (version "29.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-cache" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1z2gw8phnwchqdxh0ihxr3qikh6xrq6c92rm0zmdx018yv4624cb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-base64" ,rust-base64-0.21)
                       ("rust-directories-next" ,rust-directories-next-2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-postcard" ,rust-postcard-1)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-derive" ,rust-serde-derive-1)
                       ("rust-sha2" ,rust-sha2-0.10)
                       ("rust-toml" ,rust-toml-0.8)
                       ("rust-windows-sys" ,rust-windows-sys-0.59)
                       ("rust-zstd" ,rust-zstd-0.13))
       #:cargo-development-inputs (("rust-filetime" ,rust-filetime-0.2)
                                   ("rust-pretty-env-logger" ,rust-pretty-env-logger-0.5)
                                   ("rust-tempfile" ,rust-tempfile-3))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Support for automatic module caching with Wasmtime")
    (description
     "This package provides Support for automatic module caching with Wasmtime.")
    (license license:asl2.0)))

(define-public rust-wasmtime-component-macro-29
  (package
    (name "rust-wasmtime-component-macro")
    (version "29.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-component-macro" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1byzawnz8myzmlwbc0g5y415sk9h5ac464pp0akd0ifr5rcyckfp"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2)
                       ("rust-wasmtime-component-util" ,rust-wasmtime-component-util-29)
                       ("rust-wasmtime-wit-bindgen" ,rust-wasmtime-wit-bindgen-29)
                       ("rust-wit-parser" ,rust-wit-parser-0.221))
       #:cargo-development-inputs (("rust-prettyplease" ,rust-prettyplease-0.2)
                                   ("rust-serde" ,rust-serde-1)
                                   ("rust-serde-json" ,rust-serde-json-1.0.141)
                                   ("rust-similar" ,rust-similar-2)
                                   ("rust-tracing" ,rust-tracing-0.1))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Macros for deriving component interface types from Rust types")
    (description
     "This package provides Macros for deriving component interface types from Rust types.")
    (license license:asl2.0)))

(define-public rust-wasmtime-component-util-29
  (package
    (name "rust-wasmtime-component-util")
    (version "29.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-component-util" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0vh5dzz2nn7clnbdy5igd07nm3igbgxy5krhdcv5maqjq6rwfzbh"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis
     "Utility types and functions to support the component model in Wasmtime")
    (description
     "This package provides Utility types and functions to support the component model in Wasmtime.")
    (license license:asl2.0)))

(define-public rust-wasmtime-cranelift-29
  (package
    (name "rust-wasmtime-cranelift")
    (version "29.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-cranelift" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "11wyks7pdzshspw6ks5k5z45r28ngm6vrg0g559z2jsdcwiffsrn"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-cranelift-codegen" ,rust-cranelift-codegen-0.116)
                       ("rust-cranelift-control" ,rust-cranelift-control-0.116)
                       ("rust-cranelift-entity" ,rust-cranelift-entity-0.116)
                       ("rust-cranelift-frontend" ,rust-cranelift-frontend-0.116)
                       ("rust-cranelift-native" ,rust-cranelift-native-0.116)
                       ("rust-gimli" ,rust-gimli-0.31)
                       ("rust-itertools" ,rust-itertools-0.12)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-object" ,rust-object-0.36)
                       ("rust-pulley-interpreter" ,rust-pulley-interpreter-29)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-target-lexicon" ,rust-target-lexicon-0.13)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-wasmparser" ,rust-wasmparser-0.221)
                       ("rust-wasmtime-environ" ,rust-wasmtime-environ-29)
                       ("rust-wasmtime-versioned-export-macros" ,rust-wasmtime-versioned-export-macros-29))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Integration between Cranelift and Wasmtime")
    (description
     "This package provides Integration between Cranelift and Wasmtime.")
    (license license:asl2.0)))

(define-public rust-wasmtime-environ-35
  (package
    (name "rust-wasmtime-environ")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-environ" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0vs38895bbkla2797yxxhfy7cjf2x9svqsy7pd5941nqg152ddj4"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-cpp-demangle" ,rust-cpp-demangle-0.4)
                       ("rust-cranelift-bitset" ,rust-cranelift-bitset-0.122)
                       ("rust-cranelift-entity" ,rust-cranelift-entity-0.122)
                       ("rust-gimli" ,rust-gimli-0.31)
                       ("rust-indexmap" ,rust-indexmap-2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-object" ,rust-object-0.36)
                       ("rust-postcard" ,rust-postcard-1)
                       ("rust-rustc-demangle" ,rust-rustc-demangle-0.1)
                       ("rust-semver" ,rust-semver-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-derive" ,rust-serde-derive-1)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-target-lexicon" ,rust-target-lexicon-0.13)
                       ("rust-wasm-encoder" ,rust-wasm-encoder-0.235)
                       ("rust-wasmparser" ,rust-wasmparser-0.235)
                       ("rust-wasmprinter" ,rust-wasmprinter-0.235)
                       ("rust-wasmtime-internal-component-util" ,rust-wasmtime-internal-component-util-35))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis
     "Standalone environment support for WebAssembly code in Cranelift")
    (description
     "This package provides Standalone environment support for @code{WebAssembly} code in Cranelift.")
    (license (list license:asl2.0))))

(define-public rust-wasmtime-environ-29
  (package
    (name "rust-wasmtime-environ")
    (version "29.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-environ" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1bclk4g44v8bcqf9fik9njsjdxqhk290iw54fsi7ld4pf2pw3bfd"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-cpp-demangle" ,rust-cpp-demangle-0.4)
                       ("rust-cranelift-bitset" ,rust-cranelift-bitset-0.116)
                       ("rust-cranelift-entity" ,rust-cranelift-entity-0.116)
                       ("rust-gimli" ,rust-gimli-0.31)
                       ("rust-indexmap" ,rust-indexmap-2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-object" ,rust-object-0.36)
                       ("rust-postcard" ,rust-postcard-1)
                       ("rust-rustc-demangle" ,rust-rustc-demangle-0.1)
                       ("rust-semver" ,rust-semver-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-derive" ,rust-serde-derive-1)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-target-lexicon" ,rust-target-lexicon-0.13)
                       ("rust-wasm-encoder" ,rust-wasm-encoder-0.221)
                       ("rust-wasmparser" ,rust-wasmparser-0.221)
                       ("rust-wasmprinter" ,rust-wasmprinter-0.221)
                       ("rust-wasmtime-component-util" ,rust-wasmtime-component-util-29))
       #:cargo-development-inputs (("rust-clap" ,rust-clap-4)
                                   ("rust-env-logger" ,rust-env-logger-0.11)
                                   ("rust-wat" ,rust-wat-1))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis
     "Standalone environment support for WebAssembly code in Cranelift")
    (description
     "This package provides Standalone environment support for @code{WebAssembly} code in Cranelift.")
    (license license:asl2.0)))

(define-public rust-wasmtime-fiber-29
  (package
    (name "rust-wasmtime-fiber")
    (version "29.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-fiber" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "05qis8ry2z3mqkw2hlpz3yz1g9ih0xjqa10rj751n24z27a91fnc"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-cc" ,rust-cc-1)
                       ("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-wasmtime-asm-macros" ,rust-wasmtime-asm-macros-29)
                       ("rust-wasmtime-versioned-export-macros" ,rust-wasmtime-versioned-export-macros-29)
                       ("rust-wasmtime-versioned-export-macros" ,rust-wasmtime-versioned-export-macros-29)
                       ("rust-windows-sys" ,rust-windows-sys-0.59))
       #:cargo-development-inputs (("rust-backtrace" ,rust-backtrace-0.3))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Fiber support for Wasmtime")
    (description "This package provides Fiber support for Wasmtime.")
    (license license:asl2.0)))

(define-public rust-wasmtime-internal-asm-macros-35
  (package
    (name "rust-wasmtime-internal-asm-macros")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-internal-asm-macros" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "06jd150ax2cxi7bklkdzwn0wrbd09h0si58ff7jid5sm2sssjxb7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "INTERNAL: Macros for defining asm functions in Wasmtime")
    (description
     "This package provides INTERNAL: Macros for defining asm functions in Wasmtime.")
    (license (list license:asl2.0))))

(define-public rust-wasmtime-internal-c-api-macros-35
  (package
    (name "rust-wasmtime-internal-c-api-macros")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-internal-c-api-macros" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0my5rqbjjlrscy9wf7hfgw2kx36k9arys9g3w6a66n5l18lmn75r"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "INTERNAL: Support macros for `wasmtime-c-api`")
    (description
     "This package provides INTERNAL: Support macros for `wasmtime-c-api`.")
    (license (list license:asl2.0))))

(define-public rust-wasmtime-internal-cache-35
  (package
    (name "rust-wasmtime-internal-cache")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-internal-cache" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0973ll5s94wkm36yyns9anaj7s0drv6hsvbxqyqz686i9fnk73hk"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-base64" ,rust-base64-0.22)
                       ("rust-directories-next" ,rust-directories-next-2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-postcard" ,rust-postcard-1)
                       ("rust-rustix" ,rust-rustix-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-derive" ,rust-serde-derive-1)
                       ("rust-sha2" ,rust-sha2-0.10)
                       ("rust-toml" ,rust-toml-0.8)
                       ("rust-windows-sys" ,rust-windows-sys-0.59)
                       ("rust-zstd" ,rust-zstd-0.13))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "INTERNAL: Support for automatic module caching with Wasmtime")
    (description
     "This package provides INTERNAL: Support for automatic module caching with Wasmtime.")
    (license (list license:asl2.0))))

(define-public rust-wasmtime-internal-component-macro-35
  (package
    (name "rust-wasmtime-internal-component-macro")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-internal-component-macro" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "11z2msq3jha9zsm9wa7anrj390hvc8aihv6hrssyc1g40n10jgfw"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2)
                       ("rust-wasmtime-internal-component-util" ,rust-wasmtime-internal-component-util-35)
                       ("rust-wasmtime-internal-wit-bindgen" ,rust-wasmtime-internal-wit-bindgen-35)
                       ("rust-wit-parser" ,rust-wit-parser-0.235))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis
     "INTERNAL: Macros for deriving component interface types from Rust types")
    (description
     "This package provides INTERNAL: Macros for deriving component interface types from Rust types.")
    (license (list license:asl2.0))))

(define-public rust-wasmtime-internal-component-util-35
  (package
    (name "rust-wasmtime-internal-component-util")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-internal-component-util" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1jnygfwy1jhhkb5px2dv5klxcmp31qdn2r96ng92w90nf83554i1"))))
    (build-system cargo-build-system)
    (arguments
     `())
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis
     "INTERNAL: Utility types and functions to support the component model in Wasmtime")
    (description
     "This package provides INTERNAL: Utility types and functions to support the component model in
Wasmtime.")
    (license (list license:asl2.0))))

(define-public rust-wasmtime-internal-cranelift-35
  (package
    (name "rust-wasmtime-internal-cranelift")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-internal-cranelift" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "076055x67g8cvbh1jlh8995bg7b8zwqf512lp5ydxa76cmssvjby"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-cranelift-codegen" ,rust-cranelift-codegen-0.122)
                       ("rust-cranelift-control" ,rust-cranelift-control-0.122)
                       ("rust-cranelift-entity" ,rust-cranelift-entity-0.122)
                       ("rust-cranelift-frontend" ,rust-cranelift-frontend-0.122)
                       ("rust-cranelift-native" ,rust-cranelift-native-0.122)
                       ("rust-gimli" ,rust-gimli-0.31)
                       ("rust-itertools" ,rust-itertools-0.14)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-object" ,rust-object-0.36)
                       ("rust-pulley-interpreter" ,rust-pulley-interpreter-35)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-target-lexicon" ,rust-target-lexicon-0.13)
                       ("rust-thiserror" ,rust-thiserror-2)
                       ("rust-wasmparser" ,rust-wasmparser-0.235)
                       ("rust-wasmtime-environ" ,rust-wasmtime-environ-35)
                       ("rust-wasmtime-internal-math" ,rust-wasmtime-internal-math-35)
                       ("rust-wasmtime-internal-versioned-export-macros" ,rust-wasmtime-internal-versioned-export-macros-35))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "INTERNAL: Integration between Cranelift and Wasmtime")
    (description
     "This package provides INTERNAL: Integration between Cranelift and Wasmtime.")
    (license (list license:asl2.0))))

(define-public rust-wasmtime-internal-fiber-35
  (package
    (name "rust-wasmtime-internal-fiber")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-internal-fiber" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0fav723j65jy6kvkngk8p4bx7fmjwiq3gcp3vwlszsr0nbw6yqwb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-cc" ,rust-cc-1)
                       ("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-rustix" ,rust-rustix-1)
                       ("rust-wasmtime-internal-asm-macros" ,rust-wasmtime-internal-asm-macros-35)
                       ("rust-wasmtime-internal-versioned-export-macros" ,rust-wasmtime-internal-versioned-export-macros-35)
                       ("rust-wasmtime-internal-versioned-export-macros" ,rust-wasmtime-internal-versioned-export-macros-35)
                       ("rust-windows-sys" ,rust-windows-sys-0.59))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "INTERNAL: Fiber support for Wasmtime")
    (description "This package provides INTERNAL: Fiber support for Wasmtime.")
    (license (list license:asl2.0))))

(define-public rust-wasmtime-internal-jit-debug-35
  (package
    (name "rust-wasmtime-internal-jit-debug")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-internal-jit-debug" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0v15dyr3vb6djs4r7awmz32g4hglnbinwyvpi27g8gdbjlwnkn31"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-cc" ,rust-cc-1)
                       ("rust-object" ,rust-object-0.36)
                       ("rust-rustix" ,rust-rustix-1)
                       ("rust-wasmtime-internal-versioned-export-macros" ,rust-wasmtime-internal-versioned-export-macros-35)
                       ("rust-wasmtime-internal-versioned-export-macros" ,rust-wasmtime-internal-versioned-export-macros-35))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "INTERNAL: JIT debug interfaces support for Wasmtime")
    (description
     "This package provides INTERNAL: JIT debug interfaces support for Wasmtime.")
    (license (list license:asl2.0))))

(define-public rust-wasmtime-internal-jit-icache-coherence-35
  (package
    (name "rust-wasmtime-internal-jit-icache-coherence")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-internal-jit-icache-coherence" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0l3gy4jqfawrr8h2d2yp25zqv6x3az3m423pv63zzfl0gxmy05s4"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-windows-sys" ,rust-windows-sys-0.59))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "INTERNAL: Utilities for JIT icache maintenance")
    (description
     "This package provides INTERNAL: Utilities for JIT icache maintenance.")
    (license (list license:asl2.0))))

(define-public rust-wasmtime-internal-math-35
  (package
    (name "rust-wasmtime-internal-math")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-internal-math" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "04k6mfbdasjpsldf2cz9izyd2qls1b1ms7nigy9759ysxk2da43p"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-libm" ,rust-libm-0.2))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "INTERNAL: Low-level math routines used in Wasmtime")
    (description
     "This package provides INTERNAL: Low-level math routines used in Wasmtime.")
    (license (list license:asl2.0))))

(define-public rust-wasmtime-internal-slab-35
  (package
    (name "rust-wasmtime-internal-slab")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-internal-slab" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0fy5vpxx2kbgp9lx2zzd4b93mx5cvs4wsizx06mjgv8ypvx25az6"))))
    (build-system cargo-build-system)
    (arguments
     `())
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "INTERNAL: Uni-typed slab with a free list for use in Wasmtime")
    (description
     "This package provides INTERNAL: Uni-typed slab with a free list for use in Wasmtime.")
    (license (list license:asl2.0))))

(define-public rust-wasmtime-internal-unwinder-35
  (package
    (name "rust-wasmtime-internal-unwinder")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-internal-unwinder" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1k4fldms8hxh8y3ri9w8h38pv0xw5jgkvyxv3ffg3p7m0brhhxrh"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-cranelift-codegen" ,rust-cranelift-codegen-0.122)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-object" ,rust-object-0.36))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "INTERNAL: Wasmtime's unwind format and unwinder")
    (description
     "This package provides INTERNAL: Wasmtime's unwind format and unwinder.")
    (license (list license:asl2.0))))

(define-public rust-wasmtime-internal-versioned-export-macros-35
  (package
    (name "rust-wasmtime-internal-versioned-export-macros")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-internal-versioned-export-macros" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "05mhnnl72bylpi42azan51q91qfyzrsl24cyvsj1fwibz5k08arl"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "INTERNAL: Macros for defining versioned exports in Wasmtime")
    (description
     "This package provides INTERNAL: Macros for defining versioned exports in Wasmtime.")
    (license (list license:asl2.0))))

(define-public rust-wasmtime-internal-winch-35
  (package
    (name "rust-wasmtime-internal-winch")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-internal-winch" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0c2py13z18wp6n3wq1papfcz3l5rp8f1wshv5ymimf959hwff4i0"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-cranelift-codegen" ,rust-cranelift-codegen-0.122)
                       ("rust-gimli" ,rust-gimli-0.31)
                       ("rust-object" ,rust-object-0.36)
                       ("rust-target-lexicon" ,rust-target-lexicon-0.13)
                       ("rust-wasmparser" ,rust-wasmparser-0.235)
                       ("rust-wasmtime-environ" ,rust-wasmtime-environ-35)
                       ("rust-wasmtime-internal-cranelift" ,rust-wasmtime-internal-cranelift-35)
                       ("rust-winch-codegen" ,rust-winch-codegen-35))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "INTERNAL: Integration between Wasmtime and Winch")
    (description
     "This package provides INTERNAL: Integration between Wasmtime and Winch.")
    (license (list license:asl2.0))))

(define-public rust-wasmtime-internal-wit-bindgen-35
  (package
    (name "rust-wasmtime-internal-wit-bindgen")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-internal-wit-bindgen" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "022am41ds4gdf5khyvpgj4pcj7wxka02234vabnfcq2v9ba5gq0s"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-heck" ,rust-heck-0.5)
                       ("rust-indexmap" ,rust-indexmap-2)
                       ("rust-wit-parser" ,rust-wit-parser-0.235))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "INTERNAL: `*.wit` support for the `wasmtime` crate's macros")
    (description
     "This package provides INTERNAL: `*.wit` support for the `wasmtime` crate's macros.")
    (license (list license:asl2.0))))

(define-public rust-wasmtime-internal-wmemcheck-35
  (package
    (name "rust-wasmtime-internal-wmemcheck")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-internal-wmemcheck" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0y3kl1vacad7l8k934c1s1fpn56zp6l8xa44yljdj8rv8idg3hyh"))))
    (build-system cargo-build-system)
    (arguments
     `())
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "INTERNAL: Memcheck implementation for Wasmtime")
    (description
     "This package provides INTERNAL: Memcheck implementation for Wasmtime.")
    (license (list license:asl2.0))))

(define-public rust-wasmtime-jit-debug-29
  (package
    (name "rust-wasmtime-jit-debug")
    (version "29.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-jit-debug" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0spmc3laaava7a0bx8qryjnfq2kcqc3yfbf2r0shrq2yi9462yry"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-object" ,rust-object-0.36)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-wasmtime-versioned-export-macros" ,rust-wasmtime-versioned-export-macros-29))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "JIT debug interfaces support for Wasmtime")
    (description
     "This package provides JIT debug interfaces support for Wasmtime.")
    (license license:asl2.0)))

(define-public rust-wasmtime-jit-icache-coherence-29
  (package
    (name "rust-wasmtime-jit-icache-coherence")
    (version "29.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-jit-icache-coherence" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1la7aw71kavh11d9k9nig7nbv2pd9xq72c99wp1fd4hnw198appc"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-windows-sys" ,rust-windows-sys-0.59))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Utilities for JIT icache maintenance")
    (description "This package provides Utilities for JIT icache maintenance.")
    (license license:asl2.0)))

(define-public rust-wasmtime-math-29
  (package
    (name "rust-wasmtime-math")
    (version "29.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-math" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "05yy3npnfk6h199bvibjm00yqf8g12pysp30ai6hzq15mb10w899"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-libm" ,rust-libm-0.2))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Low-level math routines used in Wasmtime")
    (description
     "This package provides Low-level math routines used in Wasmtime.")
    (license license:asl2.0)))

(define-public rust-wasmtime-slab-29
  (package
    (name "rust-wasmtime-slab")
    (version "29.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-slab" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1kswbqx53kcnsgd78nnvafh2jxydsnrqn5bvphaaq17sjqd85dgw"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Uni-typed slab with a free list for use in Wasmtime")
    (description
     "This package provides Uni-typed slab with a free list for use in Wasmtime.")
    (license license:asl2.0)))

(define-public rust-wasmtime-versioned-export-macros-29
  (package
    (name "rust-wasmtime-versioned-export-macros")
    (version "29.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-versioned-export-macros" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0nvvm5xh6yclnf7511cnvzfi79l710lwhh6yc8229h3d47dqdzw6"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Macros for defining versioned exports in Wasmtime")
    (description
     "This package provides Macros for defining versioned exports in Wasmtime.")
    (license license:asl2.0)))

(define-public rust-wasmtime-wasi-35
  (package
    (name "rust-wasmtime-wasi")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-wasi" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0p153ydkic28m09fwb7nmqd7cac46bl8zi0d69wvkdiq8k2jn9bd"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-async-trait" ,rust-async-trait-0.1)
                       ("rust-bitflags" ,rust-bitflags-2)
                       ("rust-bytes" ,rust-bytes-1)
                       ("rust-cap-fs-ext" ,rust-cap-fs-ext-3)
                       ("rust-cap-net-ext" ,rust-cap-net-ext-3)
                       ("rust-cap-rand" ,rust-cap-rand-3)
                       ("rust-cap-std" ,rust-cap-std-3)
                       ("rust-cap-time-ext" ,rust-cap-time-ext-3)
                       ("rust-fs-set-times" ,rust-fs-set-times-0.20)
                       ("rust-futures" ,rust-futures-0.3)
                       ("rust-io-extras" ,rust-io-extras-0.18)
                       ("rust-io-lifetimes" ,rust-io-lifetimes-2)
                       ("rust-rustix" ,rust-rustix-1)
                       ("rust-system-interface" ,rust-system-interface-0.27)
                       ("rust-thiserror" ,rust-thiserror-2)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tracing" ,rust-tracing-0.1)
                       ("rust-url" ,rust-url-2)
                       ("rust-wasmtime" ,rust-wasmtime-35)
                       ("rust-wasmtime-wasi-io" ,rust-wasmtime-wasi-io-35)
                       ("rust-wiggle" ,rust-wiggle-35)
                       ("rust-windows-sys" ,rust-windows-sys-0.59))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "WASI implementation in Rust")
    (description "This package provides WASI implementation in Rust.")
    (license (list license:asl2.0))))

(define-public rust-wasmtime-wasi-29
  (package
    (name "rust-wasmtime-wasi")
    (version "29.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-wasi" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "190cgq4k8r6nwxhv1f91isf2p6dbjnb1yyma9p3xl6xbzjdyc6wd"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-async-trait" ,rust-async-trait-0.1)
                       ("rust-bitflags" ,rust-bitflags-2)
                       ("rust-bytes" ,rust-bytes-1)
                       ("rust-cap-fs-ext" ,rust-cap-fs-ext-3)
                       ("rust-cap-net-ext" ,rust-cap-net-ext-3)
                       ("rust-cap-rand" ,rust-cap-rand-3)
                       ("rust-cap-std" ,rust-cap-std-3)
                       ("rust-cap-time-ext" ,rust-cap-time-ext-3)
                       ("rust-fs-set-times" ,rust-fs-set-times-0.20)
                       ("rust-futures" ,rust-futures-0.3)
                       ("rust-io-extras" ,rust-io-extras-0.18)
                       ("rust-io-lifetimes" ,rust-io-lifetimes-2)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-system-interface" ,rust-system-interface-0.27)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tracing" ,rust-tracing-0.1)
                       ("rust-trait-variant" ,rust-trait-variant-0.1)
                       ("rust-url" ,rust-url-2)
                       ("rust-wasmtime" ,rust-wasmtime-29)
                       ("rust-wiggle" ,rust-wiggle-29)
                       ("rust-windows-sys" ,rust-windows-sys-0.59))
       #:cargo-development-inputs (("rust-tempfile" ,rust-tempfile-3)
                                   ("rust-test-log" ,rust-test-log-0.2)
                                   ("rust-tokio" ,rust-tokio-1)
                                   ("rust-tracing-subscriber" ,rust-tracing-subscriber-0.3)
                                   ("rust-wasmtime" ,rust-wasmtime-29))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "WASI implementation in Rust")
    (description "This package provides WASI implementation in Rust.")
    (license license:asl2.0)))

(define-public rust-wasmtime-wasi-io-35
  (package
    (name "rust-wasmtime-wasi-io")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-wasi-io" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0dfmvgrbasl0437yzbcs657qh3xhiw84kbjr4l80lrdyvavn89kv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-async-trait" ,rust-async-trait-0.1)
                       ("rust-bytes" ,rust-bytes-1)
                       ("rust-futures" ,rust-futures-0.3)
                       ("rust-wasmtime" ,rust-wasmtime-35))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis
     "wasi-io common traits to be shared among other wasi implementations")
    (description
     "This package provides wasi-io common traits to be shared among other wasi implementations.")
    (license (list license:asl2.0))))

(define-public rust-wasmtime-winch-29
  (package
    (name "rust-wasmtime-winch")
    (version "29.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-winch" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "13yg8dx7nf37fp6syyj8i2cyaak8sgmbk4hhv3hxa0h5yawbzfpx"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-cranelift-codegen" ,rust-cranelift-codegen-0.116)
                       ("rust-gimli" ,rust-gimli-0.31)
                       ("rust-object" ,rust-object-0.36)
                       ("rust-target-lexicon" ,rust-target-lexicon-0.13)
                       ("rust-wasmparser" ,rust-wasmparser-0.221)
                       ("rust-wasmtime-cranelift" ,rust-wasmtime-cranelift-29)
                       ("rust-wasmtime-environ" ,rust-wasmtime-environ-29)
                       ("rust-winch-codegen" ,rust-winch-codegen-29))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Integration between Wasmtime and Winch")
    (description
     "This package provides Integration between Wasmtime and Winch.")
    (license license:asl2.0)))

(define-public rust-wasmtime-wit-bindgen-29
  (package
    (name "rust-wasmtime-wit-bindgen")
    (version "29.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-wit-bindgen" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1rh6ds0kcslrwks8k7rz6hand5c4myjx7if1wdwxpr6i5nf32n43"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-heck" ,rust-heck-0.5)
                       ("rust-indexmap" ,rust-indexmap-2)
                       ("rust-wit-parser" ,rust-wit-parser-0.221))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Internal `*.wit` support for the `wasmtime` crate's macros")
    (description
     "This package provides Internal `*.wit` support for the `wasmtime` crate's macros.")
    (license license:asl2.0)))

(define-public rust-wasmtime-wmemcheck-29
  (package
    (name "rust-wasmtime-wmemcheck")
    (version "29.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasmtime-wmemcheck" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0xr8c79cvb4hkwpy9pj8vfwmv8y1nb9qfxnqx2ahcg7fbrn8z617"))))
    (build-system cargo-build-system)
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Memcheck implementation for Wasmtime")
    (description "This package provides Memcheck implementation for Wasmtime.")
    (license license:asl2.0)))

;; Unresolved import.
(define-public rust-wast-235
  (package
    (name "rust-wast")
    (version "235.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wast" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "04rfwxfr5y0ac9grps5cllqhw379pd7vwvrspchr1j96ys9l5nhy"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-bumpalo" ,rust-bumpalo-3)
                       ("rust-gimli" ,rust-gimli-0.31)
                       ("rust-leb128fmt" ,rust-leb128fmt-0.1)
                       ("rust-libtest-mimic" ,rust-libtest-mimic-0.8)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-unicode-width" ,rust-unicode-width-0.2)
                       ("rust-wasm-encoder" ,rust-wasm-encoder-0.235))))
    (home-page
     "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wast")
    (synopsis
     "Customizable Rust parsers for the WebAssembly Text formats WAT and WAST")
    (description
     "This package provides Customizable Rust parsers for the @code{WebAssembly} Text formats WAT and WAST.")
    (license (list license:asl2.0 license:asl2.0 license:expat))))

(define-public rust-wast-35
  (package
    (name "rust-wast")
    (version "35.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wast" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0s2d43g326dw21bygpalzjnr1fi83lx4afimg1h5hilrnkql1w9f"))))
    (build-system cargo-build-system)
    (arguments
     `( ;Unresolved import.
        #:skip-build? #t
       #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-leb128" ,rust-leb128-0.2))))
    (home-page
     "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wast")
    (synopsis
     "Customizable Rust parsers for the WebAssembly Text formats WAT and WAST")
    (description
     "This package provides Customizable Rust parsers for the @code{WebAssembly} Text formats WAT and WAST.")
    (license (list license:asl2.0))))

(define-public rust-wat-1
  (package
    (name "rust-wat")
    (version "1.235.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wat" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1ah6y8p54r1jfa6rxv1l3z8w6zijhn7vj85jdawkqy8mf4rf0xz7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-wast" ,rust-wast-235))))
    (home-page
     "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wat")
    (synopsis "Rust parser for the WebAssembly Text format, WAT")
    (description
     "This package provides Rust parser for the @code{WebAssembly} Text format, WAT.")
    (license (list license:asl2.0 license:asl2.0 license:expat))))

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
     `(#:cargo-inputs (("rust-js-sys" ,rust-js-sys-0.3.77)
                       ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2.100))
       #:cargo-development-inputs (("rust-futures" ,rust-futures-0.3))))
    (home-page "https://rustwasm.github.io/wasm-bindgen/web-sys/index.html")
    (synopsis
     "Bindings for all Web APIs, a procedurally generated crate from WebIDL")
    (description
     "This package provides bindings for all Web APIs, a procedurally generated
crate from WebIDL.")
    (license (list license:expat license:asl2.0))))

(define-public rust-wiggle-35
  (package
    (name "rust-wiggle")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wiggle" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0z47l6w76zfq7bg0a3j08kvjjarg89vlyvj63sv3ayhirs0a8gpw"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-async-trait" ,rust-async-trait-0.1)
                       ("rust-bitflags" ,rust-bitflags-2)
                       ("rust-thiserror" ,rust-thiserror-2)
                       ("rust-tracing" ,rust-tracing-0.1)
                       ("rust-wasmtime" ,rust-wasmtime-35)
                       ("rust-wiggle-macro" ,rust-wiggle-macro-35)
                       ("rust-witx" ,rust-witx-0.9))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Runtime components of wiggle code generator")
    (description
     "This package provides Runtime components of wiggle code generator.")
    (license (list license:asl2.0))))

(define-public rust-wiggle-29
  (package
    (name "rust-wiggle")
    (version "29.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wiggle" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "07bmwswj7y8wpa01j95l514icnbrl2lj0ls6c7155732r5dz76jb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-async-trait" ,rust-async-trait-0.1)
                       ("rust-bitflags" ,rust-bitflags-2)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-tracing" ,rust-tracing-0.1)
                       ("rust-wasmtime" ,rust-wasmtime-29)
                       ("rust-wiggle-macro" ,rust-wiggle-macro-29)
                       ("rust-witx" ,rust-witx-0.9))
       #:cargo-development-inputs (("rust-proptest" ,rust-proptest-1)
                                   ("rust-tokio" ,rust-tokio-1)
                                   ("rust-wasmtime" ,rust-wasmtime-29))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Runtime components of wiggle code generator")
    (description
     "This package provides Runtime components of wiggle code generator.")
    (license license:asl2.0)))

(define-public rust-wiggle-generate-35
  (package
    (name "rust-wiggle-generate")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wiggle-generate" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0yax32l28s7q1fim2x483gc3jimj8q0vchflwl7rdkfa0awlbjff"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-heck" ,rust-heck-0.5)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2)
                       ("rust-witx" ,rust-witx-0.9))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Library crate for wiggle code generator")
    (description
     "This package provides Library crate for wiggle code generator.")
    (license license:asl2.0)))

(define-public rust-wiggle-generate-29
  (package
    (name "rust-wiggle-generate")
    (version "29.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wiggle-generate" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "00g12vfj0rfvzbq3c5cxgm057gg6mfn58jwg2g414fb70pfngwic"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-heck" ,rust-heck-0.5)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-shellexpand" ,rust-shellexpand-2)
                       ("rust-syn" ,rust-syn-2)
                       ("rust-witx" ,rust-witx-0.9))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Library crate for wiggle code generator")
    (description
     "This package provides Library crate for wiggle code generator.")
    (license license:asl2.0)))

(define-public rust-wiggle-macro-35
  (package
    (name "rust-wiggle-macro")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wiggle-macro" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "17yz63g94y8z7qlx1zn128d9bzz0mvampvz72kasqwrba6z2z1zm"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2)
                       ("rust-wiggle-generate" ,rust-wiggle-generate-35))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Wiggle code generator")
    (description "This package provides Wiggle code generator.")
    (license license:asl2.0)))

(define-public rust-wiggle-macro-29
  (package
    (name "rust-wiggle-macro")
    (version "29.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wiggle-macro" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0315xqcj3a4rw1d81848mc61237z2gvhjf3z6wnnr3hrsirw9i88"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2)
                       ("rust-wiggle-generate" ,rust-wiggle-generate-29))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Wiggle code generator")
    (description "This package provides Wiggle code generator.")
    (license license:asl2.0)))

(define-public rust-winch-codegen-35
  (package
    (name "rust-winch-codegen")
    (version "35.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "winch-codegen" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "11dm2c3c2rmnrccwxv0jrh4bmcgvlrkyf9ylvdl86bf6yx7376l3"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-cranelift-assembler-x64" ,rust-cranelift-assembler-x64-0.122)
                       ("rust-cranelift-codegen" ,rust-cranelift-codegen-0.122)
                       ("rust-gimli" ,rust-gimli-0.31)
                       ("rust-regalloc2" ,rust-regalloc2-0.12)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-target-lexicon" ,rust-target-lexicon-0.13)
                       ("rust-thiserror" ,rust-thiserror-2)
                       ("rust-wasmparser" ,rust-wasmparser-0.235)
                       ("rust-wasmtime-environ" ,rust-wasmtime-environ-35)
                       ("rust-wasmtime-internal-cranelift" ,rust-wasmtime-internal-cranelift-35)
                       ("rust-wasmtime-internal-math" ,rust-wasmtime-internal-math-35))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Winch code generation library")
    (description "This package provides Winch code generation library.")
    (license (list license:asl2.0))))

(define-public rust-winch-codegen-29
  (package
    (name "rust-winch-codegen")
    (version "29.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "winch-codegen" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1745a92ni167lczz20rc5vjld613m9x4id7l1aib0v7lqpr9x11g"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-cranelift-codegen" ,rust-cranelift-codegen-0.116)
                       ("rust-gimli" ,rust-gimli-0.31)
                       ("rust-regalloc2" ,rust-regalloc2-0.11)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-target-lexicon" ,rust-target-lexicon-0.13)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-wasmparser" ,rust-wasmparser-0.221)
                       ("rust-wasmtime-cranelift" ,rust-wasmtime-cranelift-29)
                       ("rust-wasmtime-environ" ,rust-wasmtime-environ-29))))
    (home-page "https://github.com/bytecodealliance/wasmtime")
    (synopsis "Winch code generation library")
    (description "This package provides Winch code generation library.")
    (license license:asl2.0)))

(define-public rust-windows-bindgen-0.60
  (package
    (inherit rust-windows-bindgen-0.58)
    (name "rust-windows-bindgen")
    (version "0.60.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows-bindgen" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0s32v8sl07s0gb0c8lspnl8d0dzcgj9bppg09dih1gflv408sbyp"))))))

(define-public rust-windows-link-0.1
  (package
    (name "rust-windows-link")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows-link" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0f2cq7imbrppsmmnz8899hfhg07cp5gq6rh0bjhb1qb6nwshk13n"))))
    (arguments
     ;; Tests probably require a Windows system.
     (list
      #:tests? #f))
    (build-system cargo-build-system)
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Linking for Windows")
    (description "This package provides linking for Windows.")
    (license (list license:expat license:asl2.0))))

(define-public rust-winx-0.36
  (package
    (name "rust-winx")
    (version "0.36.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "winx" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0bgls70sd0lxyhbklbs6ccchx0r2bbz0rcmgwxibhn0ryxvd6grz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-windows-sys" ,rust-windows-sys-0.59))))
    (home-page "https://github.com/sunfishcode/winx")
    (synopsis "Windows API helper library")
    (description "This package provides Windows API helper library.")
    (license license:asl2.0)))

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
       (snippet #~(begin
                    (delete-file "src/libwit_bindgen_cabi_realloc.a")))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-bitflags" ,rust-bitflags-2))))
    (home-page "https://github.com/bytecodealliance/wit-bindgen")
    (synopsis "Runtime support for the `wit-bindgen` crate")
    (description
     "This package provides runtime support for the `wit-bindgen` crate.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-wit-parser-0.235
  (package
    (name "rust-wit-parser")
    (version "0.235.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wit-parser" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0yn6vyrjf4pcp9n743va4d3fn4arm5bvi1pjk8jkx8q3gnl9a7qa"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-env-logger" ,rust-env-logger-0.11)
                       ("rust-id-arena" ,rust-id-arena-2)
                       ("rust-indexmap" ,rust-indexmap-2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-pretty-assertions" ,rust-pretty-assertions-1)
                       ("rust-semver" ,rust-semver-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-derive" ,rust-serde-derive-1)
                       ("rust-serde-json" ,rust-serde-json-1.0.141)
                       ("rust-unicode-xid" ,rust-unicode-xid-0.2)
                       ("rust-wasmparser" ,rust-wasmparser-0.235)
                       ("rust-wat" ,rust-wat-1))
       ;; Has tests that fai.
       #:tests? #f))
    (home-page
     "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wit-parser")
    (synopsis
     "Tooling for parsing `*.wit` files and working with their contents.")
    (description
     "This package provides Tooling for parsing `*.wit` files and working with their contents.")
    (license (list license:asl2.0 license:asl2.0 license:expat))))

(define-public rust-wit-parser-0.221
  (package
    (name "rust-wit-parser")
    (version "0.221.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wit-parser" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1b5j2vpiww0crqavaijw4vv1y41darpd38q7id9llsymkrbi4qc9"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-id-arena" ,rust-id-arena-2)
                       ("rust-indexmap" ,rust-indexmap-2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-semver" ,rust-semver-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-derive" ,rust-serde-derive-1)
                       ("rust-serde-json" ,rust-serde-json-1.0.141)
                       ("rust-unicode-xid" ,rust-unicode-xid-0.2)
                       ("rust-wasmparser" ,rust-wasmparser-0.221)
                       ("rust-wat" ,rust-wat-1))
       #:cargo-development-inputs (("rust-env-logger" ,rust-env-logger-0.11)
                                   ("rust-libtest-mimic" ,rust-libtest-mimic-0.7)
                                   ("rust-pretty-assertions" ,rust-pretty-assertions-1)
                                   ("rust-serde-json" ,rust-serde-json-1.0.141))))
    (home-page
     "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wit-parser")
    (synopsis
     "Tooling for parsing `*.wit` files and working with their contents.")
    (description
     "This package provides Tooling for parsing `*.wit` files and working with their contents.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-witx-0.9
  (package
    (name "rust-witx")
    (version "0.9.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "witx" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0jzgmayh2jjbv70jzfka38g4bk4g1fj9d0m70qkxpkdbbixg4rp3"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-wast" ,rust-wast-35))))
    (home-page "https://github.com/WebAssembly/WASI")
    (synopsis "Parse and validate witx file format")
    (description "This package provides Parse and validate witx file format.")
    (license license:asl2.0)))

(define-public rust-xdg-3
  (package
    (name "rust-xdg")
    (version "3.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "xdg" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1dc5jpkkylp7z54c4xwxzwxx1jb5cklwfjs5493k9y9d7wik7d1g"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-serde" ,rust-serde-1))
       ;; Tests fail.
       #:tests? #f))
    (home-page "https://github.com/whitequark/rust-xdg")
    (synopsis
     "library for storing and retrieving files according to XDG Base Directory specification")
    (description
     "This package provides a library for storing and retrieving files according to
XDG Base Directory specification.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-yubico-manager-0.9
  (package
    (name "rust-yubico-manager")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "yubico_manager" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "1vlf0vpfma3gfhlpdss9fhhmsispyakkzn9vd2w3cy7j3110jr7z"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-aes" ,rust-aes-0.7)
                       ("rust-bitflags" ,rust-bitflags-1)
                       ("rust-block-modes" ,rust-block-modes-0.8)
                       ("rust-hmac" ,rust-hmac-0.11)
                       ("rust-rand" ,rust-rand-0.8)
                       ("rust-rusb" ,rust-rusb-0.8)
                       ("rust-sha-1" ,rust-sha-1-0.9)
                       ("rust-structure" ,rust-structure-0.1))
       #:cargo-development-inputs (("rust-hex" ,rust-hex-0.3))))
    (home-page "https://github.com/wisespace-io/yubico-manager")
    (synopsis "Yubikey Challenge-Response & Configuration")
    (description
     "This package provides Yubikey Challenge-Response & Configuration.")
    (license (list license:expat license:asl2.0))))
