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

;; Module featuring assorted fonts, that cannot be included
;; due to licensing issues.

;;; Code:

(define-module (selected-guix-works packages fonts)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (gnu packages fonts)
  #:use-module (guix build-system font)
  #:use-module (guix build-system trivial)
  #:use-module ((guix licenses)
                #:prefix license:))

(define nerd-fonts-version
  "3.3.0")

(define (make-nerd-font pkg hash synopsis description)
  (package
    (name (string-append "font-nerd-fonts-"
                         (string-downcase pkg)))
    (version nerd-fonts-version)
    (source
     (origin
       (method url-fetch)
       (uri (string-append "https://github.com/ryanoasis/nerd-fonts/"
                           "releases/download/v"
                           version
                           "/"
                           pkg
                           ".zip"))
       (sha256
        (base32 hash))))
    (build-system font-build-system)
    (home-page "https://www.nerdfonts.com/")
    (synopsis synopsis)
    (description description)
    (license license:silofl1.1)))

;; Used fonts with reserved names and compound names.
(define (make-nerd-font-custom-name pkg custom-name hash synopsis description)
  (package
    (name (string-append "font-nerd-fonts-" custom-name))
    (version "3.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (string-append "https://github.com/ryanoasis/nerd-fonts/"
                           "releases/download/v"
                           version
                           "/"
                           pkg
                           ".zip"))
       (sha256
        (base32 hash))))
    (build-system font-build-system)
    (home-page "https://www.nerdfonts.com/")
    (synopsis synopsis)
    (description description)
    (license license:silofl1.1)))

;; All Nerd Fonts

