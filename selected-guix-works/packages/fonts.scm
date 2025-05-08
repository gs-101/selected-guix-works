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
  "3.4.0")

(define nerd-fonts-hashes
  '(("0xproto" . "07d15njvrp2bcbk29nwmyjij5qcq00hixw35dfcfpqgvkvn7y3p5")
    ("3270" . "0bmj22iv2f3pvxj8ds6ry9q1xjd76j61k6670a1mb47vxax78ma5")
    ("adwaitamono" . "1qa0y88mh21kk9k1s81q7f0i6qjg7qz9bgxy19p1j264vhr3w3kg")
    ("agave" . "139ck1q5nrhq07s3da4k3jzvf8xv4si822gcvkwj53ns34bnzmnd")
    ("anonymouspro" . "1176b879y89anxrkz68vkya02jmy31kbgscxqa4ijiw1bpa31y6h")
    ("arimo" . "1i04cq2l92brvc3fdk1ih1hrynygk05362hicdh41lw1lmkrcvzd")
    ("aurulentsansmono" . "1qp4hh8nfvjzvyfs5kydrnkgvi763ja7yb4kwgvwnni5924dv2v0")
    ("bigblueterminal" . "0ji90yicla2nxfxd0884wpcbpzdi272knsbg344a3ll033n56ca5")
    ("bitstreamverasansmono" . "0i9g0k8n0nn24gi6n9kzzdy3fm3w2plvm2az6rs4nswcwllf8ig2")
    ("ibmplexmono" . "0iqq9c2301avkr6x5y4xfbihpibsa27q9inpk4fxb2qdcn1xrsfn")
    ("cascadiacode" . "03ll8p12gbcc9nnv6chzmzqw803j1c374p4fk6dbd9m0a4rrk04d")
    ("cascadiamono" . "14qmli0kh7mc5c46cfsasm33zhi4xywjajaqzhs5g97m2v74mp4m")
    ("codenewroman" . "0amyvbl5gb1xsd0wzl0qwd93jhapklaf0l57w7ak5awqydkyhgaa")
    ("comicshannsmono" . "1hcn5rwbp5h0sskcp3q2zbhxfvx24g1mkfbs27scchw3a1prdldi")
    ("commitmono" . "08vzlrx5wdz1czifrmjv5nl68fiq01ki8nb4xa53j153ar08qrgs")
    ("cousine" . "10psgizrnamaxq5dq1j22pz7276hwyj4dbj97q3djj66wvphsbm6")
    ("d2coding" . "0i8kar9pzkph4ddfm69jqn09qrx8882vqgaf8m76x8817f6az6nx")
    ("daddytimemono" . "04zlziapf5fa0kch5yry7kqrj51k7gj9a5r2njkv2r6fklqf4l1k")
    ("departuremono" . "12nypa73iv4z5axpkg03msrw2ghjc01qdg1akwpbfcdfzh78k1p1")
    ("dejavusansmono" . "1a7pz0g73jd4h7fbf2iafx8v28i4gj72ny3i0pm1h4rkv9dfn5s6")
    ("droidsansmono" . "123f62fyxdw01njcj7r8ipfd0rff9c7jys005y337j0734s2j0h3")
    ("envycoder" . "08y15hlfpp038xn2sl6lgj38hds80mkabvwy7nqqqahawh9v1d5j")
    ("fantasquesansmono" . "0hfdd89n2dkz3affvmlh57pwr15rv0krws4clxcgy7x640jgxii9")
    ("firacode" . "02yax10vx7pa5pc403pllzvmy5lqha04kcdpv9693z51yzcgzi3w")
    ("firamono" . "1r21i374qgivz9rhx0ms1l3aqjv53wd3p3qsf8cdajk1cj8vjdzg")
    ("geistmono" . "1j9yvfppq3fqccqm7qyvjpnjf08rf47r89m5m57xna84gxxipxm9")
    ("go-mono" . "07bp4n8jf93bic983hq4ris2k1kw4blph4wz467dhd0dmffvfij9")
    ("gohu" . "0nbrrgr0zvxsm5cddhnwqypbdzdrq796cy49v0rj6irckjcb2696")
    ("hack" . "15v8qdrl7y6r2rsjvszrh2j19adzy916rll05f3jsfciqxh3m8wc")
    ("hasklig" . "1bx3h6zjjm4n3sa63mn70b8bwhmi3wrgx2qvb4f6ppda6ya2mnag")
    ("heavydata" . "0x1mwvikphfi7lp4vd27di66ki7cr0fj15sgzadg2r48l4dr3gkz")
    ("hermit" . "1a35hy48xhrz0ssx42r0bflllzgxhadf8y68n9hgyxf7x75p6fqj")
    ("ia-writer" . "05pfnf54vj3cv7dqpdk9crz65zbjf2qqxfkqv67cyn990cghr5bh")
    ("inconsolata" . "0syvn7083anlxdfhprznqb0m5rnx69k505w8hd782ilwkglh0dpc")
    ("inconsolatago" . "1hpmirk7afly3yvg23p7fcsxh3lxxwspw6ibfd6m6sb2r530s7zy")
    ("inconsolatalgc" . "03v6y2rb6450a6b685wia6cx2rnk1fs0m085306651askqjnbn29")
    ("intelonemono" . "1ki98v7k2vlj71ssagvpnjjdnxvhlx9q7jv5jdaqdrfax0igvkjz")
    ("iosevka" . "0bz0jykmb5k9bippxz7hqz12iw772w9ik2ki1k8w6g4kiyxyxisi")
    ("iosevkaterm" . "0hf278p1p26gk7sj6bsnz243flhzcz399i0g2s58jlwj8m3h40fl")
    ("iosevkatermslab" . "15rlcg8k6k2mlyjm0vicsgqsil7kmf3znllnpyhz1ixrz7hl8pgm")
    ("jetbrainsmono" . "0g29gj9d6720grfr2vasnvdppzw4hycpfyd5di54d2p4mkrmzw3n")
    ("lekton" . "1h4yqldrqkdp05fdcnbi8kyhmzn2if4nf5143l1b9cl0s2j6hqxp")
    ("liberationmono" . "0mgb7r4s8x8j175kjycjk7skbpk2rmlrw07wk2hfvj6lsa155hn9")
    ("lilex" . "1q94iflq0lbya5w185y47xgx89arswyp38aax693r4m27hxckazh")
    ("martianmono" . "15c05kl49iy9b83bl9c08dsmqdkgr85mr697s24dcp01a68fbvvn")
    ("meslo" . "0mxd35d2cx894w57hc5pbcbjpm1ww9h4a1hq20bd7n9bijn05d8k")
    ("monaspace" . "0qiyz7paq4nnh1a189inav1iclsr69mqcyzwxqrwc27yadf0cb03")
    ("monofur" . "15cr4kn6sgygic3agnsck6kizkw1y51br61dsk4626l2hlxnl7is")
    ("monoid" . "0nspxa412l6fxx0yhp89cglrr1jl1f6k1z858nasg1678cyx66ws")
    ("mononoki" . "0zcnvb76jq9hajf8pfw6hyi1iwfm7v0jvz5gi2cbxydq28ri20kc")
    ("mplus" . "1l2jamxg3g39j9vyjhx2psd3wvgdihimzzxrrswc4bsx59kimd8y")
    ("noto" . "1fa4nn8ghprfnv3hq6r43lq1qjlmfwi5nkrj6kpa78w8nyhki47b")
    ("opendyslexic" . "15f8s4z59njy22x6yxgafxq6xavmssp3qsr9hzqmw04s8hdx6r6q")
    ("overpass" . "0hxqxr5yswj22dwk14l328imfqnyjw4llwhidjmqc120rv0s9r9r")
    ("profont" . "04q443j22kd9pb9jwkfgaiw2zms6lp7mnws23v5qqffg6c2j4slc")
    ("proggyclean" . "1s9byn1cxcj19bpbfkl5arq1bwy7fv745i19xwi03bcp9ck3lbyq")
    ("recursive" . "0bvhxnqy7y7vxi8aivh3riqw9kr8jpk0hj291199bdg2kpnk5n0b")
    ("robotomono" . "17rw233h9mhg4zsnpl54f5hs25b3ydrsp0kd8z05apwbpk8fk944")
    ("sharetechmono" . "0ciwnkhzzpsj494ykg215fjbcsi0slc5qilrbpb2jydlr2gk82fl")
    ("sourcecodepro" . "0lxdqpsd5j102djdwb1gy44z2ak99bssyfn0lz1bhq8pdmbwbazq")
    ("spacemono" . "1qa5209cn5d7irlrqjcdpxcv91jzwx8b727b6nicsm2cg7pnipay")
    ("terminus" . "13kdsnl4irjwglwsgi1i72k42r80wklmmsk4d8wkh04jgd8raamm")
    ("tinos" . "1qmqf2nmkbcqfgfz2k0xk3dfj6d6qvf17bpzviipg4w0mg9nw48m")
    ("ubuntu" . "05a99m5g0n0wdaj7liiv2ma3md88rf5yp4icclik2l6g1izxw65d")
    ("ubuntumono" . "17i0369rfn057a6jhhfkrgzdn2n5p4d3yaznkhc6r7k4lmkhw12x")
    ("ubuntusans" . "1mrlji3pi2n1rfqc37wqlvd9szys13y1vp9j9q24zvm3dmkf4rhi")
    ("victormono" . "0brz041waf9w4fsry6w0svaj5190930k2sihsddhrxjrzhkxhjwv")
    ("zedmono" . "0g3bilp59amr42xpkd80b0gg6w91affs48rs5n8wi1kr056z5k8l")))