(define-public font-nerd-fonts-0xproto
  (make-nerd-font "0xproto"
   "0ys8svpvcghn5sdly7njnlkvki26pdhpf43m5xwld2bfnbbbiplr"
   "Nerd Font patched version of 0xProto"
   "Nerd Fonts version of 0xProto, a programming font focused on
code legibility."))

(define-public font-nerd-fonts-3270
  (make-nerd-font "3270"
   "14zfh0r0a2849m66kl3q4rj74n05qahba4x0z00jm1pgbqfp1c2r"
   "Nerd Fonts patched version of x3270"
   "Nerd Fonts version of the font used in the
IBM 3270, an IBM machine introduced to the public in 1971."))

(define-public font-nerd-fonts-agave
  (make-nerd-font "agave"
   "0nyqgp6linw48idsb0mbnislmbzz1f7n6hhx0pjdmzyh8vm91v22"
   "Nerd Fonts patched version of Agave"
   "Nerd Fonts version of Agave, a monospace font focused on simplicity
and consistency.  Almost looks cartoonish."))

(define-public font-nerd-fonts-anonymice-pro
  (make-nerd-font-custom-name "anonymouspro" "anonymice-pro"
   "1h5abw6k9raplsn4m3i432ch109awjxb6pfpzxp3ph6xdskdv7vv"
   "Nerd Fonts patched version of Anonymous Pro"
   "Nerd Fonts version of Anonymous Pro, a font inspired by the
Anonymous 9, the bitmap font used in the Macintosh.

The package is named @code{anonymice-pro} because Anonymous Pro is a reserved name."))

(define-public font-nerd-fonts-arimo
  (make-nerd-font "arimo"
                  "0vxl4k3g017zv8sgzhb7mbjfrgczcxl0qi13rxk5h49ls5mjakph"
                  "Nerd Fonts patched version of Arimo"
                  "Nerd Fonts version of Arimo, a sans-serif font
metrically similar to Arial, which includes a
pan-European WGL character set."))

(define-public font-nerd-fonts-aurulent-sans-mono
  (make-nerd-font-custom-name "aurulentsansmono" "aurulent-sans-mono"
   "0wknyflvyvqsw0ybqs27n8wa78xl4503lw3lr5zqiyb44dl0blas"
   "Nerd Fonts patched version of Aurulent Sans Mono"
   "Nerd Fonts version of Aurulent Sans Mono, a sans-serif
font designed by Stephen G. Hartke."))

(define-public font-nerd-fonts-big-blue-terminal
  (make-nerd-font-custom-name "bigblueterminal" "big-blue-terminal"
   "1h8z1wl6wwz5xalkyxgnbkdikv28iya72sk6lbzm74b4lx7kixqv"
   "Nerd Fonts patched version of the IBM 8x14 charset"
   "Nerd Fonts version of the 8x14 character set once used by IBM."))

(define-public font-nerd-fonts-bitstrom-wera
  (make-nerd-font-custom-name "bitstreamverasansmono" "bitstrom-wera"
   "1x7n1zdly18m190b71s352j41z1wki3bsqrjf0bsndzfyrcqbx10"
   "Nerd Fonts patched version of Bitstream Vera Sans Mono"
   "Nerd Fonts version of Bitstream Vera Sans Mono,
a font originally designed by the (since 2012) defunct Bitstream Inc.  It features clearly distinguished
characters, such as a dotted zero.

The package is named @{bitstromwera} because Bitstream Vera Sans Mono is a reserved name."))

(define-public font-nerd-fonts-blex-mono
  (make-nerd-font-custom-name "ibmplexmono" "blex-mono"
   "18pf1alw3kjxkpx5fysdrlc3fm1q3f818682ps9g4jz9g83f90qw"
   "Nerd Fonts patched version of IBM Plex Mono"
   "Nerd Fonts version of IBM Plex Mono, a typeface
currently used by IBM.

The package is named @{blexmono} because IBM Plex Mono is a reserved name."))

;; CaskaydiaCove and CaskaydiaMono should be here,
;; but are excluded as the original Cascadia Code
;; already includes Nerd Fonts.

(define-public font-nerd-fonts-code-new-roman
  (make-nerd-font-custom-name "CodeNewRoman" "code-new-roman"
   "0jdg0hya4msmx4m2lcsibvg3bdjk2ll8q1xx3vpqmxyl5m1l0v6f"
   "Nerd Fonts patched version of Code New Roman"
   "Nerd Fonts version of Code New Roman, a programming font
designed to be compact and to have easily distinguishable characters."))

(define-public font-nerd-fonts-comic-shanns-mono
  (make-nerd-font-custom-name "ComicShannsMono" "comic-shanns-mono"
   "0rzpnqagn4l9wr9x5agd5s9j8ysg3ag5ksiv88b6wv0pbdxkjxk0"
   "Nerd Fonts patched version of Comic Shanns"
   "Nerd Fonts version of Comic Shanns, a Comic Sans inspired
monospace font designed for programming."))

(define-public font-nerd-fonts-commit-mono
  (make-nerd-font-custom-name "commitmono" "commit-mono"
   "0bxk8mqalg2sf8pnm85p083imcjcnzz4h5lg0920dljqbz95w1gj"
   "Nerd Fonts patched version of Commit Mono"
   "Nerd Fonts version of Commit Mono, a programming font designed
to be as neutral as possible, so one can rather focus on the code.
It also features smart kerning, to automatically improve the spacing
between characters."))

(define-public font-nerd-fonts-cousine
  (make-nerd-font "cousine"
   "0pq4ixs0jq6xr7cjaahdim8nnpywknbr6431yk18wikivca9hx6i"
   "Nerd Fonts patched version of Cousine"
   "Nerd Fonts version of Cousine, a font metrically compatible
with Courier New, but offering improved on-screen readability."))

(define-public font-nerd-fonts-d2-coding-ligature
  (make-nerd-font-custom-name "d2coding" "d2-coding-ligature"
   "1x60lpkf4aqf1yc4015ks1kpz9nfz81plgpsdhinps30zq7jgi28"
   "Nerd Fonts patched version of D2 Coding Ligature"
   "Nerd Fonts version of D2 Coding Ligature, a ligaturized
version of the D2 Coding font, designed for koreans working with code.

Contains ligatures."))

(define-public font-nerd-fonts-daddytimemono
  (make-nerd-font "daddytimemono"
   "0fhall4s0nl2bc3zfdpxjpkndkl6n8yrgw1bk2wcakaypa1lyl31"
   "Nerd Fonts patched version of Daddy Time Mono"
   "Nerd Fonts version of Daddy Time Mono, a programming font."))

(define-public font-nerd-fonts-departure-mono
  (make-nerd-font-custom-name "departuremono" "departure-mono"
   "1zvacf3x1886b5f4xfsh8qp00nblizkayjpcrwr3cvsarl3z68a7"
   "Nerd Fonts patched version of Departure Mono"
   "Nerd Fonts version of Departure Mono, a pixel font designed
for nostalgia."))

(define-public font-nerd-fonts-dejavu-sans-mono
  (make-nerd-font-custom-name "dejavusansmono" "dejavu-sans-mono"
   "1h862406lg7ggcxdcxkygclfgjqk3r2xz8y8lnvqfd2dpm133qgz"
   "Nerd Fonts patched version of Dejavu Sans Mono"
   "Nerd Fonts version of Dejavu Sans Mono, a font inspided
by the Bitstream Vera family, but with the goal of providing a wider range of characters."))

(define-public font-nerd-fonts-droid-sans-mono
  (make-nerd-font-custom-name "droidsansmono" "droid-sans-mono"
   "18hfqhrqfb8z3r4gkmjlv6l9xvgrpkd97ahk2j8fx89qbpa3mab0"
   "Nerd Fonts patched version of Droid Sans Mono"
   "Nerd Fonts version of Droid Sans Mono, the monospaced version
of the Droid font fimaly.  The Droid family was first released in 2007 for use in Android."))

(define-public font-nerd-fonts-envycoder
  (make-nerd-font "envycoder"
   "1xqnpi8rmcshz4wglqvzqzbn0bi6z1blqg244vczmfgjjd2xh10l"
   "Nerd Fonts patched version of Envy Code R"
   "Nerd Fonts version of Envy Code R, a font designed for programming and
working with a terminal.

The package is named @code{envycoder} because Envy Code R is a reserved name."))

(define-public font-nerd-fonts-fantasque-sans-mono
  (make-nerd-font-custom-name "fantasquesansmono" "fantasque-sans-mono"
   "1r9z57k5k191lb19i85qg42zawnm1vwrrvnq7nvabywcwq66d6l4"
   "Nerd Fonts patched version of Fantasque Sans Mono"
   "Nerd Fonts version of Fantasque Sans Mono, a font
designed for a handwritten look.  It's inspired by Inconsolata and Monaco.

Contains ligatures."))

(define-public font-nerd-fonts-fira-code
  (make-nerd-font-custom-name "firacode" "fira-code"
   "15xks0619yip4gkgwandn529fmk1v5g1s5irlf34410dhxpqx5w9"
   "Nerd Fonts patched version of Fira Code"
   "Nerd Fonts version of Fira Code, a programming font
containing various ligatures."))

(define-public font-nerd-fonts-fira-mono
  (make-nerd-font-custom-name "firamono" "fira-mono"
   "0jiacwyylzwzw7gp06sqqh8dr6jy5ljmjd69ad9300kk7nh6w109"
   "Nerd Fonts patched version of Fira Mono"
   "Nerd Fonts version of Fira Mono, a typeface used by Mozilla."))

(define-public font-nerd-fonts-geist-mono
  (make-nerd-font-custom-name "geistmono" "geist-mono"
   "0z4y84ag56lgfhqw5l2l332narli09ln1zyl1yl8n44dxc9q1pcq"
   "Nerd Fonts patched version of Geist Mono"
   "Nerd Fonts version of Geist Mono, a programming font.

Contains ligatures."))

(define-public font-nerd-fonts-go-mono
  (make-nerd-font "go-mono"
                  "14ypxgx5qrdzpnp8fm0qc9jmcwbh1qlghs8aqsj9vzzv1n6v995v"
                  "Nerd Fonts patched version of Go Mono"
                  "Nerd Fonts version of Go Mono, a font designed for the Go
programming language."))

(define-public font-nerd-fonts-gohu
  (make-nerd-font "gohu"
                  "0y9ykn3cx9gxha2rbw2clwiw8w4f2m0jr5dg1954n8kcfgmj7bz3"
                  "Nerd Fonts patched version of Gohu"
                  "Nerd Fonts version of Gohu, a monospaced, bitmap font."))

(define-public font-nerd-fonts-hack
  (make-nerd-font "hack"
                  "13bv7kin842k3bwvj3z9dqyyqz6rchnj9prvvaq2bxpg0m31b7m0"
                  "Nerd Fonts patched version of Hack"
                  "Nerd Fonts version of Hack, a font that expands on
Bitstream Vera and DejaVu.  Designed for programming."))

(define-public font-nerd-fonts-hasklug
  (make-nerd-font-custom-name "hasklig" "hasklug"
   "1z6yzkrydbfj3xd6mv6w6whp97hwf8ky7q4p7k4pvvbqs9ws50dd"
   "Nerd Fonts patched version of Hasklig"
   "Nerd Fonts version of Hasklig, a font designed for the
Haskell programming language.

The package is named @code{hasklug} because Hasklig is a reserved name.

Contains ligatures."))

(define-public font-nerd-fonts-heavy-data
  (make-nerd-font-custom-name "heavydata" "heavy-data"
   "1bwpai3bl7ypkigg74lqm1r77xqj7bz4xpibmi8xjkj0l1kgl5b8"
   "Nerd Fonts patched version of Heavy Data"
   "Nerd Fonts version of Heavy Data, a cartoonish font with a
unique design."))

(define-public font-nerd-fonts-hurmit
  (make-nerd-font-custom-name "hermit" "hurmit"
   "1diq63ks9g86nc2ix5vq3lrs08phki9hixggjp3z5mb40jlpl7ya"
   "Nerd Fonts patched version of Hermit"
   "Nerd Fonts version of Hermit, a programming font designed
to have symbols clearly distinguishable from regular text.

The package is named @code{hurmit} because Hermit is a reserved name."))

(define-public font-nerd-fonts-im-writing
  (make-nerd-font-custom-name "ia-writer" "im-writing"
   "18a5xjhcj720hz9c01aqgsy25fmqcljg4b5m5av2ahfgi39ml071"
   "Nerd Fonts patched version of iA Writer"
   "Nerd Fonts version of iA Writer, a heavily modified version of
IBM's Plex font.  Use on the proprietraary document software iA Writer.

The package is named @code{im-writing} because iA Writer is a reserved name."))

(define-public font-nerd-fonts-inconsolata
  (make-nerd-font "inconsolata"
   "175689wdlb53j7gi1m39axz1z04jffjaf4aib9yxingni61gcywq"
   "Nerd Fonts patched version of Inconsolata"
   "Nerd Fonts version of Inconsolata, a programming font inspired by the
proprietary font Consolas."))

(define-public font-nerd-fonts-inconsolatago
  (make-nerd-font "inconsolatago"
   "158zx4xzii9x36id2nk81zmrliq5mjin2064v1d2drk3n6zm8gdw"
   "Nerd Fonts patched version of InconsolataGo"
   "Nerd Fonts version of InconsolataGo, an alternative version of
Inconsolata which features stratight quotes."))

(define-public font-nerd-fonts-inconsolata-lgc
  (make-nerd-font-custom-name "inconsolatalgc" "inconsolata-lgc"
   "0d516kjjvk2h21x1x2r8c9r236khylda51lgzsv19znnx5c09hqj"
   "Nerd Fonts patched version of Inconsolata LGC"
   "Nerd Fonts version of Inconsolata LGC, an alternative version of
Inconsolata that features the Cyrillic alphabet."))

(define-public font-nerd-fonts-intone-mono
  (make-nerd-font-custom-name "intelonemono" "intone-mono"
   "1kjqd425cbi6335ap6maxwqia4f7vvpl60srg6g7c406v59md4qa"
   "Nerd Fonts patched version of Intel One Mono"
   "Nerd Fonts version of Intel One Mono, a programming font
designed by Intel with low-vision and legally blind developers in mind.  The highlight is
definitely the design of the curly brackets, which are really exaggerated."))

(define-public font-nerd-fonts-iosevka
  (make-nerd-font "iosevka"
                  "10w24pir4flr0zhm0n6v6kblgmcx7dpnqv2xkp8d0rgh3rnlwpm5"
                  "Nerd Fonts patched version of Iosevka"
                  "Nerd Fonts version of Iosevka, a programming font.

Contains ligatures."))

(define-public font-nerd-fonts-iosevka-term
  (make-nerd-font-custom-name "iosevkaterm" "iosevka-term"
   "0bjvq2k7n65nan0vvdhbgicd114hjx5v5i8wwi47cykfkcp58s7r"
   "Nerd Fonts patched version of Iosevka Term"
   "Nerd Fonts version of Iosevka Term, an Iosevka
variant for working on the terminal.

Contains ligatures."))

(define-public font-nerd-fonts-iosevka-term-slab
  (make-nerd-font-custom-name "iosevkatermslab" "iosevka-term-slab"
   "03n3a0damfq3gxry4jgbqrya4qa0mrc3xrfg72q87h5x2v94n54i"
   "Nerd Fonts patched version of Iosevka Term Slab"
   "Nerd Fonts version of Iosevka Term Slab,
an Iosevka variant for working on the terminal, featuring slab serifs.

Contains ligatures."))

(define-public font-nerd-fonts-jetbrains-mono
  (make-nerd-font-custom-name "jetbrainsmono" "jetbrains-mono"
   "1r6v5naj0g6wkhpr53zc7rygg9s199h81s7wf3x4nq0b6lm7i0rd"
   "Nerd Fonts patched version of JetBrains Mono"
   "Nerd Fonts version of JetBrains Mono, a programming font
designed by JetBrains, famous for their suite of IDEs.

Contains ligatures."))

(define-public font-nerd-fonts-lekton
  (make-nerd-font "lekton"
   "1jpjfvxfpcx9y2xkr4icnnvlyhz6imph5rwbdacn9fqjix2k6sph"
   "Nerd Fonts patched version of Lekton"
   "Nerd Fonts version of Lekton, a font designed inj Italy, inspired bu
the typefaces used on the Olivetti typewritters."))

(define-public font-nerd-fonts-literation-mono
  (make-nerd-font-custom-name "liberationmono" "literation-mono"
   "1mz9wi4wgjrfbf9xwmqd2kpwl6k21cnzqmlz6y3wg4swvrp52dip"
   "Nerd Fonts patched version of Liberation Mono"
   "Nerd Fonts version of Liberation Mono, a member of the
Liberation font family, designed for compatibility with the most popular Microsoft Windows
fonts.

The package is named code@{literation-mono} because Liberation Mono is a reserved name."))

(define-public font-nerd-fonts-lilex
  (make-nerd-font "lilex"
   "0bx802vlpd975giligcv7fgqkg389sks93lpi2lhfxl6ngq2xbfg"
   "Nerd Fonts patched version of Lilex"
   "Nerd Fonts version of Lilex, a programming font that extends IBM Plex Mono.

Contains ligatures."))

(define-public font-nerd-fonts-martian-mono
  (make-nerd-font-custom-name "martianmono" "martian-mono"
   "1cj3yarlp3h2hsj61wg2r1v70z7mix5kd42gdqq9n0d3waf56vkh"
   "Nerd Fonts patched version of Martian Mono"
   "Nerd Fonts version of Martian Mono, a design font
which is a monospaced version of the Martian Grotesk font."))

(define-public font-nerd-fonts-meslo-lg
  (make-nerd-font-custom-name "meslo" "meslo-lg"
   "13k446z6abxdwb8406yhbb5g7gswhwxnqap5wp67ajvhv9r3lb9j"
   "Nerd Fonts patched version of Meslo LG"
   "Nerd Fonts version of Meslo LG, a programming font
which is a customized version of Apple's Menlo font (which, in turn, comes descends from
Bitstream Vera Sans Mono).  The LG in the name stands for \"Line Gap\", as it features
variants for control over vertical spacing."))

(define-public font-nerd-fonts-monaspice
  (make-nerd-font-custom-name "monaspace" "monaspice"
   "0nclxqjbpd4iaxrrn1szcv0s2zlc025hw36snqlm101m6lrkp8ci"
   "Nerd Fonts patched version of Monaspace"
   "Nerd Fonts version of Monaspace, a programming font
that features texture healing.  Texture healing is a technique that evens out the density
of monospaced text, providing better proportions.

The package is named @code{monaspice} because Monaspace is a reserved name."))

(define-public font-nerd-fonts-monofur
  (make-nerd-font "monofur"
   "1h29m9gcg3xyplix5m3lspx1vg91h8qwklfyzqm4g8wwgiyzz5yk"
   "Nerd Fonts patched version of Monofur"
   "Nerd Fonts version of Monofur, a font with compact characters."))

(define-public font-nerd-fonts-monoid
  (make-nerd-font "monoid"
                  "08r6srlpq1zmj3bf0kalzbx862416qpmg8wb55kmjqzjl059qg7z"
                  "Nerd Fonts patched version of Monoid"
                  "Nerd Fonts version of Monoid, a programming font.

Contains ligatures."))

(define-public font-nerd-fonts-mononoki
  (make-nerd-font "mononoki"
   "13wxhxaxmpi7cl5hzb1vav589qy69zb81p3sxycqddl3djfl3wmp"
   "Nerd Fonts patched version of Mononoki"
   "Nerd Fonts version of Mononoki, a programming font.

Despite having a reserved name, the Nerd Fonts version uses the same name."))

(define-public font-nerd-fonts-m-plus
  (make-nerd-font-custom-name "mplus" "m-plus"
   "0lmr2fjyn0iwnh6g9h5547lw7ma5ni75k0y537slaz3kcw8bk19z"
   "Nerd Fonts patched version of M+"
   "Nerd Fonts version of M+, a programming font
featuring japaneses glyphs."))

(define-public font-nerd-fonts-noto
  (make-nerd-font "noto"
   "14mna22dam0kx0axi53rjvkr97wlv161a9w2ap771890cjxnw70k"
   "Nerd Fonts patched version of Noto"
   "Nerd Fonts version of Noto, Google's standard font family."))

(define-public font-nerd-fonts-opendyslexic
  (make-nerd-font "opendyslexic"
   "06v4iizzjj6ljvj68vv3rb4dl51dm8gsccx524zz0bp73f9f57gb"
   "Nerd Fonts patched version of OpenDyslexic"
   "Nerd Fonts version of OpenDyslexic, a font designed for those
with Dyslexia."))

(define-public font-nerd-fonts-overpass
  (make-nerd-font "overpass"
                  "0yxng4774m5crwnq15rjf0rilj8nqcnvs87pykv7z1pj8xjvpjv9"
                  "Nerd Fonts patched version of Overpass"
                  "Nerd Fonts version of Overpass, a font inspired by
Highway Gothic."))

(define-public font-nerd-fonts-profont
  (make-nerd-font "profont"
   "1pfyav9cs7pwkq6pifrvmmbnl25hc6y8mwyjvdkr6j2nm3lrpskl"
   "Nerd Fonts patched version of ProFont"
   "Nerd Fonts version of ProFont, a programming font.
Looks best with anti-aliasing turned off, as it features some sharp characters."))

(define-public font-nerd-fonts-proggy-clean
  (make-nerd-font-custom-name "proggyclean" "proggy-clean"
   "1qlb0s8gc7kl4rh5jzm1zwwr7x1362xvnzcvqjm31lzxdhajamip"
   "Nerd Fonts patched version of Proggy Clean"
   "Nerd Fonts version of Proggy Clean, a bitmap programming
font."))

(define-public font-nerd-fonts-recursive-mono
  (make-nerd-font-custom-name "recursive" "recursive-mono"
   "01zf2japw3lnwsm3i4d8wc06zc0jc84zi5i641prqwd1894allm0"
   "Nerd Fonts patched version of Recursive Mono"
   "Nerd Fonts version of Recursive Mono, a programming font
inspired by casual script signpainting."))

(define-public font-nerd-fonts-roboto-mono
  (make-nerd-font-custom-name "robotomono" "roboto-mono"
   "1ak5cz2qyp99850n7zaz52p2hk86w2z5aqziawr4nizp50r39dn8"
   "Nerd Fonts patched version of Roboto Mono"
   "Nerd Fonts version of the monospaced member of the
Roboto font family."))

(define-public font-nerd-fonts-shure-tech-mono
  (make-nerd-font-custom-name "ShareTechMono" "shure-tech-mono"
   "09nbv8g8mg4kbnkqs1rvvn2fw4xibbmrn9v231ci3dywlz0ag3qj"
   "Nerd Fonts patched version of Share Tech Mono"
   "Nerd Fonts version of Share Tech Mono,
a font featuring distinct characters.

The package is named @code{shure-tech-mono} because Share Tech Mono is a reserved name."))

(define-public font-nerd-fonts-sauce-code-pro
  (make-nerd-font-custom-name "SourceCodePro" "sauce-code-pro"
   "1ihaz75xfka66cwzb086dw5wrk6skjm2sxnbszvmgiabl2yx3gji"
   "Nerd Fonts patched version of Source Code Pro"
   "Nerd Fonts version of Source Code Pro,
a monospaced font family explicitly designed for working with code."))

(define-public font-nerd-fonts-space-mono
  (make-nerd-font-custom-name "SpaceMono" "space-mono"
   "09dw1rvjc0g7zkdmzh0lg60ivl9az7yv4b1y3bq5bad4nclnvb8v"
   "Nerd Fonts patched version of Space Mono"
   "Nerd Fonts version of Space Mono, a typeface designed
by the Colophon design foundtry.  It's explicitly designed for headlines and displays."))

(define-public font-nerd-fonts-terminess
  (make-nerd-font-custom-name "Terminus" "terminess"
   "0msqm9rnc5rzmwmfs2sx534hqz3apmfja00m6iib8627nr30n2yl"
   "Nerd Fonts patched version of Terminus"
   "Nerd Fonts version of Terminus, a font designed
for long work hours with computers.

The package is named @{terminess} because Terminus is a reserved name."))

(define-public font-nerd-fonts-tinos
  (make-nerd-font "tinos"
   "1lwkpi6da1jihq461ancf74rymxdp3wcziprh9763drjvqmsjf90"
   "Nerd Fonts patched version of Tinos"
   "Nerd Fonts version of Tinos,
a font similar to Times New Roman, designed by Steve Matteson."))

(define-public font-nerd-fonts-ubuntu
  (make-nerd-font "ubuntu"
   "167mqiz55v5cdvcgr0vxhcfsa3x39ka9jf92y2v5qksvmc6njr5a"
   "Nerd Fonts patched version of Ubuntu"
   "Nerd Fonts version of Ubuntu,
a font designed by Canonical for sans-serif use in the Ubuntu GNU/Linux distribution."))

(define-public font-nerd-fonts-ubuntu-mono
  (make-nerd-font-custom-name "UbuntuMono" "ubuntu-mono"
   "03v9r2nlws6h2hsca7vc8jdwlacxmb7zygbfzwhhh00lkchzz4ap"
   "Nerd Fonts patched version of Ubuntu Mono"
   "Nerd Fonts version of Ubuntu Mono,
a font designed by Canonical for monospace use in the Ubuntu GNU/Linux distribution."))

(define-public font-nerd-fonts-ubuntu-sans
  (make-nerd-font-custom-name "UbuntuSans" "ubuntu-sans"
   "1sfyymr8ijdfdgj7pci9ia43l4yckw0dms5bnrzl9m5msgb4pmv5"
   "Nerd Fonts patched version of Ubuntu Sans"
   "Nerd Fonts version of Ubuntu Sans,
a font designed by Canonical for sans use in the Ubuntu GNU/Linux distribution."))

(define-public font-nerd-fonts-victor-mono
  (make-nerd-font-custom-name "VictorMono" "victor-mono"
   "1l45d7wnfh6fw1y5ql59y4zj9mrywybg32ciyrrw8aw23ypakra5"
   "Nerd Fonts patched version of Victor Mono"
   "Nerd Fonts version of Victor Mono,
a programming font with cursive italics, distinct glyphs and pretty defined heights.

Contains ligatures."))

(define-public font-nerd-fonts-zed-mono
  (make-nerd-font-custom-name "ZedMono" "zed-mono"
   "0v41swj3d5z1zxcdjl3yigbnsvvxscbiaf6fxw1cw2v8s5p3q3mk"
   "Nerd Fonts patched version of Zed Mono"
   "Nerd Fonts version of Zed Mono, a Iosevka variant built
by the team behind the Zed editor.  It's more rounded than regular Iosveka.

Contains ligatures."))

(define-public font-nerd-fonts
  (package
    (name "font-nerd-fonts")
    (version nerd-fonts-version)
    (source
     #f)
    (build-system trivial-build-system)
    (arguments
     `(#:modules ((guix build union))
       #:builder (begin
                   (use-modules (ice-9 match)
                                (guix build union))
                   (match %build-inputs
                     (((names . directories) ...)
                      (union-build (assoc-ref %outputs "out") directories) #t)))))
    (inputs (list font-nerd-fonts-0xproto
                  font-nerd-fonts-3270
                  font-nerd-fonts-agave
                  font-nerd-fonts-anonymice-pro
                  font-nerd-fonts-arimo
                  font-nerd-fonts-aurulent-sans-mono
                  font-nerd-fonts-big-blue-terminal
                  font-nerd-fonts-bitstrom-wera
                  font-nerd-fonts-blex-mono
                  font-nerd-fonts-code-new-roman
                  font-nerd-fonts-comic-shanns-mono
                  font-nerd-fonts-commit-mono
                  font-nerd-fonts-cousine
                  font-nerd-fonts-d2-coding-ligature
                  font-nerd-fonts-daddytimemono
                  font-nerd-fonts-departure-mono
                  font-nerd-fonts-dejavu-sans-mono
                  font-nerd-fonts-droid-sans-mono
                  font-nerd-fonts-envycoder
                  font-nerd-fonts-fantasque-sans-mono
                  font-nerd-fonts-fira-code
                  font-nerd-fonts-fira-mono
                  font-nerd-fonts-geist-mono
                  font-nerd-fonts-go-mono
                  font-nerd-fonts-gohu
                  font-nerd-fonts-hack
                  font-nerd-fonts-hasklug
                  font-nerd-fonts-heavy-data
                  font-nerd-fonts-im-writing
                  font-nerd-fonts-inconsolata
                  font-nerd-fonts-inconsolatago
                  font-nerd-fonts-inconsolata-lgc
                  font-nerd-fonts-intone-mono
                  font-nerd-fonts-iosevka
                  font-nerd-fonts-iosevka-term
                  font-nerd-fonts-iosevka-term-slab
                  font-nerd-fonts-jetbrains-mono
                  font-nerd-fonts-lekton
                  font-nerd-fonts-literation-mono
                  font-nerd-fonts-lilex
                  font-nerd-fonts-martian-mono
                  font-nerd-fonts-meslo-lg
                  font-nerd-fonts-monaspice
                  font-nerd-fonts-monofur
                  font-nerd-fonts-monoid
                  font-nerd-fonts-mononoki
                  font-nerd-fonts-m-plus
                  font-nerd-fonts-noto
                  font-nerd-fonts-opendyslexic
                  font-nerd-fonts-overpass
                  font-nerd-fonts-profont
                  font-nerd-fonts-proggy-clean
                  font-nerd-fonts-recursive-mono
                  font-nerd-fonts-roboto-mono
                  font-nerd-fonts-shure-tech-mono
                  font-nerd-fonts-sauce-code-pro
                  font-nerd-fonts-space-mono
                  font-nerd-fonts-symbols
                  font-nerd-fonts-terminess
                  font-nerd-fonts-tinos
                  font-nerd-fonts-ubuntu
                  font-nerd-fonts-ubuntu-mono
                  font-nerd-fonts-ubuntu-sans
                  font-nerd-fonts-victor-mono
                  font-nerd-fonts-zed-mono))
    (synopsis "The Full Nerd Fonts family")
    (home-page "https://www.nerdfonts.com/")
    (description
     "Nerd Fonts is a family of fonts featuring a high number of glyphs,
as it introduces icon fonts from sources such as Font Awesome, Devicons and Octicons.
These icons are primarily used for programming.")
    (license license:silofl1.1)))

(define-public font-nerd-fonts-symbols
  (package
    (name "font-nerd-fonts-symbols")
    (version "3.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (string-append "https://github.com/ryanoasis/nerd-fonts/"
                           "releases/download/v" version
                           "/NerdFontsSymbolsOnly.zip"))
       (sha256
        (base32 "0h53ldrkydxaps4kv087k71xgmb40b1s2nv2kvxc4bvs3qy60y10"))))
    (build-system font-build-system)
    (home-page "https://www.nerdfonts.com/")
    (synopsis "Nerd Font including only the symbols")
    (description "Nerd Font that includes only the icons.")
    (license license:silofl1.1)))