(define (make-nerd-font pkg synopsis description)
  (package
    (name (string-append "font-nerd-fonts-" pkg))
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
        (base32 (assoc-ref nerd-fonts-hashes pkg)))))
    (build-system font-build-system)
    (home-page "https://www.nerdfonts.com/")
    (synopsis synopsis)
    (description description)
    (license license:silofl1.1)))

;; Used for fonts with reserved names and compound names.
(define (make-nerd-font-custom-name pkg custom-name synopsis description)
  (package
    (name (string-append "font-nerd-fonts-" custom-name))
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
        ;; To keep it consistent with the previous procedure, "pkg" will be used.
        (base32 (assoc-ref nerd-fonts-hashes pkg)))))
    (build-system font-build-system)
    (home-page "https://www.nerdfonts.com/")
    (synopsis synopsis)
    (description description)
    (license license:silofl1.1)))

;; All Nerd Fonts.

(define-public font-nerd-fonts-0xproto
  (make-nerd-font
   "0xproto"
   "Nerd Font patched version of 0xProto"
   "Nerd Fonts version of 0xProto, a programming font focused on
code legibility."))

(define-public font-nerd-fonts-3270
  (make-nerd-font
   "3270"
   "Nerd Fonts patched version of x3270"
   "Nerd Fonts version of the font used in the
IBM 3270, an IBM machine introduced to the public in 1971."))

(define-public font-nerd-fonts-adwaita-mono
  (make-nerd-font-custom-name
   "adwaitamono"
   "adwaita-mono"
   "Nerd Fonts patched version of Adwaita"
   "Nerd Fonts version of Adwaita, the Iosveka variant used by the GNOME project."))

(define-public font-nerd-fonts-agave
  (make-nerd-font
   "agave"
   "Nerd Fonts patched version of Agave"
   "Nerd Fonts version of Agave, a monospace font focused on simplicity
and consistency.  Almost looks cartoonish."))

(define-public font-nerd-fonts-anonymice-pro
  (make-nerd-font-custom-name
   "anonymouspro"
   "anonymice-pro"
   "Nerd Fonts patched version of Anonymous Pro"
   "Nerd Fonts version of Anonymous Pro, a font inspired by the
Anonymous 9, the bitmap font used in the Macintosh.

The package is named @code{anonymice-pro} because Anonymous Pro is a reserved name."))

(define-public font-nerd-fonts-arimo
  (make-nerd-font
   "arimo"
   "Nerd Fonts patched version of Arimo"
   "Nerd Fonts version of Arimo, a sans-serif font
metrically similar to Arial, which includes a
pan-European WGL character set."))

(define-public font-nerd-fonts-aurulent-sans-mono
  (make-nerd-font-custom-name
   "aurulentsansmono"
   "aurulent-sans-mono"
   "Nerd Fonts patched version of Aurulent Sans Mono"
   "Nerd Fonts version of Aurulent Sans Mono, a sans-serif
font designed by Stephen G. Hartke."))

(define-public font-nerd-fonts-big-blue-terminal
  (make-nerd-font-custom-name
   "bigblueterminal"
   "big-blue-terminal"
   "Nerd Fonts patched version of the IBM 8x14 charset"
   "Nerd Fonts version of the 8x14 character set once used by IBM."))

(define-public font-nerd-fonts-bitstrom-wera
  (make-nerd-font-custom-name
   "bitstreamverasansmono"
   "bitstrom-wera"
   "Nerd Fonts patched version of Bitstream Vera Sans Mono"
   "Nerd Fonts version of Bitstream Vera Sans Mono,
a font originally designed by the (since 2012) defunct Bitstream Inc.  It features clearly distinguished
characters, such as a dotted zero.

The package is named @code{bitstromwera} because Bitstream Vera Sans Mono is a reserved name."))

(define-public font-nerd-fonts-blex-mono
  (make-nerd-font-custom-name
   "ibmplexmono"
   "blex-mono"
   "Nerd Fonts patched version of IBM Plex Mono"
   "Nerd Fonts version of IBM Plex Mono, a typeface
currently used by IBM.

The package is named @code{blexmono} because IBM Plex Mono is a reserved name."))

(define-public font-nerd-fonts-caskaydia-cove
  (make-nerd-font-custom-name
   "cascadiacode"
   "caskaydia-cove"
   "Original Nerd Fonts patched version of Cascadia Code"
   "Nerd Fonts version of @code{font-microsoft-cascadia}, a Microsoft font that
first starred in the Windows Terminal program.  Nowadays, and included in the
version packaged with Guix, @code{font-microsoft-cascadia} is already patched
with Nerd Fonts, though the icons can look small because of the monospacing.
Consider this font only after seeing the look of the icons in
@code{font-microsoft-cascadia}, as it seems that this font won't get that much
maintainence anymore."))

(define-public font-nerd-fonts-caskaydia-mono
  (make-nerd-font-custom-name
   "cascadiamono"
   "caskaydia-mono"
   "Original Nerd Fonts patched version of Cascadia Mono"
   "Nerd Fonts version of the monospaced version of
@code{font-microsoft-cascadia}, a Microsoft font that first starred in the
Windows Terminal program.  Nowadays, and included in the version packaged with
Guix, @code{font-microsoft-cascadia} is already patched with Nerd Fonts, though
the icons can look small because of the monospacing.  Consider this font only
after seeing the look of the icons in @code{font-microsoft-cascadia}, as it
seems that this font won't get that much maintainence anymore."))

(define-public font-nerd-fonts-code-new-roman
  (make-nerd-font-custom-name
   "codenewroman"
   "code-new-roman"
   "Nerd Fonts patched version of Code New Roman"
   "Nerd Fonts version of Code New Roman, a programming font
designed to be compact and to have easily distinguishable characters."))

(define-public font-nerd-fonts-comic-shanns-mono
  (make-nerd-font-custom-name
   "comicshannsmono"
   "comic-shanns-mono"
   "Nerd Fonts patched version of Comic Shanns"
   "Nerd Fonts version of Comic Shanns, a Comic Sans inspired
monospace font designed for programming."))

(define-public font-nerd-fonts-commit-mono
  (make-nerd-font-custom-name
   "commitmono"
   "commit-mono"
   "Nerd Fonts patched version of Commit Mono"
   "Nerd Fonts version of Commit Mono, a programming font designed
to be as neutral as possible, so one can rather focus on the code.
It also features smart kerning, to automatically improve the spacing
between characters."))

(define-public font-nerd-fonts-cousine
  (make-nerd-font
   "cousine"
   "Nerd Fonts patched version of Cousine"
   "Nerd Fonts version of Cousine, a font metrically compatible
with Courier New, but offering improved on-screen readability."))

(define-public font-nerd-fonts-d2-coding-ligature
  (make-nerd-font-custom-name
   "d2coding"
   "d2-coding-ligature"
   "Nerd Fonts patched version of D2 Coding Ligature"
   "Nerd Fonts version of D2 Coding Ligature, a ligaturized
version of the D2 Coding font, designed for koreans working with code.

Contains ligatures."))

(define-public font-nerd-fonts-daddytimemono
  (make-nerd-font
   "daddytimemono"
   "Nerd Fonts patched version of Daddy Time Mono"
   "Nerd Fonts version of Daddy Time Mono, a programming font."))

(define-public font-nerd-fonts-departure-mono
  (make-nerd-font-custom-name
   "departuremono"
   "departure-mono"
   "Nerd Fonts patched version of Departure Mono"
   "Nerd Fonts version of Departure Mono, a pixel font designed
for nostalgia."))

(define-public font-nerd-fonts-dejavu-sans-mono
  (make-nerd-font-custom-name
   "dejavusansmono"
   "dejavu-sans-mono"
   "Nerd Fonts patched version of Dejavu Sans Mono"
   "Nerd Fonts version of Dejavu Sans Mono, a font inspided
by the Bitstream Vera family, but with the goal of providing a wider range of characters."))

(define-public font-nerd-fonts-droid-sans-mono
  (make-nerd-font-custom-name
   "droidsansmono"
   "droid-sans-mono"
   "Nerd Fonts patched version of Droid Sans Mono"
   "Nerd Fonts version of Droid Sans Mono, the monospaced version
of the Droid font fimaly.  The Droid family was first released in 2007 for use in Android."))

(define-public font-nerd-fonts-envycoder
  (make-nerd-font
   "envycoder"
   "Nerd Fonts patched version of Envy Code R"
   "Nerd Fonts version of Envy Code R, a font designed for programming and
working with a terminal.

The package is named @code{envycoder} because Envy Code R is a reserved name."))

(define-public font-nerd-fonts-fantasque-sans-mono
  (make-nerd-font-custom-name
   "fantasquesansmono"
   "fantasque-sans-mono"
   "Nerd Fonts patched version of Fantasque Sans Mono"
   "Nerd Fonts version of Fantasque Sans Mono, a font
designed for a handwritten look.  It's inspired by Inconsolata and Monaco.

Contains ligatures."))

(define-public font-nerd-fonts-fira-code
  (make-nerd-font-custom-name
   "firacode"
   "fira-code"
   "Nerd Fonts patched version of Fira Code"
   "Nerd Fonts version of Fira Code, a programming font
containing various ligatures."))

(define-public font-nerd-fonts-fira-mono
  (make-nerd-font-custom-name
   "firamono"
   "fira-mono"
   "Nerd Fonts patched version of Fira Mono"
   "Nerd Fonts version of Fira Mono, a typeface used by Mozilla."))

(define-public font-nerd-fonts-geist-mono
  (make-nerd-font-custom-name
   "geistmono"
   "geist-mono"
   "Nerd Fonts patched version of Geist Mono"
   "Nerd Fonts version of Geist Mono, a programming font.

Contains ligatures."))

(define-public font-nerd-fonts-go-mono
  (make-nerd-font
   "go-mono"
   "Nerd Fonts patched version of Go Mono"
   "Nerd Fonts version of Go Mono, a font designed for the Go
programming language."))

(define-public font-nerd-fonts-gohu
  (make-nerd-font
   "gohu"
   "Nerd Fonts patched version of Gohu"
   "Nerd Fonts version of Gohu, a monospaced, bitmap font."))

(define-public font-nerd-fonts-hack
  (make-nerd-font
   "hack"
   "Nerd Fonts patched version of Hack"
   "Nerd Fonts version of Hack, a font that expands on
Bitstream Vera and DejaVu.  Designed for programming."))

(define-public font-nerd-fonts-hasklug
  (make-nerd-font-custom-name
   "hasklig"
   "hasklug"
   "Nerd Fonts patched version of Hasklig"
   "Nerd Fonts version of Hasklig, a font designed for the
Haskell programming language.

The package is named @code{hasklug} because Hasklig is a reserved name.

Contains ligatures."))

(define-public font-nerd-fonts-heavy-data
  (make-nerd-font-custom-name
   "heavydata"
   "heavy-data"
   "Nerd Fonts patched version of Heavy Data"
   "Nerd Fonts version of Heavy Data, a cartoonish font with a
unique design."))

(define-public font-nerd-fonts-hurmit
  (make-nerd-font-custom-name
   "hermit"
   "hurmit"
   "Nerd Fonts patched version of Hermit"
   "Nerd Fonts version of Hermit, a programming font designed
to have symbols clearly distinguishable from regular text.

The package is named @code{hurmit} because Hermit is a reserved name."))

(define-public font-nerd-fonts-im-writing
  (make-nerd-font-custom-name
   "ia-writer"
   "im-writing"
   "Nerd Fonts patched version of iA Writer"
   "Nerd Fonts version of iA Writer, a heavily modified version of
IBM's Plex font.  Used on the proprietary document program iA Writer.

The package is named @code{im-writing} because iA Writer is a reserved name."))

(define-public font-nerd-fonts-inconsolata
  (make-nerd-font
   "inconsolata"
   "Nerd Fonts patched version of Inconsolata"
   "Nerd Fonts version of Inconsolata, a programming font inspired by the
proprietary font Consolas."))

(define-public font-nerd-fonts-inconsolatago
  (make-nerd-font
   "inconsolatago"
   "Nerd Fonts patched version of InconsolataGo"
   "Nerd Fonts version of InconsolataGo, an alternative version of
Inconsolata which features stratight quotes."))

(define-public font-nerd-fonts-inconsolata-lgc
  (make-nerd-font-custom-name
   "inconsolatalgc"
   "inconsolata-lgc"
   "Nerd Fonts patched version of Inconsolata LGC"
   "Nerd Fonts version of Inconsolata LGC, an alternative version of
Inconsolata that features the Cyrillic alphabet."))

(define-public font-nerd-fonts-intone-mono
  (make-nerd-font-custom-name
   "intelonemono"
   "intone-mono"
   "Nerd Fonts patched version of Intel One Mono"
   "Nerd Fonts version of Intel One Mono, a programming font
designed by Intel with low-vision and legally blind developers in mind.  The highlight is
definitely the design of the curly brackets, which are really exaggerated."))

(define-public font-nerd-fonts-iosevka
  (make-nerd-font
   "iosevka"
   "Nerd Fonts patched version of Iosevka"
   "Nerd Fonts version of Iosevka, a programming font.

Contains ligatures."))

(define-public font-nerd-fonts-iosevka-term
  (make-nerd-font-custom-name
   "iosevkaterm"
   "iosevka-term"
   "Nerd Fonts patched version of Iosevka Term"
   "Nerd Fonts version of Iosevka Term, an Iosevka
variant for working on the terminal.

Contains ligatures."))

(define-public font-nerd-fonts-iosevka-term-slab
  (make-nerd-font-custom-name
   "iosevkatermslab"
   "iosevka-term-slab"
   "Nerd Fonts patched version of Iosevka Term Slab"
   "Nerd Fonts version of Iosevka Term Slab,
an Iosevka variant for working on the terminal, featuring slab serifs.

Contains ligatures."))

(define-public font-nerd-fonts-jetbrains-mono
  (make-nerd-font-custom-name
   "jetbrainsmono"
   "jetbrains-mono"
   "Nerd Fonts patched version of JetBrains Mono"
   "Nerd Fonts version of JetBrains Mono, a programming font
designed by JetBrains, famous for their suite of IDEs.

Contains ligatures."))

(define-public font-nerd-fonts-lekton
  (make-nerd-font
   "lekton"
   "Nerd Fonts patched version of Lekton"
   "Nerd Fonts version of Lekton, a font designed inj Italy, inspired bu
the typefaces used on the Olivetti typewritters."))

(define-public font-nerd-fonts-literation-mono
  (make-nerd-font-custom-name
   "liberationmono"
   "literation-mono"
   "Nerd Fonts patched version of Liberation Mono"
   "Nerd Fonts version of Liberation Mono, a member of the
Liberation font family, designed for compatibility with the most popular Microsoft Windows
fonts.

The package is named @code{literation-mono} because Liberation Mono is a reserved name."))

(define-public font-nerd-fonts-lilex
  (make-nerd-font
   "lilex"
   "Nerd Fonts patched version of Lilex"
   "Nerd Fonts version of Lilex, a programming font that extends IBM Plex Mono.

Contains ligatures."))

(define-public font-nerd-fonts-martian-mono
  (make-nerd-font-custom-name
   "martianmono"
   "martian-mono"
   "Nerd Fonts patched version of Martian Mono"
   "Nerd Fonts version of Martian Mono, a design font
which is a monospaced version of the Martian Grotesk font."))

(define-public font-nerd-fonts-meslo-lg
  (make-nerd-font-custom-name
   "meslo"
   "meslo-lg"
   "Nerd Fonts patched version of Meslo LG"
   "Nerd Fonts version of Meslo LG, a programming font
which is a customized version of Apple's Menlo font (which, in turn, comes descends from
Bitstream Vera Sans Mono).  The LG in the name stands for \"Line Gap\", as it features
variants for control over vertical spacing."))

(define-public font-nerd-fonts-monaspice
  (make-nerd-font-custom-name
   "monaspace"
   "monaspice"
   "Nerd Fonts patched version of Monaspace"
   "Nerd Fonts version of Monaspace, a programming font
that features texture healing.  Texture healing is a technique that evens out the density
of monospaced text, providing better proportions.

The package is named @code{monaspice} because Monaspace is a reserved name."))

(define-public font-nerd-fonts-monofur
  (make-nerd-font
   "monofur"
   "Nerd Fonts patched version of Monofur"
   "Nerd Fonts version of Monofur, a font with compact characters."))

(define-public font-nerd-fonts-monoid
  (make-nerd-font
   "monoid"
   "Nerd Fonts patched version of Monoid"
   "Nerd Fonts version of Monoid, a programming font.

Contains ligatures."))

(define-public font-nerd-fonts-mononoki
  (make-nerd-font
   "mononoki"
   "Nerd Fonts patched version of Mononoki"
   "Nerd Fonts version of Mononoki, a programming font.

Despite having a reserved name, the Nerd Fonts version uses the same name."))

(define-public font-nerd-fonts-m-plus
  (make-nerd-font-custom-name
   "mplus"
   "m-plus"
   "Nerd Fonts patched version of M+"
   "Nerd Fonts version of M+, a programming font
featuring japaneses glyphs."))

(define-public font-nerd-fonts-noto
  (make-nerd-font
   "noto"
   "Nerd Fonts patched version of Noto"
   "Nerd Fonts version of Noto, Google's standard font family."))

(define-public font-nerd-fonts-opendyslexic
  (make-nerd-font
   "opendyslexic"
   "Nerd Fonts patched version of OpenDyslexic"
   "Nerd Fonts version of OpenDyslexic, a font designed for those
with Dyslexia."))

(define-public font-nerd-fonts-overpass
  (make-nerd-font
   "overpass"
   "Nerd Fonts patched version of Overpass"
   "Nerd Fonts version of Overpass, a font inspired by
Highway Gothic."))

(define-public font-nerd-fonts-profont
  (make-nerd-font
   "profont"
   "Nerd Fonts patched version of ProFont"
   "Nerd Fonts version of ProFont, a programming font.
Looks best with anti-aliasing turned off, as it features some sharp characters."))

(define-public font-nerd-fonts-proggy-clean
  (make-nerd-font-custom-name
   "proggyclean"
   "proggy-clean"
   "Nerd Fonts patched version of Proggy Clean"
   "Nerd Fonts version of Proggy Clean, a bitmap programming
font."))

(define-public font-nerd-fonts-recursive-mono
  (make-nerd-font-custom-name
   "recursive"
   "recursive-mono"
   "Nerd Fonts patched version of Recursive Mono"
   "Nerd Fonts version of Recursive Mono, a programming font
inspired by casual script signpainting."))

(define-public font-nerd-fonts-roboto-mono
  (make-nerd-font-custom-name
   "robotomono"
   "roboto-mono"
   "Nerd Fonts patched version of Roboto Mono"
   "Nerd Fonts version of the monospaced member of the
Roboto font family."))

(define-public font-nerd-fonts-shure-tech-mono
  (make-nerd-font-custom-name
   "sharetechmono"
   "shure-tech-mono"
   "Nerd Fonts patched version of Share Tech Mono"
   "Nerd Fonts version of Share Tech Mono,
a font featuring distinct characters.

The package is named @code{shure-tech-mono} because Share Tech Mono is a reserved name."))

(define-public font-nerd-fonts-sauce-code-pro
  (make-nerd-font-custom-name
   "sourcecodepro"
   "sauce-code-pro"
   "Nerd Fonts patched version of Source Code Pro"
   "Nerd Fonts version of Source Code Pro,
a monospaced font family explicitly designed for working with code."))

(define-public font-nerd-fonts-space-mono
  (make-nerd-font-custom-name
   "spacemono"
   "space-mono"
   "Nerd Fonts patched version of Space Mono"
   "Nerd Fonts version of Space Mono, a typeface designed
by the Colophon design foundtry.  It's explicitly designed for headlines and displays."))

(define-public font-nerd-fonts-terminess
  (make-nerd-font-custom-name
   "terminus"
   "terminess"
   "Nerd Fonts patched version of Terminus"
   "Nerd Fonts version of Terminus, a font designed
for long work hours with computers.

The package is named @code{terminess} because Terminus is a reserved name."))

(define-public font-nerd-fonts-tinos
  (make-nerd-font
   "tinos"
   "Nerd Fonts patched version of Tinos"
   "Nerd Fonts version of Tinos,
a font similar to Times New Roman, designed by Steve Matteson."))

(define-public font-nerd-fonts-ubuntu
  (make-nerd-font
   "ubuntu"
   "Nerd Fonts patched version of Ubuntu"
   "Nerd Fonts version of Ubuntu,
a font designed by Canonical for sans-serif use in the Ubuntu GNU/Linux distribution."))

(define-public font-nerd-fonts-ubuntu-mono
  (make-nerd-font-custom-name
   "ubuntumono"
   "ubuntu-mono"
   "Nerd Fonts patched version of Ubuntu Mono"
   "Nerd Fonts version of Ubuntu Mono,
a font designed by Canonical for monospace use in the Ubuntu GNU/Linux distribution."))

(define-public font-nerd-fonts-ubuntu-sans
  (make-nerd-font-custom-name
   "ubuntusans"
   "ubuntu-sans"
   "Nerd Fonts patched version of Ubuntu Sans"
   "Nerd Fonts version of Ubuntu Sans,
a font designed by Canonical for sans use in the Ubuntu GNU/Linux distribution."))

(define-public font-nerd-fonts-victor-mono
  (make-nerd-font-custom-name
   "victormono"
   "victor-mono"
   "Nerd Fonts patched version of Victor Mono"
   "Nerd Fonts version of Victor Mono,
a programming font with cursive italics, distinct glyphs and pretty defined heights.

Contains ligatures."))

(define-public font-nerd-fonts-zed-mono
  (make-nerd-font-custom-name
   "zedmono"
   "zed-mono"
   "Nerd Fonts patched version of Zed Mono"
   "Nerd Fonts version of Zed Mono, a Iosevka variant built
by the team behind the Zed editor.  It's rounder than regular Iosveka.

Contains ligatures."))

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
                  font-nerd-fonts-adwaita-mono
                  font-nerd-fonts-agave
                  font-nerd-fonts-anonymice-pro
                  font-nerd-fonts-arimo
                  font-nerd-fonts-aurulent-sans-mono
                  font-nerd-fonts-big-blue-terminal
                  font-nerd-fonts-bitstrom-wera
                  font-nerd-fonts-blex-mono
                  font-nerd-fonts-caskaydia-cove
                  font-nerd-fonts-caskaydia-mono
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
    (synopsis "The full Nerd Fonts family")
    (home-page "https://www.nerdfonts.com/")
    (description
     "Nerd Fonts is a font family featuring a high number of glyphs,
as it introduces icon fonts from sources such as Font Awesome, Devicons and Octicons.
These icons are primarily used for programming.")
    (license license:silofl1.1)))
