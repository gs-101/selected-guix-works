;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2025 Hilton Chain <hako@ultrarare.space>
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

(define-module (selected-guix-works packages rust-crates)
  #:use-module (guix build-system cargo)
  #:export (lookup-cargo-inputs))

;;;
;;; This file is managed by ‘guix import’.  Do NOT add definitions manually.
;;;

;;;
;;; Rust libraries fetched from crates.io and non-workspace development
;;; snapshots.
;;;

(define qqqq-separator 'begin-of-crates)

(define rust-aead-0.5.2
  (crate-source "aead" "0.5.2"
                "1c32aviraqag7926xcb9sybdm36v5vh9gnxpn4pxdwjc50zl28ni"))

(define rust-aes-0.7.5
  (crate-source "aes" "0.7.5"
                "1f0sdx2fsa8w3l7xzsyi9ry3shvnnsgc0znh50if9fm95vslg2wy"))

(define rust-aes-0.8.4
  (crate-source "aes" "0.8.4"
                "1853796anlwp4kqim0s6wm1srl4ib621nm0cl2h3c8klsjkgfsdi"))

(define rust-aes-gcm-0.10.3
  (crate-source "aes-gcm" "0.10.3"
                "1lgaqgg1gh9crg435509lqdhajg1m2vgma6f7fdj1qa2yyh10443"))

(define rust-ahash-0.8.12
  (crate-source "ahash" "0.8.12"
                "0xbsp9rlm5ki017c0w6ay8kjwinwm8knjncci95mii30rmwz25as"))

(define rust-aho-corasick-1.1.4
  (crate-source "aho-corasick" "1.1.4"
                "00a32wb2h07im3skkikc495jvncf62jl6s96vwc7bhi70h9imlyx"))

(define rust-allocator-api2-0.2.21
  (crate-source "allocator-api2" "0.2.21"
                "08zrzs022xwndihvzdn78yqarv2b9696y67i6h78nla3ww87jgb8"))

(define rust-android-system-properties-0.1.5
  (crate-source "android_system_properties" "0.1.5"
                "04b3wrz12837j7mdczqd95b732gw5q7q66cv4yn4646lvccp57l1"))

(define rust-anes-0.1.6
  (crate-source "anes" "0.1.6"
                "16bj1ww1xkwzbckk32j2pnbn5vk6wgsl3q4p3j9551xbcarwnijb"))

(define rust-anstream-0.6.21
  (crate-source "anstream" "0.6.21"
                "0jjgixms4qjj58dzr846h2s29p8w7ynwr9b9x6246m1pwy0v5ma3"))

(define rust-anstyle-1.0.13
  (crate-source "anstyle" "1.0.13"
                "0y2ynjqajpny6q0amvfzzgw0gfw3l47z85km4gvx87vg02lcr4ji"))

(define rust-anstyle-parse-0.2.7
  (crate-source "anstyle-parse" "0.2.7"
                "1hhmkkfr95d462b3zf6yl2vfzdqfy5726ya572wwg8ha9y148xjf"))

(define rust-anstyle-query-1.1.5
  (crate-source "anstyle-query" "1.1.5"
                "1p6shfpnbghs6jsa0vnqd8bb8gd7pjd0jr7w0j8jikakzmr8zi20"))

(define rust-anstyle-wincon-3.0.11
  (crate-source "anstyle-wincon" "3.0.11"
                "0zblannm70sk3xny337mz7c6d8q8i24vhbqi42ld8v7q1wjnl7i9"))

(define rust-anyhow-1.0.100
  (crate-source "anyhow" "1.0.100"
                "0qbfmw4hhv2ampza1csyvf1jqjs2dgrj29cv3h3sh623c6qvcgm2"))

(define rust-arboard-3.6.1
  (crate-source "arboard" "3.6.1"
                "1byx6q5iipxkb0pyjp80k7c4akp4n5m7nsmqdbz4n7s9ak0a2j03"))

(define rust-async-broadcast-0.7.2
  (crate-source "async-broadcast" "0.7.2"
                "0ckmqcwyqwbl2cijk1y4r0vy60i89gqc86ijrxzz5f2m4yjqfnj3"))

(define rust-async-channel-2.5.0
  (crate-source "async-channel" "2.5.0"
                "1ljq24ig8lgs2555myrrjighycpx2mbjgrm3q7lpa6rdsmnxjklj"))

(define rust-async-executor-1.13.3
  (crate-source "async-executor" "1.13.3"
                "1f3za9v8wkqzv6rz69g0qzvdcmghwbixijwzldwjm9w3zph00z29"))

(define rust-async-io-2.6.0
  (crate-source "async-io" "2.6.0"
                "1z16s18bm4jxlmp6rif38mvn55442yd3wjvdfhvx4hkgxf7qlss5"))

(define rust-async-lock-3.4.1
  (crate-source "async-lock" "3.4.1"
                "1p6i1sw3mwv1msdx9jqkr0h0a2jlrp3717yyx5n9pvkw0h23dl2z"))

(define rust-async-process-2.5.0
  (crate-source "async-process" "2.5.0"
                "0xfswxmng6835hjlfhv7k0jrfp7czqxpfj6y2s5dsp05q0g94l7w"))

(define rust-async-recursion-1.1.1
  (crate-source "async-recursion" "1.1.1"
                "04ac4zh8qz2xjc79lmfi4jlqj5f92xjvfaqvbzwkizyqd4pl4hrv"))

(define rust-async-signal-0.2.13
  (crate-source "async-signal" "0.2.13"
                "0k66mpb3xp86hj4vxs7w40v7qz2jfbblrm9ddc5mglwwynxp1h23"))

(define rust-async-task-4.7.1
  (crate-source "async-task" "4.7.1"
                "1pp3avr4ri2nbh7s6y9ws0397nkx1zymmcr14sq761ljarh3axcb"))

(define rust-async-trait-0.1.89
  (crate-source "async-trait" "0.1.89"
                "1fsxxmz3rzx1prn1h3rs7kyjhkap60i7xvi0ldapkvbb14nssdch"))

(define rust-atomic-0.6.1
  (crate-source "atomic" "0.6.1"
                "0h43ljcgbl6vk62hs6yk7zg7qn3myzvpw8k7isb9nzhkbdvvz758"))

(define rust-atomic-waker-1.1.2
  (crate-source "atomic-waker" "1.1.2"
                "1h5av1lw56m0jf0fd3bchxq8a30xv0b4wv8s4zkp4s0i7mfvs18m"))

(define rust-atty-0.2.14
  (crate-source "atty" "0.2.14"
                "1s7yslcs6a28c5vz7jwj63lkfgyx8mx99fdirlhi9lbhhzhrpcyr"))

(define rust-autocfg-1.5.0
  (crate-source "autocfg" "1.5.0"
                "1s77f98id9l4af4alklmzq46f21c980v13z2r1pcxx6bqgw0d1n0"))

(define rust-base64-0.22.1
  (crate-source "base64" "0.22.1"
                "1imqzgh7bxcikp5vx3shqvw9j09g9ly0xr0jma0q66i52r7jbcvj"))

(define rust-bitflags-1.3.2
  (crate-source "bitflags" "1.3.2"
                "12ki6w8gn1ldq7yz9y680llwk5gmrhrzszaa17g1sbrw2r2qvwxy"))

(define rust-bitflags-2.10.0
  (crate-source "bitflags" "2.10.0"
                "1lqxwc3625lcjrjm5vygban9v8a6dlxisp1aqylibiaw52si4bl1"))

(define rust-block-buffer-0.10.4
  (crate-source "block-buffer" "0.10.4"
                "0w9sa2ypmrsqqvc20nhwr75wbb5cjr4kkyhpjm1z1lv2kdicfy1h"))

(define rust-block-buffer-0.9.0
  (crate-source "block-buffer" "0.9.0"
                "1r4pf90s7d7lj1wdjhlnqa26vvbm6pnc33z138lxpnp9srpi2lj1"))

(define rust-block-modes-0.8.1
  (crate-source "block-modes" "0.8.1"
                "13id7rw1lhi83i701za8w5is3a8qkf4vfigqw3f8jp8mxldkvc1c"))

(define rust-block-padding-0.2.1
  (crate-source "block-padding" "0.2.1"
                "1bickjlmfw9iv63dp781n589rfybw879mik1va59833m1hvnqscd"))

(define rust-block2-0.6.2
  (crate-source "block2" "0.6.2"
                "1xcfllzx6c3jc554nmb5qy6xmlkl6l6j5ib4wd11800n0n3rvsyd"))

(define rust-blocking-1.6.2
  (crate-source "blocking" "1.6.2"
                "08bz3f9agqlp3102snkvsll6wc9ag7x5m1xy45ak2rv9pq18sgz8"))

(define rust-bumpalo-3.19.1
  (crate-source "bumpalo" "3.19.1"
                "044555i277xcinmqs7nnv8n5y4fqfi4l4lp1mp3i30vsidrxrnax"))

(define rust-bytemuck-1.24.0
  (crate-source "bytemuck" "1.24.0"
                "1x65wc9kwf0dfnmglkl8r46d29pfl7yilll5wh9bcf0g6a0gbg8z"))

(define rust-byteorder-1.5.0
  (crate-source "byteorder" "1.5.0"
                "0jzncxyf404mwqdbspihyzpkndfgda450l0893pz5xj685cg5l0z"))

(define rust-cached-0.55.1
  (crate-source "cached" "0.55.1"
                "055widjccy8z92jn41iz86aq75jf89207nd9ripk30w7gwlrr0xh"))

(define rust-cached-proc-macro-0.24.0
  (crate-source "cached_proc_macro" "0.24.0"
                "00y6ln647l6fcxlg563wncs1dqsbvjfbgqdkxdl1nwgh6kcr4fb7"))

(define rust-cached-proc-macro-types-0.1.1
  (crate-source "cached_proc_macro_types" "0.1.1"
                "1h3gw61v1inay4g3b8pirxlz18m81k63dw2q18zj9fnmidmkds5d"))

(define rust-cassowary-0.3.0
  (crate-source "cassowary" "0.3.0"
                "0lvanj0gsk6pc1chqrh4k5k0vi1rfbgzmsk46dwy3nmrqyw711nz"))

(define rust-cast-0.3.0
  (crate-source "cast" "0.3.0"
                "1dbyngbyz2qkk0jn2sxil8vrz3rnpcj142y184p9l4nbl9radcip"))

(define rust-castaway-0.2.4
  (crate-source "castaway" "0.2.4"
                "0nn5his5f8q20nkyg1nwb40xc19a08yaj4y76a8q2y3mdsmm3ify"))

(define rust-cc-1.2.50
  (crate-source "cc" "1.2.50"
                "0g1q2k30bwnym5hlhk2y3k08hhrklgn68gr61b63f73s49ixal4z"))

(define rust-cfg-aliases-0.2.1
  (crate-source "cfg_aliases" "0.2.1"
                "092pxdc1dbgjb6qvh83gk56rkic2n2ybm4yvy76cgynmzi3zwfk1"))

(define rust-cfg-if-1.0.4
  (crate-source "cfg-if" "1.0.4"
                "008q28ajc546z5p2hcwdnckmg0hia7rnx52fni04bwqkzyrghc4k"))

(define rust-chrono-0.4.42
  (crate-source "chrono" "0.4.42"
                "1lp8iz9js9jwxw0sj8yi59v54lgvwdvm49b9wch77f25sfym4l0l"))

(define rust-ciborium-0.2.2
  (crate-source "ciborium" "0.2.2"
                "03hgfw4674im1pdqblcp77m7rc8x2v828si5570ga5q9dzyrzrj2"))

(define rust-ciborium-io-0.2.2
  (crate-source "ciborium-io" "0.2.2"
                "0my7s5g24hvp1rs1zd1cxapz94inrvqpdf1rslrvxj8618gfmbq5"))

(define rust-ciborium-ll-0.2.2
  (crate-source "ciborium-ll" "0.2.2"
                "1n8g4j5rwkfs3rzfi6g1p7ngmz6m5yxsksryzf5k72ll7mjknrjp"))

(define rust-cipher-0.3.0
  (crate-source "cipher" "0.3.0"
                "1dyzsv0c84rgz98d5glnhsz4320wl24x3bq511vnyf0mxir21rby"))

(define rust-cipher-0.4.4
  (crate-source "cipher" "0.4.4"
                "1b9x9agg67xq5nq879z66ni4l08m6m3hqcshk37d4is4ysd3ngvp"))

(define rust-clap-3.2.25
  (crate-source "clap" "3.2.25"
                "08vi402vfqmfj9f07c4gl6082qxgf4c9x98pbndcnwbgaszq38af"))

(define rust-clap-4.5.53
  (crate-source "clap" "4.5.53"
                "1y035lyy5w2xx83q4c3jiy75928ldm1x2bi8ylslkgx12bh41qy9"))

(define rust-clap-builder-4.5.53
  (crate-source "clap_builder" "4.5.53"
                "004xasw24a9vvzpiymjkm4khffpyzqwskz7ps8gr1351x89mssyp"))

(define rust-clap-derive-3.2.25
  (crate-source "clap_derive" "3.2.25"
                "025hh66cyjk5xhhq8s1qw5wkxvrm8hnv5xwwksax7dy8pnw72qxf"))

(define rust-clap-derive-4.5.49
  (crate-source "clap_derive" "4.5.49"
                "0wbngw649138v3jwx8pm5x9sq0qsml3sh0sfzyrdxcpamy3m82ra"))

(define rust-clap-lex-0.2.4
  (crate-source "clap_lex" "0.2.4"
                "1ib1a9v55ybnaws11l63az0jgz5xiy24jkdgsmyl7grcm3sz4l18"))

(define rust-clap-lex-0.7.6
  (crate-source "clap_lex" "0.7.6"
                "13cxw9m2rqvplgazgkq2awms0rgf34myc19bz6gywfngi762imx1"))

(define rust-clipboard-win-5.4.1
  (crate-source "clipboard-win" "5.4.1"
                "1m44gqy11rq1ww7jls86ppif98v6kv2wkwk8p17is86zsdq3gq5x"))

(define rust-colorchoice-1.0.4
  (crate-source "colorchoice" "1.0.4"
                "0x8ymkz1xr77rcj1cfanhf416pc4v681gmkc9dzb3jqja7f62nxh"))

(define rust-colored-3.0.0
  (crate-source "colored" "3.0.0"
                "0plizddhxc4vgkzdbzky5zggyaqfrmyim2d0n6sb7py9j3nf1q7x"))

(define rust-compact-str-0.8.1
  (crate-source "compact_str" "0.8.1"
                "0cmgp61hw4fwaakhilwznfgncw2p4wkbvz6dw3i7ibbckh3c8y9v"))

(define rust-concurrent-queue-2.5.0
  (crate-source "concurrent-queue" "2.5.0"
                "0wrr3mzq2ijdkxwndhf79k952cp4zkz35ray8hvsxl96xrx1k82c"))

(define rust-console-0.15.11
  (crate-source "console" "0.15.11"
                "1n5gmsjk6isbnw6qss043377kln20lfwlmdk3vswpwpr21dwnk05"))

(define rust-core-foundation-sys-0.8.7
  ;; TODO: Check bundled sources.
  (crate-source "core-foundation-sys" "0.8.7"
                "12w8j73lazxmr1z0h98hf3z623kl8ms7g07jch7n4p8f9nwlhdkp"))

(define rust-cpufeatures-0.2.17
  (crate-source "cpufeatures" "0.2.17"
                "10023dnnaghhdl70xcds12fsx2b966sxbxjq5sxs49mvxqw5ivar"))

(define rust-criterion-0.5.1
  (crate-source "criterion" "0.5.1"
                "0bv9ipygam3z8kk6k771gh9zi0j0lb9ir0xi1pc075ljg80jvcgj"))

(define rust-criterion-plot-0.5.0
  (crate-source "criterion-plot" "0.5.0"
                "1c866xkjqqhzg4cjvg01f8w6xc1j3j7s58rdksl52skq89iq4l3b"))

(define rust-crossbeam-deque-0.8.6
  (crate-source "crossbeam-deque" "0.8.6"
                "0l9f1saqp1gn5qy0rxvkmz4m6n7fc0b3dbm6q1r5pmgpnyvi3lcx"))

(define rust-crossbeam-epoch-0.9.18
  (crate-source "crossbeam-epoch" "0.9.18"
                "03j2np8llwf376m3fxqx859mgp9f83hj1w34153c7a9c7i5ar0jv"))

(define rust-crossbeam-utils-0.8.21
  (crate-source "crossbeam-utils" "0.8.21"
                "0a3aa2bmc8q35fb67432w16wvi54sfmb69rk9h5bhd18vw0c99fh"))

(define rust-crossterm-0.28.1
  (crate-source "crossterm" "0.28.1"
                "1im9vs6fvkql0sr378dfr4wdm1rrkrvr22v4i8byz05k1dd9b7c2"))

(define rust-crossterm-winapi-0.9.1
  (crate-source "crossterm_winapi" "0.9.1"
                "0axbfb2ykbwbpf1hmxwpawwfs8wvmkcka5m561l7yp36ldi7rpdc"))

(define rust-crunchy-0.2.4
  (crate-source "crunchy" "0.2.4"
                "1mbp5navim2qr3x48lyvadqblcxc1dm0lqr0swrkkwy2qblvw3s6"))

(define rust-crypto-box-0.9.1
  (crate-source "crypto_box" "0.9.1"
                "02ghw0frbq99d9r52dmk3nxnac6s1i6cqm8ihnkchbm8757jn60n"))

(define rust-crypto-common-0.1.7
  (crate-source "crypto-common" "0.1.7"
                "02nn2rhfy7kvdkdjl457q2z0mklcvj9h662xrq6dzhfialh2kj3q"))

(define rust-crypto-mac-0.11.1
  (crate-source "crypto-mac" "0.11.1"
                "05672ncc54h66vph42s0a42ljl69bwnqjh0x4xgj2v1395psildi"))

(define rust-crypto-secretbox-0.1.1
  (crate-source "crypto_secretbox" "0.1.1"
                "1qa1w5s8dbyb88269zrmvbnillqahz394pl07bsds6gpmn3wzmmr"))

(define rust-ctr-0.9.2
  (crate-source "ctr" "0.9.2"
                "0d88b73waamgpfjdml78icxz45d95q7vi2aqa604b0visqdfws83"))

(define rust-ctrlc-3.5.1
  (crate-source "ctrlc" "3.5.1"
                "146p40m5mj6w4nncj3wpsh0dlm0r0rjyblifp8sk1xxgqj4nlwvk"))

(define rust-curve25519-dalek-4.1.3
  (crate-source "curve25519-dalek" "4.1.3"
                "1gmjb9dsknrr8lypmhkyjd67p1arb8mbfamlwxm7vph38my8pywp"))

(define rust-curve25519-dalek-derive-0.1.1
  (crate-source "curve25519-dalek-derive" "0.1.1"
                "1cry71xxrr0mcy5my3fb502cwfxy6822k4pm19cwrilrg7hq4s7l"))

(define rust-darling-0.20.11
  (crate-source "darling" "0.20.11"
                "1vmlphlrlw4f50z16p4bc9p5qwdni1ba95qmxfrrmzs6dh8lczzw"))

(define rust-darling-core-0.20.11
  (crate-source "darling_core" "0.20.11"
                "0bj1af6xl4ablnqbgn827m43b8fiicgv180749f5cphqdmcvj00d"))

(define rust-darling-macro-0.20.11
  (crate-source "darling_macro" "0.20.11"
                "1bbfbc2px6sj1pqqq97bgqn6c8xdnb2fmz66f7f40nrqrcybjd7w"))

(define rust-deranged-0.5.5
  (crate-source "deranged" "0.5.5"
                "11z5939gv2klp1r1lgrp4w5fnlkj18jqqf0h9zxmia3vkrjwpv7c"))

(define rust-diff-0.1.13
  (crate-source "diff" "0.1.13"
                "1j0nzjxci2zqx63hdcihkp0a4dkdmzxd7my4m7zk6cjyfy34j9an"))

(define rust-digest-0.10.7
  (crate-source "digest" "0.10.7"
                "14p2n6ih29x81akj097lvz7wi9b6b9hvls0lwrv7b6xwyy0s5ncy"))

(define rust-digest-0.9.0
  (crate-source "digest" "0.9.0"
                "0rmhvk33rgvd6ll71z8sng91a52rw14p0drjn1da0mqa138n1pfk"))

(define rust-directories-next-2.0.0
  (crate-source "directories-next" "2.0.0"
                "1g1vq8d8mv0vp0l317gh9y46ipqg2fxjnbc7lnjhwqbsv4qf37ik"))

(define rust-dirs-sys-next-0.1.2
  (crate-source "dirs-sys-next" "0.1.2"
                "0kavhavdxv4phzj4l0psvh55hszwnr0rcz8sxbvx20pyqi2a3gaf"))

(define rust-dispatch2-0.3.0
  (crate-source "dispatch2" "0.3.0"
                "1v1ak9w0s8z1g13x4mj2y5im9wmck0i2vf8f8wc9l1n6lqi9z849"))

(define rust-displaydoc-0.2.5
  (crate-source "displaydoc" "0.2.5"
                "1q0alair462j21iiqwrr21iabkfnb13d6x5w95lkdg21q2xrqdlp"))

(define rust-downcast-0.11.0
  (crate-source "downcast" "0.11.0"
                "1wa78ahlc57wmqyq2ncr80l7plrkgz57xsg7kfzgpcnqac8gld8l"))

(define rust-either-1.15.0
  (crate-source "either" "1.15.0"
                "069p1fknsmzn9llaizh77kip0pqmcwpdsykv2x30xpjyija5gis8"))

(define rust-encode-unicode-1.0.0
  (crate-source "encode_unicode" "1.0.0"
                "1h5j7j7byi289by63s3w4a8b3g6l5ccdrws7a67nn07vdxj77ail"))

(define rust-endi-1.1.1
  (crate-source "endi" "1.1.1"
                "16a0076dx41vgrzzimm9clcym77h732czqjiajanmzvd1i1y5dv6"))

(define rust-enumflags2-0.7.12
  (crate-source "enumflags2" "0.7.12"
                "1vzcskg4dca2jiflsfx1p9yw1fvgzcakcs7cpip0agl51ilgf9qh"))

(define rust-enumflags2-derive-0.7.12
  (crate-source "enumflags2_derive" "0.7.12"
                "09rqffacafl1b83ir55hrah9gza0x7pzjn6lr6jm76fzix6qmiv7"))

(define rust-equivalent-1.0.2
  (crate-source "equivalent" "1.0.2"
                "03swzqznragy8n0x31lqc78g2af054jwivp7lkrbrc0khz74lyl7"))

(define rust-erased-serde-0.3.31
  (crate-source "erased-serde" "0.3.31"
                "0v5jyid1v8irf2n2875iwhm80cw8x75gfkdh7qvzxrymz5s8j4vc"))

(define rust-errno-0.3.14
  (crate-source "errno" "0.3.14"
                "1szgccmh8vgryqyadg8xd58mnwwicf39zmin3bsn63df2wbbgjir"))

(define rust-error-code-3.3.2
  (crate-source "error-code" "3.3.2"
                "0nacxm9xr3s1rwd6fabk3qm89fyglahmbi4m512y0hr8ym6dz8ny"))

(define rust-etcetera-0.10.0
  (crate-source "etcetera" "0.10.0"
                "1rka6bskn93pdhx32xaagr147q95z5bnz7ym5xr85jw00wyv3ir6"))

(define rust-event-listener-5.4.1
  (crate-source "event-listener" "5.4.1"
                "1asnp3agbr8shcl001yd935m167ammyi8hnvl0q1ycajryn6cfz1"))

(define rust-event-listener-strategy-0.5.4
  (crate-source "event-listener-strategy" "0.5.4"
                "14rv18av8s7n8yixg38bxp5vg2qs394rl1w052by5npzmbgz7scb"))

(define rust-fastrand-2.3.0
  (crate-source "fastrand" "2.3.0"
                "1ghiahsw1jd68df895cy5h3gzwk30hndidn3b682zmshpgmrx41p"))

(define rust-fiat-crypto-0.2.9
  (crate-source "fiat-crypto" "0.2.9"
                "07c1vknddv3ak7w89n85ik0g34nzzpms6yb845vrjnv9m4csbpi8"))

(define rust-figment-0.10.19
  (crate-source "figment" "0.10.19"
                "1ww9sxdzjj2i80w7bq0kllnymjyrfb1cdx2h70ap5wqcdga1rc4c"))

(define rust-find-msvc-tools-0.1.5
  (crate-source "find-msvc-tools" "0.1.5"
                "0i1ql02y37bc7xywkqz10kx002vpz864vc4qq88h1jam190pcc1s"))

(define rust-fnv-1.0.7
  (crate-source "fnv" "1.0.7"
                "1hc2mcqha06aibcaza94vbi81j6pr9a1bbxrxjfhc91zin8yr7iz"))

(define rust-foldhash-0.1.5
  (crate-source "foldhash" "0.1.5"
                "1wisr1xlc2bj7hk4rgkcjkz3j2x4dhd1h9lwk7mj8p71qpdgbi6r"))

(define rust-form-urlencoded-1.2.2
  (crate-source "form_urlencoded" "1.2.2"
                "1kqzb2qn608rxl3dws04zahcklpplkd5r1vpabwga5l50d2v4k6b"))

(define rust-fragile-2.0.1
  (crate-source "fragile" "2.0.1"
                "06g69s9w3hmdnjp5b60ph15v367278mgxy1shijrllarc2pnrp98"))

(define rust-fsevent-sys-4.1.0
  ;; TODO: Check bundled sources.
  (crate-source "fsevent-sys" "4.1.0"
                "1liz67v8b0gcs8r31vxkvm2jzgl9p14i78yfqx81c8sdv817mvkn"))

(define rust-futures-core-0.3.31
  (crate-source "futures-core" "0.3.31"
                "0gk6yrxgi5ihfanm2y431jadrll00n5ifhnpx090c2f2q1cr1wh5"))

(define rust-futures-io-0.3.31
  (crate-source "futures-io" "0.3.31"
                "1ikmw1yfbgvsychmsihdkwa8a1knank2d9a8dk01mbjar9w1np4y"))

(define rust-futures-lite-2.6.1
  (crate-source "futures-lite" "2.6.1"
                "1ba4dg26sc168vf60b1a23dv1d8rcf3v3ykz2psb7q70kxh113pp"))

(define rust-generic-array-0.14.7
  (crate-source "generic-array" "0.14.7"
                "16lyyrzrljfq424c3n8kfwkqihlimmsg5nhshbbp48np3yjrqr45"))

(define rust-gethostname-1.1.0
  (crate-source "gethostname" "1.1.0"
                "1n6bj9gh503ggjblfjcai96gmxynxsrykaynljlrfdra34q95m0v"))

(define rust-getrandom-0.2.16
  (crate-source "getrandom" "0.2.16"
                "14l5aaia20cc6cc08xdlhrzmfcylmrnprwnna20lqf746pqzjprk"))

(define rust-getrandom-0.3.4
  (crate-source "getrandom" "0.3.4"
                "1zbpvpicry9lrbjmkd4msgj3ihff1q92i334chk7pzf46xffz7c9"))

(define rust-ghash-0.5.1
  (crate-source "ghash" "0.5.1"
                "1wbg4vdgzwhkpkclz1g6bs4r5x984w5gnlsj4q5wnafb5hva9n7h"))

(define rust-git-version-0.3.9
  (crate-source "git-version" "0.3.9"
                "06ddi3px6l2ip0srn8512bsh8wrx4rzi65piya0vrz5h7nm6im8s"))

(define rust-git-version-macro-0.3.9
  (crate-source "git-version-macro" "0.3.9"
                "1h1s08fgh9bkwnc2hmjxcldv69hlxpq7a09cqdxsd5hb235hq0ak"))

(define rust-git2-0.20.3
  (crate-source "git2" "0.20.3"
                "131hmxb2iq9328wrwqgw56fcd0z3dwxnn3hzl6nwsa97yvi3fary"))

(define rust-half-2.7.1
  (crate-source "half" "2.7.1"
                "0jyq42xfa6sghc397mx84av7fayd4xfxr4jahsqv90lmjr5xi8kf"))

(define rust-hashbrown-0.12.3
  (crate-source "hashbrown" "0.12.3"
                "1268ka4750pyg2pbgsr43f0289l5zah4arir2k4igx5a8c6fg7la"))

(define rust-hashbrown-0.14.5
  (crate-source "hashbrown" "0.14.5"
                "1wa1vy1xs3mp11bn3z9dv0jricgr6a2j0zkf1g19yz3vw4il89z5"))

(define rust-hashbrown-0.15.5
  (crate-source "hashbrown" "0.15.5"
                "189qaczmjxnikm9db748xyhiw04kpmhm9xj9k9hg0sgx7pjwyacj"))

(define rust-hashbrown-0.16.1
  (crate-source "hashbrown" "0.16.1"
                "004i3njw38ji3bzdp9z178ba9x3k0c1pgy8x69pj7yfppv4iq7c4"))

(define rust-heck-0.4.1
  (crate-source "heck" "0.4.1"
                "1a7mqsnycv5z4z5vnv1k34548jzmc0ajic7c1j8jsaspnhw5ql4m"))

(define rust-heck-0.5.0
  (crate-source "heck" "0.5.0"
                "1sjmpsdl8czyh9ywl3qcsfsq9a307dg4ni2vnlwgnzzqhc4y0113"))

(define rust-hermit-abi-0.1.19
  (crate-source "hermit-abi" "0.1.19"
                "0cxcm8093nf5fyn114w8vxbrbcyvv91d4015rdnlgfll7cs6gd32"))

(define rust-hermit-abi-0.5.2
  (crate-source "hermit-abi" "0.5.2"
                "1744vaqkczpwncfy960j2hxrbjl1q01csm84jpd9dajbdr2yy3zw"))

(define rust-hex-0.4.3
  (crate-source "hex" "0.4.3"
                "0w1a4davm1lgzpamwnba907aysmlrnygbqmfis2mqjx5m552a93z"))

(define rust-hmac-0.11.0
  (crate-source "hmac" "0.11.0"
                "16z61aibdg4di40sqi4ks2s4rz6r29w4sx4gvblfph3yxch26aia"))

(define rust-hmac-0.12.1
  (crate-source "hmac" "0.12.1"
                "0pmbr069sfg76z7wsssfk5ddcqd9ncp79fyz6zcm6yn115yc6jbc"))

(define rust-home-0.5.11
  (crate-source "home" "0.5.11"
                "1kxb4k87a9sayr8jipr7nq9wpgmjk4hk4047hmf9kc24692k75aq"))

(define rust-home-0.5.12
  (crate-source "home" "0.5.12"
                "13bjyzgx6q9srnfvl43dvmhn93qc8mh5w7cylk2g13sj3i3pyqnc"))

(define rust-iana-time-zone-0.1.64
  (crate-source "iana-time-zone" "0.1.64"
                "1yz980fmhaq9bdkasz35z63az37ci6kzzfhya83kgdqba61pzr9k"))

(define rust-iana-time-zone-haiku-0.1.2
  (crate-source "iana-time-zone-haiku" "0.1.2"
                "17r6jmj31chn7xs9698r122mapq85mfnv98bb4pg6spm0si2f67k"))

(define rust-icu-collections-2.1.1
  (crate-source "icu_collections" "2.1.1"
                "0hsblchsdl64q21qwrs4hvc2672jrf466zivbj1bwyv606bn8ssc"))

(define rust-icu-locale-core-2.1.1
  (crate-source "icu_locale_core" "2.1.1"
                "1djvdc2f5ylmp1ymzv4gcnmq1s4hqfim9nxlcm173lsd01hpifpd"))

(define rust-icu-normalizer-2.1.1
  (crate-source "icu_normalizer" "2.1.1"
                "16dmn5596la2qm0r3vih0bzjfi0vx9a20yqjha6r1y3vnql8hv2z"))

(define rust-icu-normalizer-data-2.1.1
  (crate-source "icu_normalizer_data" "2.1.1"
                "02jnzizg6q75m41l6c13xc7nkc5q8yr1b728dcgfhpzw076wrvbs"))

(define rust-icu-properties-2.1.2
  (crate-source "icu_properties" "2.1.2"
                "1v3lbmhhi7i6jgw51ikjb1p50qh5rb67grlkdnkc63l7zq1gq2q2"))

(define rust-icu-properties-data-2.1.2
  (crate-source "icu_properties_data" "2.1.2"
                "1bvpkh939rgzrjfdb7hz47v4wijngk0snmcgrnpwc9fpz162jv31"))

(define rust-icu-provider-2.1.1
  (crate-source "icu_provider" "2.1.1"
                "0576b7dizgyhpfa74kacv86y4g1p7v5ffd6c56kf1q82rvq2r5l5"))

(define rust-ident-case-1.0.1
  (crate-source "ident_case" "1.0.1"
                "0fac21q6pwns8gh1hz3nbq15j8fi441ncl6w4vlnd1cmc55kiq5r"))

(define rust-idna-1.1.0
  (crate-source "idna" "1.1.0"
                "1pp4n7hppm480zcx411dsv9wfibai00wbpgnjj4qj0xa7kr7a21v"))

(define rust-idna-adapter-1.2.1
  (crate-source "idna_adapter" "1.2.1"
                "0i0339pxig6mv786nkqcxnwqa87v4m94b2653f6k3aj0jmhfkjis"))

(define rust-imara-diff-0.2.0
  (crate-source "imara-diff" "0.2.0"
                "0p2wmak4pbqfa93fihply18kq8q0nxg6zl0dhampipv6yxid809g"))

(define rust-indexmap-1.9.3
  (crate-source "indexmap" "1.9.3"
                "16dxmy7yvk51wvnih3a3im6fp5lmx0wx76i03n06wyak6cwhw1xx"))

(define rust-indexmap-2.12.1
  (crate-source "indexmap" "2.12.1"
                "1wmcfk7g7d9wz1dninlijx70kfkzz6d5r36nyi2hdjjvaqmvpm0a"))

(define rust-indicatif-0.17.11
  (crate-source "indicatif" "0.17.11"
                "0db2b2r79r9x8x4lysq1ci9xm13c0xg0sqn3z960yh2bk2430fqq"))

(define rust-indoc-2.0.7
  (crate-source "indoc" "2.0.7"
                "01np60qdq6lvgh8ww2caajn9j4dibx9n58rvzf7cya1jz69mrkvr"))

(define rust-inotify-0.11.0
  (crate-source "inotify" "0.11.0"
                "1wq8m657rl085cg59p38sc5y62xy9yhhpvxbkd7n1awi4zzwqzgk"))

(define rust-inotify-sys-0.1.5
  ;; TODO: Check bundled sources.
  (crate-source "inotify-sys" "0.1.5"
                "1syhjgvkram88my04kv03s0zwa66mdwa5v7ddja3pzwvx2sh4p70"))

(define rust-inout-0.1.4
  (crate-source "inout" "0.1.4"
                "008xfl1jn9rxsq19phnhbimccf4p64880jmnpg59wqi07kk117w7"))

(define rust-insta-1.45.0
  (crate-source "insta" "1.45.0"
                "0v5n85fxbifxaa75a5i3vchw1afwj68wnq40xfaib2ynfjz6cs5p"))

(define rust-instability-0.3.10
  (crate-source "instability" "0.3.10"
                "170dsap2il7fpx85dylb4q979czrbj77ay6v77vpvvpgdqcv0y37"))

(define rust-is-terminal-0.4.17
  (crate-source "is-terminal" "0.4.17"
                "0ilfr9n31m0k6fsm3gvfrqaa62kbzkjqpwcd9mc46klfig1w2h1n"))

(define rust-is-terminal-polyfill-1.70.2
  (crate-source "is_terminal_polyfill" "1.70.2"
                "15anlc47sbz0jfs9q8fhwf0h3vs2w4imc030shdnq54sny5i7jx6"))

(define rust-itertools-0.10.5
  (crate-source "itertools" "0.10.5"
                "0ww45h7nxx5kj6z2y6chlskxd1igvs4j507anr6dzg99x1h25zdh"))

(define rust-itertools-0.13.0
  (crate-source "itertools" "0.13.0"
                "11hiy3qzl643zcigknclh446qb9zlg4dpdzfkjaa9q9fqpgyfgj1"))

(define rust-itertools-0.14.0
  (crate-source "itertools" "0.14.0"
                "118j6l1vs2mx65dqhwyssbrxpawa90886m3mzafdvyip41w2q69b"))

(define rust-itoa-1.0.16
  (crate-source "itoa" "1.0.16"
                "040hqvfkxl7mpjs54y495ch2qkxx26kbfxyydmi42k7vk8rvbrby"))

(define rust-jobserver-0.1.34
  (crate-source "jobserver" "0.1.34"
                "0cwx0fllqzdycqn4d6nb277qx5qwnmjdxdl0lxkkwssx77j3vyws"))

(define rust-js-sys-0.3.83
  ;; TODO: Check bundled sources.
  (crate-source "js-sys" "0.3.83"
                "1n71vpxrzclly0530lwkcsx6mg73lipam2ak3rr1ypzmqw4kfjj6"))

(define rust-kqueue-1.1.1
  (crate-source "kqueue" "1.1.1"
                "0sjrsnza8zxr1zfpv6sa0zapd54kx9wlijrz9apqvs6wsw303hza"))

(define rust-kqueue-sys-1.0.4
  ;; TODO: Check bundled sources.
  (crate-source "kqueue-sys" "1.0.4"
                "12w3wi90y4kwis4k9g6fp0kqjdmc6l00j16g8mgbhac7vbzjb5pd"))

(define rust-lazy-static-1.5.0
  (crate-source "lazy_static" "1.5.0"
                "1zk6dqqni0193xg6iijh7i3i44sryglwgvx20spdvwk3r6sbrlmv"))

(define rust-libc-0.2.178
  (crate-source "libc" "0.2.178"
                "1490yks6mria93i3xdva1gm05cjz824g14mbv0ph32lxma6kvj9p"))

(define rust-libgit2-sys-0.18.3+1.9.2
  ;; TODO: Check bundled sources.
  (crate-source "libgit2-sys" "0.18.3+1.9.2"
                "11rlbyihj3k35mnkxxz4yvsnlx33a4r9srl66c5vp08pp72arcy9"))

(define rust-libredox-0.1.11
  (crate-source "libredox" "0.1.11"
                "0l7dm6b069y5skdipxg74z1ffmwz75hfxcb5b3r1rvciqbmgc5fz"))

(define rust-libusb1-sys-0.5.0
  ;; TODO: Check bundled sources.
  (crate-source "libusb1-sys" "0.5.0"
                "0gq27za2av9gvdz1pgwlzaw3bflyhlxj0inlqp31cs5yig88jbp2"))

(define rust-libz-sys-1.1.23
  ;; TODO: Check bundled sources.
  (crate-source "libz-sys" "1.1.23"
                "1xy0l46gmhfyk28r9pm7njl0h7dh8l2vpiqw67kn043pyfxiil8m"))

(define rust-linux-raw-sys-0.11.0
  ;; TODO: Check bundled sources.
  (crate-source "linux-raw-sys" "0.11.0"
                "0fghx0nn8nvbz5yzgizfcwd6ap2pislp68j8c1bwyr6sacxkq7fz"))

(define rust-linux-raw-sys-0.4.15
  ;; TODO: Check bundled sources.
  (crate-source "linux-raw-sys" "0.4.15"
                "1aq7r2g7786hyxhv40spzf2nhag5xbw2axxc1k8z5k1dsgdm4v6j"))

(define rust-litemap-0.8.1
  (crate-source "litemap" "0.8.1"
                "0xsy8pfp9s802rsj1bq2ys2kbk1g36w5dr3gkfip7gphb5x60wv3"))

(define rust-lock-api-0.4.14
  (crate-source "lock_api" "0.4.14"
                "0rg9mhx7vdpajfxvdjmgmlyrn20ligzqvn8ifmaz7dc79gkrjhr2"))

(define rust-log-0.4.29
  (crate-source "log" "0.4.29"
                "15q8j9c8g5zpkcw0hnd6cf2z7fxqnvsjh3rw5mv5q10r83i34l2y"))

(define rust-lru-0.12.5
  (crate-source "lru" "0.12.5"
                "0f1a7cgqxbyhrmgaqqa11m3azwhcc36w0v5r4izgbhadl3sg8k13"))

(define rust-mac-notification-sys-0.6.9
  ;; TODO: Check bundled sources.
  (crate-source "mac-notification-sys" "0.6.9"
                "08bnin0sq2pcqhwls16hb4l92vll67qr3vc22q32aiqz85skzzb5"))

(define rust-memchr-2.7.6
  (crate-source "memchr" "2.7.6"
                "0wy29kf6pb4fbhfksjbs05jy2f32r2f3r1ga6qkmpz31k79h0azm"))

(define rust-memoffset-0.9.1
  (crate-source "memoffset" "0.9.1"
                "12i17wh9a9plx869g7j4whf62xw68k5zd4k0k5nh6ys5mszid028"))

(define rust-mio-1.1.1
  (crate-source "mio" "1.1.1"
                "1z2phpalqbdgihrcjp8y09l3kgq6309jnhnr6h11l9s7mnqcm6x6"))

(define rust-mockall-0.13.1
  (crate-source "mockall" "0.13.1"
                "1lir70dd9cnsjlf20gi3i51ha9n7mlrkx74bx5gfszlcdk6bz9ir"))

(define rust-mockall-derive-0.13.1
  (crate-source "mockall_derive" "0.13.1"
                "1608qajqrz23xbvv81alc6wm4l24as1bsqg4shdh3sggq8231ji5"))

(define rust-named-pipe-0.4.1
  (crate-source "named_pipe" "0.4.1"
                "0azby10wzmsrf66m1bysbil0sjfybnvhsa8py093xz4irqy4975d"))

(define rust-nix-0.30.1
  (crate-source "nix" "0.30.1"
                "1dixahq9hk191g0c2ydc0h1ppxj0xw536y6rl63vlnp06lx3ylkl"))

(define rust-nom-8.0.0
  (crate-source "nom" "8.0.0"
                "01cl5xng9d0gxf26h39m0l8lprgpa00fcc75ps1yzgbib1vn35yz"))

(define rust-notify-8.2.0
  (crate-source "notify" "8.2.0"
                "1hrb83451vm5cpjw83nz5skgwjg5ara28zq8nxsqbzsif690fgad"))

(define rust-notify-rust-4.11.7
  (crate-source "notify-rust" "4.11.7"
                "0024xqbn29z1k6cfbi8w7c1p73hscqwkpbwlwwa2bam5cn328hk4"))

(define rust-notify-types-2.0.0
  (crate-source "notify-types" "2.0.0"
                "0pcjm3wnvb7pvzw6mn89csv64ip0xhx857kr8jic5vddi6ljc22y"))

(define rust-ntapi-0.4.2
  (crate-source "ntapi" "0.4.2"
                "10ghcc1kmj5ygy4ls81as6s5akd1wflwcc0b1k3nf8ql46g223y7"))

(define rust-num-conv-0.1.0
  (crate-source "num-conv" "0.1.0"
                "1ndiyg82q73783jq18isi71a7mjh56wxrk52rlvyx0mi5z9ibmai"))

(define rust-num-enum-0.7.5
  (crate-source "num_enum" "0.7.5"
                "0k25hagf3xfgmj4j1zmvja1d6844jrmpginxpd3vhmxd41z7l85i"))

(define rust-num-enum-derive-0.7.5
  (crate-source "num_enum_derive" "0.7.5"
                "1mx4dgza8b9g16baybc00gg06jn4cf17h45p0fr3qx5nw5fkccpz"))

(define rust-num-traits-0.2.19
  (crate-source "num-traits" "0.2.19"
                "0h984rhdkkqd4ny9cif7y2azl3xdfb7768hb9irhpsch4q3gq787"))

(define rust-number-prefix-0.4.0
  (crate-source "number_prefix" "0.4.0"
                "1wvh13wvlajqxkb1filsfzbrnq0vrmrw298v2j3sy82z1rm282w3"))

(define rust-objc2-0.6.3
  (crate-source "objc2" "0.6.3"
                "01ccrb558qav2rqrmk0clzqzdd6r1rmicqnf55xqam7cw2f5khmp"))

(define rust-objc2-app-kit-0.3.2
  (crate-source "objc2-app-kit" "0.3.2"
                "132ijwni8lsi8phq7wnmialkxp46zx998fns3zq5np0ya1mr77nl"))

(define rust-objc2-core-foundation-0.3.2
  (crate-source "objc2-core-foundation" "0.3.2"
                "0dnmg7606n4zifyjw4ff554xvjmi256cs8fpgpdmr91gckc0s61a"))

(define rust-objc2-core-graphics-0.3.2
  (crate-source "objc2-core-graphics" "0.3.2"
                "01x8413pxq0m5rwidlaczni8v5cz9dc3xqzq8l9zlpl9cv8cj8p0"))

(define rust-objc2-encode-4.1.0
  (crate-source "objc2-encode" "4.1.0"
                "0cqckp4cpf68mxyc2zgnazj8klv0z395nsgbafa61cjgsyyan9gg"))

(define rust-objc2-foundation-0.3.2
  (crate-source "objc2-foundation" "0.3.2"
                "0wijkxzzvw2xkzssds3fj8279cbykz2rz9agxf6qh7y2agpsvq73"))

(define rust-objc2-io-surface-0.3.2
  (crate-source "objc2-io-surface" "0.3.2"
                "07fqx4fmwydf2arrc4xs4awv7zyzzxh60fyqdfmrpm9n148qh1qq"))

(define rust-once-cell-1.21.3
  (crate-source "once_cell" "1.21.3"
                "0b9x77lb9f1j6nqgf5aka4s2qj0nly176bpbrv6f9iakk5ff3xa2"))

(define rust-once-cell-polyfill-1.70.2
  (crate-source "once_cell_polyfill" "1.70.2"
                "1zmla628f0sk3fhjdjqzgxhalr2xrfna958s632z65bjsfv8ljrq"))

(define rust-oorandom-11.1.5
  (crate-source "oorandom" "11.1.5"
                "07mlf13z453fq01qff38big1lh83j8l6aaglf63ksqzzqxc0yyfn"))

(define rust-opaque-debug-0.3.1
  (crate-source "opaque-debug" "0.3.1"
                "10b3w0kydz5jf1ydyli5nv10gdfp97xh79bgz327d273bs46b3f0"))

(define rust-ordered-stream-0.2.0
  (crate-source "ordered-stream" "0.2.0"
                "0l0xxp697q7wiix1gnfn66xsss7fdhfivl2k7bvpjs4i3lgb18ls"))

(define rust-os-str-bytes-6.6.1
  (crate-source "os_str_bytes" "6.6.1"
                "1885z1x4sm86v5p41ggrl49m58rbzzhd1kj72x46yy53p62msdg2"))

(define rust-parking-2.2.1
  (crate-source "parking" "2.2.1"
                "1fnfgmzkfpjd69v4j9x737b1k8pnn054bvzcn5dm3pkgq595d3gk"))

(define rust-parking-lot-0.12.5
  (crate-source "parking_lot" "0.12.5"
                "06jsqh9aqmc94j2rlm8gpccilqm6bskbd67zf6ypfc0f4m9p91ck"))

(define rust-parking-lot-core-0.9.12
  (crate-source "parking_lot_core" "0.9.12"
                "1hb4rggy70fwa1w9nb0svbyflzdc69h047482v2z3sx2hmcnh896"))

(define rust-paste-1.0.15
  (crate-source "paste" "1.0.15"
                "02pxffpdqkapy292harq6asfjvadgp1s005fip9ljfsn9fvxgh2p"))

(define rust-percent-encoding-2.3.2
  (crate-source "percent-encoding" "2.3.2"
                "083jv1ai930azvawz2khv7w73xh8mnylk7i578cifndjn5y64kwv"))

(define rust-pin-project-lite-0.2.16
  (crate-source "pin-project-lite" "0.2.16"
                "16wzc7z7dfkf9bmjin22f5282783f6mdksnr0nv0j5ym5f9gyg1v"))

(define rust-piper-0.2.4
  (crate-source "piper" "0.2.4"
                "0rn0mjjm0cwagdkay77wgmz3sqf8fqmv9d9czm79mvr2yj8c9j4n"))

(define rust-pkg-config-0.3.32
  (crate-source "pkg-config" "0.3.32"
                "0k4h3gnzs94sjb2ix6jyksacs52cf1fanpwsmlhjnwrdnp8dppby"))

(define rust-plotters-0.3.7
  (crate-source "plotters" "0.3.7"
                "0ixpy9svpmr2rkzkxvvdpysjjky4gw104d73n7pi2jbs7m06zsss"))

(define rust-plotters-backend-0.3.7
  (crate-source "plotters-backend" "0.3.7"
                "0ahpliim4hrrf7d4ispc2hwr7rzkn6d6nf7lyyrid2lm28yf2hnz"))

(define rust-plotters-svg-0.3.7
  (crate-source "plotters-svg" "0.3.7"
                "0w56sxaa2crpasa1zj0bhxzihlapqfkncggavyngg0w86anf5fji"))

(define rust-polling-3.11.0
  (crate-source "polling" "3.11.0"
                "0622qfbxi3gb0ly2c99n3xawp878fkrd1sl83hjdhisx11cly3jx"))

(define rust-poly1305-0.8.0
  (crate-source "poly1305" "0.8.0"
                "1grs77skh7d8vi61ji44i8gpzs3r9x7vay50i6cg8baxfa8bsnc1"))

(define rust-polyval-0.6.2
  (crate-source "polyval" "0.6.2"
                "09gs56vm36ls6pyxgh06gw2875z2x77r8b2km8q28fql0q6yc7wx"))

(define rust-portable-atomic-1.12.0
  (crate-source "portable-atomic" "1.12.0"
                "1p9rrnq6fdk8byqf1q7x5jbzqwx9yaj99zg8qabmgrgimv2717pm"))

(define rust-potential-utf-0.1.4
  (crate-source "potential_utf" "0.1.4"
                "0xxg0pkfpq299wvwln409z4fk80rbv55phh3f1jhjajy5x1ljfdp"))

(define rust-powerfmt-0.2.0
  (crate-source "powerfmt" "0.2.0"
                "14ckj2xdpkhv3h6l5sdmb9f1d57z8hbfpdldjc2vl5givq2y77j3"))

(define rust-ppv-lite86-0.2.21
  (crate-source "ppv-lite86" "0.2.21"
                "1abxx6qz5qnd43br1dd9b2savpihzjza8gb4fbzdql1gxp2f7sl5"))

(define rust-prctl-1.0.0
  (crate-source "prctl" "1.0.0"
                "0lkgnid3sjfbqf3sbcgyihlw80a6n9l6m0n23b7f5pm927qk96h5"))

(define rust-predicates-3.1.3
  (crate-source "predicates" "3.1.3"
                "0wrm57acvagx0xmh5xffx5xspsr2kbggm698x0vks132fpjrxld5"))

(define rust-predicates-core-1.0.9
  (crate-source "predicates-core" "1.0.9"
                "1yjz144yn3imq2r4mh7k9h0r8wv4yyjjj57bs0zwkscz24mlczkj"))

(define rust-predicates-tree-1.0.12
  (crate-source "predicates-tree" "1.0.12"
                "0p223d9y02ywwxs3yl68kziswz4da4vabz67jfhp7yqx71njvpbj"))

(define rust-pretty-assertions-1.4.1
  (crate-source "pretty_assertions" "1.4.1"
                "0v8iq35ca4rw3rza5is3wjxwsf88303ivys07anc5yviybi31q9s"))

(define rust-proc-macro-crate-3.4.0
  (crate-source "proc-macro-crate" "3.4.0"
                "10v9qi51n4phn1lrj5r94kjq7yhci9jrkqnn6wpan05yjsgb3711"))

(define rust-proc-macro-error-1.0.4
  (crate-source "proc-macro-error" "1.0.4"
                "1373bhxaf0pagd8zkyd03kkx6bchzf6g0dkwrwzsnal9z47lj9fs"))

(define rust-proc-macro-error-attr-1.0.4
  (crate-source "proc-macro-error-attr" "1.0.4"
                "0sgq6m5jfmasmwwy8x4mjygx5l7kp8s4j60bv25ckv2j1qc41gm1"))

(define rust-proc-macro-hack-0.4.3
  (crate-source "proc-macro-hack" "0.4.3"
                "1qlfck1fiwrj0wdv71z06bm0alpfsyq9pywfzx2cr607b145dyfp"))

(define rust-proc-macro-hack-impl-0.4.3
  (crate-source "proc-macro-hack-impl" "0.4.3"
                "09q0jvdm5g0balskv9q446l9h7k3bk0fzmnxqzbz8d8nmvq5prbv"))

(define rust-proc-macro2-1.0.103
  (crate-source "proc-macro2" "1.0.103"
                "1s29bz20xl2qk5ffs2mbdqknaj43ri673dz86axdbf47xz25psay"))

(define rust-quick-xml-0.37.5
  (crate-source "quick-xml" "0.37.5"
                "1yxpd7rc2qn6f4agfj47ps2z89vv7lvzxpzawqirix8bmyhrf7ik"))

(define rust-quote-0.3.15
  (crate-source "quote" "0.3.15"
                "0yhnnix4dzsv8y4wwz4csbnqjfh73al33j35msr10py6cl5r4vks"))

(define rust-quote-1.0.42
  (crate-source "quote" "1.0.42"
                "0zq6yc7dhpap669m27rb4qfbiywxfah17z6fwvfccv3ys90wqf53"))

(define rust-r-efi-5.3.0
  (crate-source "r-efi" "5.3.0"
                "03sbfm3g7myvzyylff6qaxk4z6fy76yv860yy66jiswc2m6b7kb9"))

(define rust-rand-0.8.5
  (crate-source "rand" "0.8.5"
                "013l6931nn7gkc23jz5mm3qdhf93jjf0fg64nz2lp4i51qd8vbrl"))

(define rust-rand-0.9.2
  (crate-source "rand" "0.9.2"
                "1lah73ainvrgl7brcxx0pwhpnqa3sm3qaj672034jz8i0q7pgckd"))

(define rust-rand-chacha-0.3.1
  (crate-source "rand_chacha" "0.3.1"
                "123x2adin558xbhvqb8w4f6syjsdkmqff8cxwhmjacpsl1ihmhg6"))

(define rust-rand-chacha-0.9.0
  (crate-source "rand_chacha" "0.9.0"
                "1jr5ygix7r60pz0s1cv3ms1f6pd1i9pcdmnxzzhjc3zn3mgjn0nk"))

(define rust-rand-core-0.6.4
  (crate-source "rand_core" "0.6.4"
                "0b4j2v4cb5krak1pv6kakv4sz6xcwbrmy2zckc32hsigbrwy82zc"))

(define rust-rand-core-0.9.3
  (crate-source "rand_core" "0.9.3"
                "0f3xhf16yks5ic6kmgxcpv1ngdhp48mmfy4ag82i1wnwh8ws3ncr"))

(define rust-ratatui-0.29.0
  (crate-source "ratatui" "0.29.0"
                "0yqiccg1wmqqxpb2sz3q2v3nifmhsrfdsjgwhc2w40bqyg199gga"))

(define rust-ratatui-macros-0.6.0
  (crate-source "ratatui-macros" "0.6.0"
                "1x1dlns91bqs2dpg7nsccbpnbswcg1vn1yk669vs1s6vh07m9vvg"))

(define rust-rayon-1.11.0
  (crate-source "rayon" "1.11.0"
                "13x5fxb7rn4j2yw0cr26n7782jkc7rjzmdkg42qxk3xz0p8033rn"))

(define rust-rayon-core-1.13.0
  (crate-source "rayon-core" "1.13.0"
                "14dbr0sq83a6lf1rfjq5xdpk5r6zgzvmzs5j6110vlv2007qpq92"))

(define rust-redox-syscall-0.1.57
  (crate-source "redox_syscall" "0.1.57"
                "1kh59fpwy33w9nwd5iyc283yglq8pf2s41hnhvl48iax9mz0zk21"))

(define rust-redox-syscall-0.5.18
  (crate-source "redox_syscall" "0.5.18"
                "0b9n38zsxylql36vybw18if68yc9jczxmbyzdwyhb9sifmag4azd"))

(define rust-redox-users-0.4.6
  (crate-source "redox_users" "0.4.6"
                "0hya2cxx6hxmjfxzv9n8rjl5igpychav7zfi1f81pz6i4krry05s"))

(define rust-regex-1.12.2
  (crate-source "regex" "1.12.2"
                "1m14zkg6xmkb0q5ah3y39cmggclsjdr1wpxfa4kf5wvm3wcw0fw4"))

(define rust-regex-automata-0.4.13
  (crate-source "regex-automata" "0.4.13"
                "070z0j23pjfidqz0z89id1fca4p572wxpcr20a0qsv68bbrclxjj"))

(define rust-regex-syntax-0.8.8
  (crate-source "regex-syntax" "0.8.8"
                "0n7ggnpk0r32rzgnycy5xrc1yp2kq19m6pz98ch3c6dkaxw9hbbs"))

(define rust-rusb-0.8.1
  (crate-source "rusb" "0.8.1"
                "1b80icrc7amkg1mz1cwi4hprslfcw1g3w2vm3ixyfnyc5130i9fr"))

(define rust-rustc-version-0.4.1
  (crate-source "rustc_version" "0.4.1"
                "14lvdsmr5si5qbqzrajgb6vfn69k0sfygrvfvr2mps26xwi3mjyg"))

(define rust-rustix-0.38.44
  (crate-source "rustix" "0.38.44"
                "0m61v0h15lf5rrnbjhcb9306bgqrhskrqv7i1n0939dsw8dbrdgx"))

(define rust-rustix-1.1.2
  (crate-source "rustix" "1.1.2"
                "0gpz343xfzx16x82s1x336n0kr49j02cvhgxdvaq86jmqnigh5fd"))

(define rust-rustversion-1.0.22
  (crate-source "rustversion" "1.0.22"
                "0vfl70jhv72scd9rfqgr2n11m5i9l1acnk684m2w83w0zbqdx75k"))

(define rust-ryu-1.0.21
  (crate-source "ryu" "1.0.21"
                "1sja0gi4s0h3yjrx7hky72vivhzx73p5dllsiwg844mzfwl9n132"))

(define rust-salsa20-0.10.2
  (crate-source "salsa20" "0.10.2"
                "04w211x17xzny53f83p8f7cj7k2hi8zck282q5aajwqzydd2z8lp"))

(define rust-same-file-1.0.6
  (crate-source "same-file" "1.0.6"
                "00h5j1w87dmhnvbv9l8bic3y7xxsnjmssvifw2ayvgx9mb1ivz4k"))

(define rust-scopeguard-1.2.0
  (crate-source "scopeguard" "1.2.0"
                "0jcz9sd47zlsgcnm1hdw0664krxwb5gczlif4qngj2aif8vky54l"))

(define rust-semver-1.0.27
  (crate-source "semver" "1.0.27"
                "1qmi3akfrnqc2hfkdgcxhld5bv961wbk8my3ascv5068mc5fnryp"))

(define rust-serde-1.0.228
  (crate-source "serde" "1.0.228"
                "17mf4hhjxv5m90g42wmlbc61hdhlm6j9hwfkpcnd72rpgzm993ls"))

(define rust-serde-core-1.0.228
  (crate-source "serde_core" "1.0.228"
                "1bb7id2xwx8izq50098s5j2sqrrvk31jbbrjqygyan6ask3qbls1"))

(define rust-serde-derive-1.0.228
  (crate-source "serde_derive" "1.0.228"
                "0y8xm7fvmr2kjcd029g9fijpndh8csv5m20g4bd76w8qschg4h6m"))

(define rust-serde-json-1.0.145
  (crate-source "serde_json" "1.0.145"
                "1767y6kxjf7gwpbv8bkhgwc50nhg46mqwm9gy9n122f7v1k6yaj0"))

(define rust-serde-repr-0.1.20
  (crate-source "serde_repr" "0.1.20"
                "1755gss3f6lwvv23pk7fhnjdkjw7609rcgjlr8vjg6791blf6php"))

(define rust-serde-spanned-0.6.9
  (crate-source "serde_spanned" "0.6.9"
                "18vmxq6qfrm110caszxrzibjhy2s54n1g5w1bshxq9kjmz7y0hdz"))

(define rust-sha-1-0.10.1
  (crate-source "sha-1" "0.10.1"
                "1700fs5aiiailpd5h0ax4sgs2ngys0mqf3p4j0ry6j2p2zd8l1gm"))

(define rust-sha-1-0.9.8
  (crate-source "sha-1" "0.9.8"
                "19jibp8l9k5v4dnhj5kfhaczdfd997h22qz0hin6pw9wvc9ngkcr"))

(define rust-shlex-1.3.0
  (crate-source "shlex" "1.3.0"
                "0r1y6bv26c1scpxvhg2cabimrmwgbp4p3wy6syj9n0c4s3q2znhg"))

(define rust-signal-hook-0.3.18
  (crate-source "signal-hook" "0.3.18"
                "1qnnbq4g2vixfmlv28i1whkr0hikrf1bsc4xjy2aasj2yina30fq"))

(define rust-signal-hook-mio-0.2.5
  (crate-source "signal-hook-mio" "0.2.5"
                "1k20rr76ngvmzr6kskkl7dv8iyb84cbydpjbjk3mpcj0lykijnmp"))

(define rust-signal-hook-registry-1.4.7
  (crate-source "signal-hook-registry" "1.4.7"
                "1bgdimrfqcldbplryknv87gywcdj9v29l3nwqbybs5p6p2ca0r3n"))

(define rust-similar-2.7.0
  (crate-source "similar" "2.7.0"
                "1aidids7ymfr96s70232s6962v5g9l4zwhkvcjp4c5hlb6b5vfxv"))

(define rust-simple-logging-2.0.2
  (crate-source "simple-logging" "2.0.2"
                "0hmm523f0ax76yljf3z178rn9cm0q6knwa52haqnnckmavl4h3dh"))

(define rust-slab-0.4.11
  (crate-source "slab" "0.4.11"
                "12bm4s88rblq02jjbi1dw31984w61y2ldn13ifk5gsqgy97f8aks"))

(define rust-slog-2.8.2
  (crate-source "slog" "2.8.2"
                "1hcmd6fzkxqqjy6sv31cbw6gqdzq93njcr06zjyx48hvd5jqafwv"))

(define rust-slog-term-2.9.2
  (crate-source "slog-term" "2.9.2"
                "1d891y1lr41l1af4xalnikdq2b4xq1qkhay0skxddviq1dlgrcaw"))

(define rust-smallvec-1.15.1
  (crate-source "smallvec" "1.15.1"
                "00xxdxxpgyq5vjnpljvkmy99xij5rxgh913ii1v16kzynnivgcb7"))

(define rust-smashquote-0.1.2
  (crate-source "smashquote" "0.1.2"
                "00yzlpmaax3g9mc4biny5809jmxpkwjd1xlsda3c5b3klvs0b7rn"))

(define rust-stable-deref-trait-1.2.1
  (crate-source "stable_deref_trait" "1.2.1"
                "15h5h73ppqyhdhx6ywxfj88azmrpml9gl6zp3pwy2malqa6vxqkc"))

(define rust-static-assertions-1.1.0
  (crate-source "static_assertions" "1.1.0"
                "0gsl6xmw10gvn3zs1rv99laj5ig7ylffnh71f9l34js4nr4r7sx2"))

(define rust-stdext-0.3.3
  (crate-source "stdext" "0.3.3"
                "1ha9f3nfnikp2x5h5c5n3l7140zjcgp0pm2mnayjvb0qgkmqxwja"))

(define rust-streaming-iterator-0.1.9
  (crate-source "streaming-iterator" "0.1.9"
                "0845zdv8qb7zwqzglpqc0830i43xh3fb6vqms155wz85qfvk28ib"))

(define rust-strip-ansi-escapes-0.2.1
  (crate-source "strip-ansi-escapes" "0.2.1"
                "0980min1s9f5g47rwlq8l9njks952a0jlz0v7yxrm5p7www813ra"))

(define rust-strsim-0.10.0
  (crate-source "strsim" "0.10.0"
                "08s69r4rcrahwnickvi0kq49z524ci50capybln83mg6b473qivk"))

(define rust-strsim-0.11.1
  (crate-source "strsim" "0.11.1"
                "0kzvqlw8hxqb7y598w1s0hxlnmi84sg5vsipp3yg5na5d1rvba3x"))

(define rust-structure-0.1.2
  (crate-source "structure" "0.1.2"
                "0ngss4aylxg0pjwj8x5pv159hvh92ldikn8lic0mp4zqkkmrldx8"))

(define rust-structure-macro-impl-0.1.2
  (crate-source "structure-macro-impl" "0.1.2"
                "1jksyxhp7z83rxm6x427pps8f03hgymzz3v8g1cbpj194jgm5h70"))

(define rust-strum-0.26.3
  (crate-source "strum" "0.26.3"
                "01lgl6jvrf4j28v5kmx9bp480ygf1nhvac8b4p7rcj9hxw50zv4g"))

(define rust-strum-macros-0.26.4
  (crate-source "strum_macros" "0.26.4"
                "1gl1wmq24b8md527cpyd5bw9rkbqldd7k1h38kf5ajd2ln2ywssc"))

(define rust-subtle-2.4.1
  (crate-source "subtle" "2.4.1"
                "00b6jzh9gzb0h9n25g06nqr90z3xzqppfhhb260s1hjhh4pg7pkb"))

(define rust-syn-1.0.109
  (crate-source "syn" "1.0.109"
                "0ds2if4600bd59wsv7jjgfkayfzy3hnazs394kz6zdkmna8l3dkj"))

(define rust-syn-2.0.111
  (crate-source "syn" "2.0.111"
                "11rf9l6435w525vhqmnngcnwsly7x4xx369fmaqvswdbjjicj31r"))

(define rust-synstructure-0.13.2
  (crate-source "synstructure" "0.13.2"
                "1lh9lx3r3jb18f8sbj29am5hm9jymvbwh6jb1izsnnxgvgrp12kj"))

(define rust-sysinfo-0.31.4
  (crate-source "sysinfo" "0.31.4"
                "1gm1d4pxwnx4gmh6kwawchv8v8djb7y0a3qvbsq09cwrhx7vwp9m"))

(define rust-tabwriter-1.4.1
  (crate-source "tabwriter" "1.4.1"
                "0ch4823i90iw35an0g000f3ii8cs8dkv5gnbddzgyzf81qpizsgw"))

(define rust-tauri-winrt-notification-0.7.2
  (crate-source "tauri-winrt-notification" "0.7.2"
                "1fd9gcllx1rkp9h1ppq976bhqppnil5xsy36li1zx2g4gph6c7hb"))

(define rust-temp-dir-0.1.16
  (crate-source "temp-dir" "0.1.16"
                "0r09qwiiqm8pk6inaqmmp0h6zjg9py6m1dkcwqgghv21x5cnf5w3"))

(define rust-temp-env-0.3.6
  (crate-source "temp-env" "0.3.6"
                "0l7hpkd0nhiy4w70j9xbygl1vjr9ipcfxii164n40iwg0ralhdwn"))

(define rust-tempfile-3.23.0
  (crate-source "tempfile" "3.23.0"
                "05igl2gml6z6i2va1bv49f9f1wb3f752c2i63lvlb9s2vxxwfc9d"))

(define rust-term-1.2.1
  (crate-source "term" "1.2.1"
                "1qgp7kcsh7q7b967hz4nzklly7wsgipzg64bq3zrjqran5vp3hnq"))

(define rust-termcolor-1.4.1
  (crate-source "termcolor" "1.4.1"
                "0mappjh3fj3p2nmrg4y7qv94rchwi9mzmgmfflr8p2awdj7lyy86"))

(define rust-termtree-0.5.1
  (crate-source "termtree" "0.5.1"
                "10s610ax6nb70yi7xfmwcb6d3wi9sj5isd0m63gy2pizr2zgwl4g"))

(define rust-textwrap-0.16.2
  (crate-source "textwrap" "0.16.2"
                "0mrhd8q0dnh5hwbwhiv89c6i41yzmhw4clwa592rrp24b9hlfdf1"))

(define rust-thiserror-1.0.69
  (crate-source "thiserror" "1.0.69"
                "0lizjay08agcr5hs9yfzzj6axs53a2rgx070a1dsi3jpkcrzbamn"))

(define rust-thiserror-2.0.17
  (crate-source "thiserror" "2.0.17"
                "1j2gixhm2c3s6g96vd0b01v0i0qz1101vfmw0032mdqj1z58fdgn"))

(define rust-thiserror-impl-1.0.69
  (crate-source "thiserror-impl" "1.0.69"
                "1h84fmn2nai41cxbhk6pqf46bxqq1b344v8yz089w1chzi76rvjg"))

(define rust-thiserror-impl-2.0.17
  (crate-source "thiserror-impl" "2.0.17"
                "04y92yjwg1a4piwk9nayzjfs07sps8c4vq9jnsfq9qvxrn75rw9z"))

(define rust-thread-id-3.3.0
  (crate-source "thread-id" "3.3.0"
                "1h90v19fjz3x9b25ywh68z5yf2zsmm6h5zb4rl302ckbsp4z9yy7"))

(define rust-thread-local-1.1.9
  (crate-source "thread_local" "1.1.9"
                "1191jvl8d63agnq06pcnarivf63qzgpws5xa33hgc92gjjj4c0pn"))

(define rust-time-0.3.44
  (crate-source "time" "0.3.44"
                "179awlwb36zly3nmz5h9awai1h4pbf1d83g2pmvlw4v1pgixkrwi"))

(define rust-time-core-0.1.6
  (crate-source "time-core" "0.1.6"
                "0sqwhg7n47gbffyr0zhipqcnskxgcgzz1ix8wirqs2rg3my8x1j0"))

(define rust-time-macros-0.2.24
  (crate-source "time-macros" "0.2.24"
                "1wzb6hnl35856f58cx259q7ijc4c7yis0qsnydvw5n8jbw9b1krh"))

(define rust-tinystr-0.8.2
  (crate-source "tinystr" "0.8.2"
                "0sa8z88axdsf088hgw5p4xcyi6g3w3sgbb6qdp81bph9bk2fkls2"))

(define rust-tinytemplate-1.2.1
  (crate-source "tinytemplate" "1.2.1"
                "1g5n77cqkdh9hy75zdb01adxn45mkh9y40wdr7l68xpz35gnnkdy"))

(define rust-tinyvec-1.10.0
  (crate-source "tinyvec" "1.10.0"
                "1yhk0qdqyiaa4v2j9h8pzax5gxgwpz4da0lcphfil6g6pk1zv9dz"))

(define rust-toml-0.8.23
  (crate-source "toml" "0.8.23"
                "0qnkrq4lm2sdhp3l6cb6f26i8zbnhqb7mhbmksd550wxdfcyn6yw"))

(define rust-toml-datetime-0.6.11
  (crate-source "toml_datetime" "0.6.11"
                "077ix2hb1dcya49hmi1avalwbixmrs75zgzb3b2i7g2gizwdmk92"))

(define rust-toml-datetime-0.7.5+spec-1.1.0
  (crate-source "toml_datetime" "0.7.5+spec-1.1.0"
                "0iqkgvgsxmszpai53dbip7sf2igic39s4dby29dbqf1h9bnwzqcj"))

(define rust-toml-edit-0.22.27
  (crate-source "toml_edit" "0.22.27"
                "16l15xm40404asih8vyjvnka9g0xs9i4hfb6ry3ph9g419k8rzj1"))

(define rust-toml-edit-0.23.10+spec-1.0.0
  (crate-source "toml_edit" "0.23.10+spec-1.0.0"
                "0saj5c676j8a3sqaj9akkp09wambg8aflji4zblwwa70azvvkj44"))

(define rust-toml-parser-1.0.6+spec-1.1.0
  (crate-source "toml_parser" "1.0.6+spec-1.1.0"
                "0i5zxv5y3z9g6r3gm6ly4q0hhkahh013q4rys2fz04cf195qn6d3"))

(define rust-toml-write-0.1.2
  (crate-source "toml_write" "0.1.2"
                "008qlhqlqvljp1gpp9rn5cqs74gwvdgbvs92wnpq8y3jlz4zi6ax"))

(define rust-tracing-0.1.44
  (crate-source "tracing" "0.1.44"
                "006ilqkg1lmfdh3xhg3z762izfwmxcvz0w7m4qx2qajbz9i1drv3"))

(define rust-tracing-attributes-0.1.31
  (crate-source "tracing-attributes" "0.1.31"
                "1np8d77shfvz0n7camx2bsf1qw0zg331lra0hxb4cdwnxjjwz43l"))

(define rust-tracing-core-0.1.36
  (crate-source "tracing-core" "0.1.36"
                "16mpbz6p8vd6j7sf925k9k8wzvm9vdfsjbynbmaxxyq6v7wwm5yv"))

(define rust-tree-sitter-0.25.6
  (crate-source "tree-sitter" "0.25.6"
                "1w7rx91039kgms5m6ka2qknrfl3ac7634wb53yjzq2xz7ka1ikx7"))

(define rust-tree-sitter-bash-0.25.0
  (crate-source "tree-sitter-bash" "0.25.0"
                "19nqdv5x8rcq74mx2h9ivjzsxq2nf06ipp7b6w98msb7wq30c6w7"))

(define rust-tree-sitter-c-0.24.1
  (crate-source "tree-sitter-c" "0.24.1"
                "01r7f8fcls4dalhlrm4jqi473fyja9sib5l5zrckl219067ssfhs"))

(define rust-tree-sitter-c-sharp-0.23.1
  (crate-source "tree-sitter-c-sharp" "0.23.1"
                "1c7w6wvjc54k6kh0qrlspm9ksr4y10aq4fv6b0bkaibvrb66mw37"))

(define rust-tree-sitter-cpp-0.23.4
  (crate-source "tree-sitter-cpp" "0.23.4"
                "0hs7p45av437iw8rzsyw46qs06axbam7wadr655apd27kpm9c8fz"))

(define rust-tree-sitter-elixir-0.3.4
  (crate-source "tree-sitter-elixir" "0.3.4"
                "0grdkbx6bqw3s1w3mkk94sibmhgdicdlqirjzpc57zdl8x348pg4"))

(define rust-tree-sitter-go-0.23.4
  (crate-source "tree-sitter-go" "0.23.4"
                "0cc4w4p12inxpsn2hgpmbvw1nyf5cm0l9pa705hbw3928milfgdi"))

(define rust-tree-sitter-haskell-0.23.1
  (crate-source "tree-sitter-haskell" "0.23.1"
                "19057d99kaq7bn8k86baf7v4q4mjv8p5mjr7zh9vm32l0kjm2z4p"))

(define rust-tree-sitter-highlight-0.25.6
  (crate-source "tree-sitter-highlight" "0.25.6"
                "1ak12xl0hlj16x9k1jr7hfslwavgx5dkbp8adjgy2wfxnm56iskf"))

(define rust-tree-sitter-html-0.23.2
  (crate-source "tree-sitter-html" "0.23.2"
                "1vk3xyxnf3xv19qisyj2knd346dq4yjamawv6bg1w1ljbn7706r6"))

(define rust-tree-sitter-java-0.23.5
  (crate-source "tree-sitter-java" "0.23.5"
                "1mlh3skj2nasrwdz0v865r4hxnk7v8037z8nwqab4yf6r36wp9ha"))

(define rust-tree-sitter-javascript-0.23.1
  (crate-source "tree-sitter-javascript" "0.23.1"
                "1cf19p9rl96yqjjhzimhp0dpvp2xxq8fqg2w29nc25h4krcvyh5z"))

(define rust-tree-sitter-json-0.24.8
  (crate-source "tree-sitter-json" "0.24.8"
                "0wf4gsa5mcrcprg8wh647n76rwv4cx8kbky6zw605h06lk67lwjd"))

(define rust-tree-sitter-language-0.1.6
  (crate-source "tree-sitter-language" "0.1.6"
                "1kp38d4pz47s64g4mll75lgi3iicnx48crbn3g3lkdaymrz2zrja"))

(define rust-tree-sitter-ocaml-0.24.2
  (crate-source "tree-sitter-ocaml" "0.24.2"
                "0h5nx24ffbkdswh7gv1qp5hfxfdz1wbq9i4ybxmzam9q5dcdn6bx"))

(define rust-tree-sitter-php-0.23.11
  (crate-source "tree-sitter-php" "0.23.11"
                "030kiknyk2lw54yj7mzj92kfr5v0qr81qymhvkqy9kvjj97fjrph"))

(define rust-tree-sitter-python-0.23.6
  (crate-source "tree-sitter-python" "0.23.6"
                "012bgzycya91lpdbrrr8xnw9xjz116nf1w61c2pwxapk4ym5l1ix"))

(define rust-tree-sitter-ruby-0.23.1
  (crate-source "tree-sitter-ruby" "0.23.1"
                "15cz4h1sfgf838r2pmf7vg9ahh0kwgkvvnjgbdbrrfzn9vm8815y"))

(define rust-tree-sitter-rust-0.24.0
  (crate-source "tree-sitter-rust" "0.24.0"
                "1q8vqslcnp2pvyg06733ddag4i4w3jlv5s1bf8h28jk89h1ii6sb"))

(define rust-tree-sitter-scala-0.23.4
  (crate-source "tree-sitter-scala" "0.23.4"
                "0bsxq5ihmi4qp1g3cfrnmgznp8h4y739d8mz2yn9wvkknil5xppg"))

(define rust-tree-sitter-toml-ng-0.7.0
  (crate-source "tree-sitter-toml-ng" "0.7.0"
                "1cgbwl6x33d033ws4dwf3nw2pyd37m0bwxbxhl776jdfk34c5bg9"))

(define rust-tree-sitter-typescript-0.23.2
  (crate-source "tree-sitter-typescript" "0.23.2"
                "1zsyaxx3v1sd8gx2zkscwv6z1sq2nvccqpvd8k67ayllipnpcpvc"))

(define rust-tui-prompts-0.5.2
  (crate-source "tui-prompts" "0.5.2"
                "00cs0ddh3lfa0n6gdfz9ikbabw1i1gfalby0c03pxc70gjgh2110"))

(define rust-typenum-1.19.0
  (crate-source "typenum" "1.19.0"
                "1fw2mpbn2vmqan56j1b3fbpcdg80mz26fm53fs16bq5xcq84hban"))

(define rust-uds-windows-1.1.0
  (crate-source "uds_windows" "1.1.0"
                "1fb4y65pw0rsp0gyfyinjazlzxz1f6zv7j4zmb20l5pxwv1ypnl9"))

(define rust-uncased-0.9.10
  (crate-source "uncased" "0.9.10"
                "15q6r6g4fszr8c2lzg9z9k9g52h8g29h24awda3d72cyw37qzf71"))

(define rust-unicode-ident-1.0.22
  (crate-source "unicode-ident" "1.0.22"
                "1x8xrz17vqi6qmkkcqr8cyf0an76ig7390j9cnqnk47zyv2gf4lk"))

(define rust-unicode-segmentation-1.12.0
  (crate-source "unicode-segmentation" "1.12.0"
                "14qla2jfx74yyb9ds3d2mpwpa4l4lzb9z57c6d2ba511458z5k7n"))

(define rust-unicode-truncate-1.1.0
  (crate-source "unicode-truncate" "1.1.0"
                "1gr7arjjhrhy8dww7hj8qqlws97xf9d276svr4hs6pxgllklcr5k"))

(define rust-unicode-width-0.1.14
  (crate-source "unicode-width" "0.1.14"
                "1bzn2zv0gp8xxbxbhifw778a7fc93pa6a1kj24jgg9msj07f7mkx"))

(define rust-unicode-width-0.2.0
  (crate-source "unicode-width" "0.2.0"
                "1zd0r5vs52ifxn25rs06gxrgz8cmh4xpra922k0xlmrchib1kj0z"))

(define rust-unicode-width-0.2.2
  (crate-source "unicode-width" "0.2.2"
                "0m7jjzlcccw716dy9423xxh0clys8pfpllc5smvfxrzdf66h9b5l"))

(define rust-universal-hash-0.5.1
  (crate-source "universal-hash" "0.5.1"
                "1sh79x677zkncasa95wz05b36134822w6qxmi1ck05fwi33f47gw"))

(define rust-url-2.5.7
  (crate-source "url" "2.5.7"
                "0nzghdv0kcksyvri0npxbjzyx2ihprks5k590y77bld355m17g08"))

(define rust-utf8-iter-1.0.4
  (crate-source "utf8_iter" "1.0.4"
                "1gmna9flnj8dbyd8ba17zigrp9c4c3zclngf5lnb5yvz1ri41hdn"))

(define rust-utf8parse-0.2.2
  (crate-source "utf8parse" "0.2.2"
                "088807qwjq46azicqwbhlmzwrbkz7l4hpw43sdkdyyk524vdxaq6"))

(define rust-uuid-1.19.0
  (crate-source "uuid" "1.19.0"
                "0jjbclx3f36fjl6jjh8f022q0m76v3cfh61y6z6jgl2b3f359q72"))

(define rust-vcpkg-0.2.15
  (crate-source "vcpkg" "0.2.15"
                "09i4nf5y8lig6xgj3f7fyrvzd3nlaw4znrihw8psidvv5yk4xkdc"))

(define rust-version-check-0.9.5
  (crate-source "version_check" "0.9.5"
                "0nhhi4i5x89gm911azqbn7avs9mdacw2i3vcz3cnmz3mv4rqz4hb"))

(define rust-vte-0.14.1
  (crate-source "vte" "0.14.1"
                "0xy01fgkzb2080prh2ncd8949hm2248fc5wf1lryhdrhxzbxq7r3"))

(define rust-walkdir-2.5.0
  (crate-source "walkdir" "2.5.0"
                "0jsy7a710qv8gld5957ybrnc07gavppp963gs32xk4ag8130jy99"))

(define rust-wasi-0.11.1+wasi-snapshot-preview1
  (crate-source "wasi" "0.11.1+wasi-snapshot-preview1"
                "0jx49r7nbkbhyfrfyhz0bm4817yrnxgd3jiwwwfv0zl439jyrwyc"))

(define rust-wasip2-1.0.1+wasi-0.2.4
  (crate-source "wasip2" "1.0.1+wasi-0.2.4"
                "1rsqmpspwy0zja82xx7kbkbg9fv34a4a2if3sbd76dy64a244qh5"))

(define rust-wasm-bindgen-0.2.106
  (crate-source "wasm-bindgen" "0.2.106"
                "1zc0pcyv0w1dhp8r7ybmmfjsf4g18q784h0k7mv2sjm67x1ryx8d"))

(define rust-wasm-bindgen-macro-0.2.106
  (crate-source "wasm-bindgen-macro" "0.2.106"
                "1czfwzhqrkzyyhd3g58mdwb2jjk4q2pl9m1fajyfvfpq70k0vjs8"))

(define rust-wasm-bindgen-macro-support-0.2.106
  (crate-source "wasm-bindgen-macro-support" "0.2.106"
                "0h6ddq6cc6jf9phsdh2a3x8lpjhmkya86ihfz3fdk4jzrpamkyyf"))

(define rust-wasm-bindgen-shared-0.2.106
  (crate-source "wasm-bindgen-shared" "0.2.106"
                "1d0dh3jn77qz67n5zh0s3rvzlbjv926p0blq5bvng2v4gq2kiifb"))

(define rust-web-sys-0.3.83
  ;; TODO: Check bundled sources.
  (crate-source "web-sys" "0.3.83"
                "1b1pw450ig62xr0cy1wfjlbahvmi725jl64d150j0hacfy6q4clv"))

(define rust-web-time-1.1.0
  (crate-source "web-time" "1.1.0"
                "1fx05yqx83dhx628wb70fyy10yjfq1jpl20qfqhdkymi13rq0ras"))

(define rust-which-6.0.3
  (crate-source "which" "6.0.3"
                "07yg74dsq644hq5a35546c9mja6rsjdsg92rykr9hkflxf7r5vml"))

(define rust-winapi-0.3.9
  (crate-source "winapi" "0.3.9"
                "06gl025x418lchw1wxj64ycr7gha83m44cjr5sarhynd9xkrm0sw"))

(define rust-winapi-i686-pc-windows-gnu-0.4.0
  (crate-source "winapi-i686-pc-windows-gnu" "0.4.0"
                "1dmpa6mvcvzz16zg6d5vrfy4bxgg541wxrcip7cnshi06v38ffxc"))

(define rust-winapi-util-0.1.11
  (crate-source "winapi-util" "0.1.11"
                "08hdl7mkll7pz8whg869h58c1r9y7in0w0pk8fm24qc77k0b39y2"))

(define rust-winapi-x86-64-pc-windows-gnu-0.4.0
  (crate-source "winapi-x86_64-pc-windows-gnu" "0.4.0"
                "0gqq64czqb64kskjryj8isp62m2sgvx25yyj3kpc2myh85w24bki"))

(define rust-windows-0.57.0
  (crate-source "windows" "0.57.0"
                "0hqid10bqvxa3pbpgvrh2cilf950lxsd9zqfv3rldc73v2s2qd0j"))

(define rust-windows-0.61.3
  (crate-source "windows" "0.61.3"
                "14v8dln7i4ccskd8danzri22bkjkbmgzh284j3vaxhd4cykx7awv"))

(define rust-windows-aarch64-gnullvm-0.52.6
  (crate-source "windows_aarch64_gnullvm" "0.52.6"
                "1lrcq38cr2arvmz19v32qaggvj8bh1640mdm9c2fr877h0hn591j"))

(define rust-windows-aarch64-gnullvm-0.53.1
  (crate-source "windows_aarch64_gnullvm" "0.53.1"
                "0lqvdm510mka9w26vmga7hbkmrw9glzc90l4gya5qbxlm1pl3n59"))

(define rust-windows-aarch64-msvc-0.52.6
  (crate-source "windows_aarch64_msvc" "0.52.6"
                "0sfl0nysnz32yyfh773hpi49b1q700ah6y7sacmjbqjjn5xjmv09"))

(define rust-windows-aarch64-msvc-0.53.1
  (crate-source "windows_aarch64_msvc" "0.53.1"
                "01jh2adlwx043rji888b22whx4bm8alrk3khjpik5xn20kl85mxr"))

(define rust-windows-collections-0.2.0
  (crate-source "windows-collections" "0.2.0"
                "1s65anr609qvsjga7w971p6iq964h87670dkfqfypnfgwnswxviv"))

(define rust-windows-core-0.57.0
  (crate-source "windows-core" "0.57.0"
                "0bc3jxw2jw76xkk3ddvnp5b2m76qmbzv1qncgvb6qrlhl8wj9vfj"))

(define rust-windows-core-0.61.2
  (crate-source "windows-core" "0.61.2"
                "1qsa3iw14wk4ngfl7ipcvdf9xyq456ms7cx2i9iwf406p7fx7zf0"))

(define rust-windows-core-0.62.2
  (crate-source "windows-core" "0.62.2"
                "1swxpv1a8qvn3bkxv8cn663238h2jccq35ff3nsj61jdsca3ms5q"))

(define rust-windows-future-0.2.1
  (crate-source "windows-future" "0.2.1"
                "13mdzcdn51ckpzp3frb8glnmkyjr1c30ym9wnzj9zc97hkll2spw"))

(define rust-windows-i686-gnu-0.52.6
  (crate-source "windows_i686_gnu" "0.52.6"
                "02zspglbykh1jh9pi7gn8g1f97jh1rrccni9ivmrfbl0mgamm6wf"))

(define rust-windows-i686-gnu-0.53.1
  (crate-source "windows_i686_gnu" "0.53.1"
                "18wkcm82ldyg4figcsidzwbg1pqd49jpm98crfz0j7nqd6h6s3ln"))

(define rust-windows-i686-gnullvm-0.52.6
  (crate-source "windows_i686_gnullvm" "0.52.6"
                "0rpdx1537mw6slcpqa0rm3qixmsb79nbhqy5fsm3q2q9ik9m5vhf"))

(define rust-windows-i686-gnullvm-0.53.1
  (crate-source "windows_i686_gnullvm" "0.53.1"
                "030qaxqc4salz6l4immfb6sykc6gmhyir9wzn2w8mxj8038mjwzs"))

(define rust-windows-i686-msvc-0.52.6
  (crate-source "windows_i686_msvc" "0.52.6"
                "0rkcqmp4zzmfvrrrx01260q3xkpzi6fzi2x2pgdcdry50ny4h294"))

(define rust-windows-i686-msvc-0.53.1
  (crate-source "windows_i686_msvc" "0.53.1"
                "1hi6scw3mn2pbdl30ji5i4y8vvspb9b66l98kkz350pig58wfyhy"))

(define rust-windows-implement-0.57.0
  (crate-source "windows-implement" "0.57.0"
                "1mqs7qypclnmx5r8yq5jy3g2d8i27vzag9yzzzxzpdnmb70ds1wi"))

(define rust-windows-implement-0.60.2
  (crate-source "windows-implement" "0.60.2"
                "1psxhmklzcf3wjs4b8qb42qb6znvc142cb5pa74rsyxm1822wgh5"))

(define rust-windows-interface-0.57.0
  (crate-source "windows-interface" "0.57.0"
                "19zwlzr0q1z9s692681yb5w2lhvwcyx4v95s25hfdkd3isry9gi9"))

(define rust-windows-interface-0.59.3
  (crate-source "windows-interface" "0.59.3"
                "0n73cwrn4247d0axrk7gjp08p34x1723483jxjxjdfkh4m56qc9z"))

(define rust-windows-link-0.1.3
  (crate-source "windows-link" "0.1.3"
                "12kr1p46dbhpijr4zbwr2spfgq8i8c5x55mvvfmyl96m01cx4sjy"))

(define rust-windows-link-0.2.1
  (crate-source "windows-link" "0.2.1"
                "1rag186yfr3xx7piv5rg8b6im2dwcf8zldiflvb22xbzwli5507h"))

(define rust-windows-numerics-0.2.0
  (crate-source "windows-numerics" "0.2.0"
                "1cf2j8nbqf0hqqa7chnyid91wxsl2m131kn0vl3mqk3c0rlayl4i"))

(define rust-windows-result-0.1.2
  (crate-source "windows-result" "0.1.2"
                "1y274q1v0vy21lhkgslpxpq1m08hvr1mcs2l88h1b1gcx0136f2y"))

(define rust-windows-result-0.3.4
  (crate-source "windows-result" "0.3.4"
                "1il60l6idrc6hqsij0cal0mgva6n3w6gq4ziban8wv6c6b9jpx2n"))

(define rust-windows-result-0.4.1
  (crate-source "windows-result" "0.4.1"
                "1d9yhmrmmfqh56zlj751s5wfm9a2aa7az9rd7nn5027nxa4zm0bp"))

(define rust-windows-strings-0.4.2
  (crate-source "windows-strings" "0.4.2"
                "0mrv3plibkla4v5kaakc2rfksdd0b14plcmidhbkcfqc78zwkrjn"))

(define rust-windows-strings-0.5.1
  (crate-source "windows-strings" "0.5.1"
                "14bhng9jqv4fyl7lqjz3az7vzh8pw0w4am49fsqgcz67d67x0dvq"))

(define rust-windows-sys-0.59.0
  ;; TODO: Check bundled sources.
  (crate-source "windows-sys" "0.59.0"
                "0fw5672ziw8b3zpmnbp9pdv1famk74f1l9fcbc3zsrzdg56vqf0y"))

(define rust-windows-sys-0.60.2
  ;; TODO: Check bundled sources.
  (crate-source "windows-sys" "0.60.2"
                "1jrbc615ihqnhjhxplr2kw7rasrskv9wj3lr80hgfd42sbj01xgj"))

(define rust-windows-sys-0.61.2
  ;; TODO: Check bundled sources.
  (crate-source "windows-sys" "0.61.2"
                "1z7k3y9b6b5h52kid57lvmvm05362zv1v8w0gc7xyv5xphlp44xf"))

(define rust-windows-targets-0.52.6
  (crate-source "windows-targets" "0.52.6"
                "0wwrx625nwlfp7k93r2rra568gad1mwd888h1jwnl0vfg5r4ywlv"))

(define rust-windows-targets-0.53.5
  (crate-source "windows-targets" "0.53.5"
                "1wv9j2gv3l6wj3gkw5j1kr6ymb5q6dfc42yvydjhv3mqa7szjia9"))

(define rust-windows-threading-0.1.0
  (crate-source "windows-threading" "0.1.0"
                "19jpn37zpjj2q7pn07dpq0ay300w65qx7wdp13wbp8qf5snn6r5n"))

(define rust-windows-version-0.1.7
  (crate-source "windows-version" "0.1.7"
                "0c9nnqpcq770977k77mw1p66gpw45khwhqkjdcrd1f89l4fhl1p4"))

(define rust-windows-x86-64-gnu-0.52.6
  (crate-source "windows_x86_64_gnu" "0.52.6"
                "0y0sifqcb56a56mvn7xjgs8g43p33mfqkd8wj1yhrgxzma05qyhl"))

(define rust-windows-x86-64-gnu-0.53.1
  (crate-source "windows_x86_64_gnu" "0.53.1"
                "16d4yiysmfdlsrghndr97y57gh3kljkwhfdbcs05m1jasz6l4f4w"))

(define rust-windows-x86-64-gnullvm-0.52.6
  (crate-source "windows_x86_64_gnullvm" "0.52.6"
                "03gda7zjx1qh8k9nnlgb7m3w3s1xkysg55hkd1wjch8pqhyv5m94"))

(define rust-windows-x86-64-gnullvm-0.53.1
  (crate-source "windows_x86_64_gnullvm" "0.53.1"
                "1qbspgv4g3q0vygkg8rnql5c6z3caqv38japiynyivh75ng1gyhg"))

(define rust-windows-x86-64-msvc-0.52.6
  (crate-source "windows_x86_64_msvc" "0.52.6"
                "1v7rb5cibyzx8vak29pdrk8nx9hycsjs4w0jgms08qk49jl6v7sq"))

(define rust-windows-x86-64-msvc-0.53.1
  (crate-source "windows_x86_64_msvc" "0.53.1"
                "0l6npq76vlq4ksn4bwsncpr8508mk0gmznm6wnhjg95d19gzzfyn"))

(define rust-winnow-0.7.14
  (crate-source "winnow" "0.7.14"
                "0a88ahjqhyn2ln1yplq2xsigm09kxqkdkkk2c2mfxkbzszln8lss"))

(define rust-winsafe-0.0.19
  (crate-source "winsafe" "0.0.19"
                "0169xy9mjma8dys4m8v4x0xhw2gkbhv2v1wsbvcjl9bhnxxd2dfi"))

(define rust-wit-bindgen-0.46.0
  (crate-source "wit-bindgen" "0.46.0"
                "0ngysw50gp2wrrfxbwgp6dhw1g6sckknsn3wm7l00vaf7n48aypi"))

(define rust-writeable-0.6.2
  (crate-source "writeable" "0.6.2"
                "1fg08y97n6vk7l0rnjggw3xyrii6dcqg54wqaxldrlk98zdy1pcy"))

(define rust-x11rb-0.13.2
  (crate-source "x11rb" "0.13.2"
                "053lvnaw9ycbl791mgwly2hw27q6vqgzrb1y5kz1as52wmdsm4wr"))

(define rust-x11rb-protocol-0.13.2
  (crate-source "x11rb-protocol" "0.13.2"
                "1g81cznbyn522b0fbis0i44wh3adad2vhsz5pzf99waf3sbc4vza"))

(define rust-yansi-1.0.1
  (crate-source "yansi" "1.0.1"
                "0jdh55jyv0dpd38ij4qh60zglbw9aa8wafqai6m0wa7xaxk3mrfg"))

(define rust-yoke-0.8.1
  (crate-source "yoke" "0.8.1"
                "0m29dm0bf5iakxgma0bj6dbmc3b8qi9b1vaw9sa76kdqmz3fbmkj"))

(define rust-yoke-derive-0.8.1
  (crate-source "yoke-derive" "0.8.1"
                "0pbyja133jnng4mrhimzdq4a0y26421g734ybgz8wsgbfhl0andn"))

(define rust-yubico-manager-0.9.0
  (crate-source "yubico_manager" "0.9.0"
                "1vlf0vpfma3gfhlpdss9fhhmsispyakkzn9vd2w3cy7j3110jr7z"))

(define rust-zbus-5.12.0
  (crate-source "zbus" "5.12.0"
                "14bcmn5lh0fidsg3yyxvkvxhhkm4sv90336ws8f3vagpan0v28mn"))

(define rust-zbus-macros-5.12.0
  (crate-source "zbus_macros" "5.12.0"
                "0553nr19xi0sapjgd6ax25kqnahfv35x3dcqqalpra583j199nqw"))

(define rust-zbus-names-4.2.0
  (crate-source "zbus_names" "4.2.0"
                "15ybdd6zic7simi9wjg0ywrxfq4sxg3z0wiyysadps3cpxj8xrkv"))

(define rust-zerocopy-0.8.31
  (crate-source "zerocopy" "0.8.31"
                "1hwqn8f0zd8h1a7qz2hxym4iaqyzk8kdxgalllydn2i5p6cfqx7x"))

(define rust-zerocopy-derive-0.8.31
  (crate-source "zerocopy-derive" "0.8.31"
                "0sjw20qqxbax8z8k9ifcmwjjlljjddpm0nmvih9zap7lzl4x5a6q"))

(define rust-zerofrom-0.1.6
  (crate-source "zerofrom" "0.1.6"
                "19dyky67zkjichsb7ykhv0aqws3q0jfvzww76l66c19y6gh45k2h"))

(define rust-zerofrom-derive-0.1.6
  (crate-source "zerofrom-derive" "0.1.6"
                "00l5niw7c1b0lf1vhvajpjmcnbdp2vn96jg4nmkhq2db0rp5s7np"))

(define rust-zeroize-1.8.2
  (crate-source "zeroize" "1.8.2"
                "1l48zxgcv34d7kjskr610zqsm6j2b4fcr2vfh9jm9j1jgvk58wdr"))

(define rust-zerotrie-0.2.3
  (crate-source "zerotrie" "0.2.3"
                "0lbqznlqazmrwwzslw0ci7p3pqxykrbfhq29npj0gmb2amxc2n9a"))

(define rust-zerovec-0.11.5
  (crate-source "zerovec" "0.11.5"
                "00m0p47k2g9mkv505hky5xh3r6ps7v8qc0dy4pspg542jj972a3c"))

(define rust-zerovec-derive-0.11.2
  (crate-source "zerovec-derive" "0.11.2"
                "1wsig4h5j7a1scd5hrlnragnazjny9qjc44hancb6p6a76ay7p7a"))

(define rust-zvariant-5.8.0
  (crate-source "zvariant" "5.8.0"
                "0k3lp0f54jblzsk47yifnqk1hjk6c85664dy4wkpgcgjwj91irib"))

(define rust-zvariant-derive-5.8.0
  (crate-source "zvariant_derive" "5.8.0"
                "01i05n35wrahcvw63ybradsb53g6wbc5kv5i2djpc81b3dd5fn6s"))

(define rust-zvariant-utils-3.2.1
  (crate-source "zvariant_utils" "3.2.1"
                "16g5id3h9q85c5vcwdfwkwmwzyladbr2q8x2xinr3xl95wa9v566"))

(define ssss-separator 'end-of-crates)


;;;
;;; Cargo inputs.
;;;

(define-cargo-inputs lookup-cargo-inputs
                     (git-credential-keepassxc =>
                                               (list rust-aead-0.5.2
                                                rust-aes-0.7.5
                                                rust-aes-0.8.4
                                                rust-aes-gcm-0.10.3
                                                rust-android-system-properties-0.1.5
                                                rust-anstyle-1.0.13
                                                rust-anyhow-1.0.100
                                                rust-async-broadcast-0.7.2
                                                rust-async-channel-2.5.0
                                                rust-async-executor-1.13.3
                                                rust-async-io-2.6.0
                                                rust-async-lock-3.4.1
                                                rust-async-process-2.5.0
                                                rust-async-recursion-1.1.1
                                                rust-async-signal-0.2.13
                                                rust-async-task-4.7.1
                                                rust-async-trait-0.1.89
                                                rust-atomic-waker-1.1.2
                                                rust-atty-0.2.14
                                                rust-autocfg-1.5.0
                                                rust-base64-0.22.1
                                                rust-bitflags-1.3.2
                                                rust-bitflags-2.10.0
                                                rust-block-buffer-0.9.0
                                                rust-block-buffer-0.10.4
                                                rust-block-modes-0.8.1
                                                rust-block-padding-0.2.1
                                                rust-block2-0.6.2
                                                rust-blocking-1.6.2
                                                rust-bumpalo-3.19.1
                                                rust-byteorder-1.5.0
                                                rust-cc-1.2.50
                                                rust-cfg-if-1.0.4
                                                rust-cfg-aliases-0.2.1
                                                rust-chrono-0.4.42
                                                rust-cipher-0.3.0
                                                rust-cipher-0.4.4
                                                rust-clap-3.2.25
                                                rust-clap-derive-3.2.25
                                                rust-clap-lex-0.2.4
                                                rust-concurrent-queue-2.5.0
                                                rust-core-foundation-sys-0.8.7
                                                rust-cpufeatures-0.2.17
                                                rust-crossbeam-deque-0.8.6
                                                rust-crossbeam-epoch-0.9.18
                                                rust-crossbeam-utils-0.8.21
                                                rust-crypto-common-0.1.7
                                                rust-crypto-mac-0.11.1
                                                rust-crypto-box-0.9.1
                                                rust-crypto-secretbox-0.1.1
                                                rust-ctr-0.9.2
                                                rust-curve25519-dalek-4.1.3
                                                rust-curve25519-dalek-derive-0.1.1
                                                rust-deranged-0.5.5
                                                rust-digest-0.9.0
                                                rust-digest-0.10.7
                                                rust-directories-next-2.0.0
                                                rust-dirs-sys-next-0.1.2
                                                rust-dispatch2-0.3.0
                                                rust-downcast-0.11.0
                                                rust-either-1.15.0
                                                rust-endi-1.1.1
                                                rust-enumflags2-0.7.12
                                                rust-enumflags2-derive-0.7.12
                                                rust-equivalent-1.0.2
                                                rust-erased-serde-0.3.31
                                                rust-errno-0.3.14
                                                rust-event-listener-5.4.1
                                                rust-event-listener-strategy-0.5.4
                                                rust-fastrand-2.3.0
                                                rust-fiat-crypto-0.2.9
                                                rust-find-msvc-tools-0.1.5
                                                rust-fragile-2.0.1
                                                rust-futures-core-0.3.31
                                                rust-futures-io-0.3.31
                                                rust-futures-lite-2.6.1
                                                rust-generic-array-0.14.7
                                                rust-getrandom-0.2.16
                                                rust-getrandom-0.3.4
                                                rust-ghash-0.5.1
                                                rust-hashbrown-0.12.3
                                                rust-hashbrown-0.16.1
                                                rust-heck-0.4.1
                                                rust-heck-0.5.0
                                                rust-hermit-abi-0.1.19
                                                rust-hermit-abi-0.5.2
                                                rust-hex-0.4.3
                                                rust-hmac-0.11.0
                                                rust-hmac-0.12.1
                                                rust-home-0.5.12
                                                rust-iana-time-zone-0.1.64
                                                rust-iana-time-zone-haiku-0.1.2
                                                rust-indexmap-1.9.3
                                                rust-indexmap-2.12.1
                                                rust-inout-0.1.4
                                                rust-is-terminal-0.4.17
                                                rust-itoa-1.0.16
                                                rust-js-sys-0.3.83
                                                rust-libc-0.2.178
                                                rust-libredox-0.1.11
                                                rust-libusb1-sys-0.5.0
                                                rust-linux-raw-sys-0.4.15
                                                rust-linux-raw-sys-0.11.0
                                                rust-log-0.4.29
                                                rust-mac-notification-sys-0.6.9
                                                rust-memchr-2.7.6
                                                rust-memoffset-0.9.1
                                                rust-mockall-0.13.1
                                                rust-mockall-derive-0.13.1
                                                rust-named-pipe-0.4.1
                                                rust-nix-0.30.1
                                                rust-notify-rust-4.11.7
                                                rust-ntapi-0.4.2
                                                rust-num-conv-0.1.0
                                                rust-num-traits-0.2.19
                                                rust-num-enum-0.7.5
                                                rust-num-enum-derive-0.7.5
                                                rust-objc2-0.6.3
                                                rust-objc2-core-foundation-0.3.2
                                                rust-objc2-encode-4.1.0
                                                rust-objc2-foundation-0.3.2
                                                rust-once-cell-1.21.3
                                                rust-opaque-debug-0.3.1
                                                rust-ordered-stream-0.2.0
                                                rust-os-str-bytes-6.6.1
                                                rust-parking-2.2.1
                                                rust-pin-project-lite-0.2.16
                                                rust-piper-0.2.4
                                                rust-pkg-config-0.3.32
                                                rust-polling-3.11.0
                                                rust-poly1305-0.8.0
                                                rust-polyval-0.6.2
                                                rust-powerfmt-0.2.0
                                                rust-ppv-lite86-0.2.21
                                                rust-prctl-1.0.0
                                                rust-predicates-3.1.3
                                                rust-predicates-core-1.0.9
                                                rust-predicates-tree-1.0.12
                                                rust-proc-macro-crate-3.4.0
                                                rust-proc-macro-error-1.0.4
                                                rust-proc-macro-error-attr-1.0.4
                                                rust-proc-macro-hack-0.4.3
                                                rust-proc-macro-hack-impl-0.4.3
                                                rust-proc-macro2-1.0.103
                                                rust-quick-xml-0.37.5
                                                rust-quote-0.3.15
                                                rust-quote-1.0.42
                                                rust-r-efi-5.3.0
                                                rust-rand-0.8.5
                                                rust-rand-chacha-0.3.1
                                                rust-rand-core-0.6.4
                                                rust-rayon-1.11.0
                                                rust-rayon-core-1.13.0
                                                rust-redox-users-0.4.6
                                                rust-rusb-0.8.1
                                                rust-rustc-version-0.4.1
                                                rust-rustix-0.38.44
                                                rust-rustix-1.1.2
                                                rust-rustversion-1.0.22
                                                rust-ryu-1.0.21
                                                rust-salsa20-0.10.2
                                                rust-semver-1.0.27
                                                rust-serde-1.0.228
                                                rust-serde-core-1.0.228
                                                rust-serde-derive-1.0.228
                                                rust-serde-json-1.0.145
                                                rust-serde-repr-0.1.20
                                                rust-sha-1-0.9.8
                                                rust-sha-1-0.10.1
                                                rust-shlex-1.3.0
                                                rust-signal-hook-registry-1.4.7
                                                rust-slab-0.4.11
                                                rust-slog-2.8.2
                                                rust-slog-term-2.9.2
                                                rust-static-assertions-1.1.0
                                                rust-strsim-0.10.0
                                                rust-structure-0.1.2
                                                rust-structure-macro-impl-0.1.2
                                                rust-strum-0.26.3
                                                rust-strum-macros-0.26.4
                                                rust-subtle-2.4.1
                                                rust-syn-1.0.109
                                                rust-syn-2.0.111
                                                rust-sysinfo-0.31.4
                                                rust-tabwriter-1.4.1
                                                rust-tauri-winrt-notification-0.7.2
                                                rust-tempfile-3.23.0
                                                rust-term-1.2.1
                                                rust-termcolor-1.4.1
                                                rust-termtree-0.5.1
                                                rust-textwrap-0.16.2
                                                rust-thiserror-1.0.69
                                                rust-thiserror-2.0.17
                                                rust-thiserror-impl-1.0.69
                                                rust-thiserror-impl-2.0.17
                                                rust-thread-local-1.1.9
                                                rust-time-0.3.44
                                                rust-time-core-0.1.6
                                                rust-time-macros-0.2.24
                                                rust-toml-datetime-0.7.5+spec-1.1.0
                                                rust-toml-edit-0.23.10+spec-1.0.0
                                                rust-toml-parser-1.0.6+spec-1.1.0
                                                rust-tracing-0.1.44
                                                rust-tracing-attributes-0.1.31
                                                rust-tracing-core-0.1.36
                                                rust-typenum-1.19.0
                                                rust-uds-windows-1.1.0
                                                rust-unicode-ident-1.0.22
                                                rust-unicode-width-0.2.2
                                                rust-universal-hash-0.5.1
                                                rust-uuid-1.19.0
                                                rust-vcpkg-0.2.15
                                                rust-version-check-0.9.5
                                                rust-wasi-0.11.1+wasi-snapshot-preview1
                                                rust-wasip2-1.0.1+wasi-0.2.4
                                                rust-wasm-bindgen-0.2.106
                                                rust-wasm-bindgen-macro-0.2.106
                                                rust-wasm-bindgen-macro-support-0.2.106
                                                rust-wasm-bindgen-shared-0.2.106
                                                rust-which-6.0.3
                                                rust-winapi-0.3.9
                                                rust-winapi-i686-pc-windows-gnu-0.4.0
                                                rust-winapi-util-0.1.11
                                                rust-winapi-x86-64-pc-windows-gnu-0.4.0
                                                rust-windows-0.57.0
                                                rust-windows-0.61.3
                                                rust-windows-collections-0.2.0
                                                rust-windows-core-0.57.0
                                                rust-windows-core-0.61.2
                                                rust-windows-core-0.62.2
                                                rust-windows-future-0.2.1
                                                rust-windows-implement-0.57.0
                                                rust-windows-implement-0.60.2
                                                rust-windows-interface-0.57.0
                                                rust-windows-interface-0.59.3
                                                rust-windows-link-0.1.3
                                                rust-windows-link-0.2.1
                                                rust-windows-numerics-0.2.0
                                                rust-windows-result-0.1.2
                                                rust-windows-result-0.3.4
                                                rust-windows-result-0.4.1
                                                rust-windows-strings-0.4.2
                                                rust-windows-strings-0.5.1
                                                rust-windows-sys-0.59.0
                                                rust-windows-sys-0.61.2
                                                rust-windows-targets-0.52.6
                                                rust-windows-threading-0.1.0
                                                rust-windows-version-0.1.7
                                                rust-windows-aarch64-gnullvm-0.52.6
                                                rust-windows-aarch64-msvc-0.52.6
                                                rust-windows-i686-gnu-0.52.6
                                                rust-windows-i686-gnullvm-0.52.6
                                                rust-windows-i686-msvc-0.52.6
                                                rust-windows-x86-64-gnu-0.52.6
                                                rust-windows-x86-64-gnullvm-0.52.6
                                                rust-windows-x86-64-msvc-0.52.6
                                                rust-winnow-0.7.14
                                                rust-winsafe-0.0.19
                                                rust-wit-bindgen-0.46.0
                                                rust-yubico-manager-0.9.0
                                                rust-zbus-5.12.0
                                                rust-zbus-macros-5.12.0
                                                rust-zbus-names-4.2.0
                                                rust-zerocopy-0.8.31
                                                rust-zerocopy-derive-0.8.31
                                                rust-zeroize-1.8.2
                                                rust-zvariant-5.8.0
                                                rust-zvariant-derive-5.8.0
                                                rust-zvariant-utils-3.2.1))
                     (gitu =>
                           (list rust-ahash-0.8.12
                                 rust-aho-corasick-1.1.4
                                 rust-allocator-api2-0.2.21
                                 rust-android-system-properties-0.1.5
                                 rust-anes-0.1.6
                                 rust-anstream-0.6.21
                                 rust-anstyle-1.0.13
                                 rust-anstyle-parse-0.2.7
                                 rust-anstyle-query-1.1.5
                                 rust-anstyle-wincon-3.0.11
                                 rust-arboard-3.6.1
                                 rust-atomic-0.6.1
                                 rust-autocfg-1.5.0
                                 rust-bitflags-1.3.2
                                 rust-bitflags-2.10.0
                                 rust-bumpalo-3.19.1
                                 rust-bytemuck-1.24.0
                                 rust-cached-0.55.1
                                 rust-cached-proc-macro-0.24.0
                                 rust-cached-proc-macro-types-0.1.1
                                 rust-cassowary-0.3.0
                                 rust-cast-0.3.0
                                 rust-castaway-0.2.4
                                 rust-cc-1.2.50
                                 rust-cfg-if-1.0.4
                                 rust-chrono-0.4.42
                                 rust-ciborium-0.2.2
                                 rust-ciborium-io-0.2.2
                                 rust-ciborium-ll-0.2.2
                                 rust-clap-4.5.53
                                 rust-clap-builder-4.5.53
                                 rust-clap-derive-4.5.49
                                 rust-clap-lex-0.7.6
                                 rust-clipboard-win-5.4.1
                                 rust-colorchoice-1.0.4
                                 rust-compact-str-0.8.1
                                 rust-console-0.15.11
                                 rust-core-foundation-sys-0.8.7
                                 rust-criterion-0.5.1
                                 rust-criterion-plot-0.5.0
                                 rust-crossbeam-deque-0.8.6
                                 rust-crossbeam-epoch-0.9.18
                                 rust-crossbeam-utils-0.8.21
                                 rust-crossterm-0.28.1
                                 rust-crossterm-winapi-0.9.1
                                 rust-crunchy-0.2.4
                                 rust-darling-0.20.11
                                 rust-darling-core-0.20.11
                                 rust-darling-macro-0.20.11
                                 rust-diff-0.1.13
                                 rust-dispatch2-0.3.0
                                 rust-displaydoc-0.2.5
                                 rust-either-1.15.0
                                 rust-encode-unicode-1.0.0
                                 rust-equivalent-1.0.2
                                 rust-errno-0.3.14
                                 rust-error-code-3.3.2
                                 rust-etcetera-0.10.0
                                 rust-fastrand-2.3.0
                                 rust-figment-0.10.19
                                 rust-find-msvc-tools-0.1.5
                                 rust-fnv-1.0.7
                                 rust-foldhash-0.1.5
                                 rust-form-urlencoded-1.2.2
                                 rust-fsevent-sys-4.1.0
                                 rust-gethostname-1.1.0
                                 rust-getrandom-0.3.4
                                 rust-git-version-0.3.9
                                 rust-git-version-macro-0.3.9
                                 rust-git2-0.20.3
                                 rust-half-2.7.1
                                 rust-hashbrown-0.14.5
                                 rust-hashbrown-0.15.5
                                 rust-hashbrown-0.16.1
                                 rust-heck-0.5.0
                                 rust-hermit-abi-0.5.2
                                 rust-home-0.5.11
                                 rust-iana-time-zone-0.1.64
                                 rust-iana-time-zone-haiku-0.1.2
                                 rust-icu-collections-2.1.1
                                 rust-icu-locale-core-2.1.1
                                 rust-icu-normalizer-2.1.1
                                 rust-icu-normalizer-data-2.1.1
                                 rust-icu-properties-2.1.2
                                 rust-icu-properties-data-2.1.2
                                 rust-icu-provider-2.1.1
                                 rust-ident-case-1.0.1
                                 rust-idna-1.1.0
                                 rust-idna-adapter-1.2.1
                                 rust-imara-diff-0.2.0
                                 rust-indexmap-2.12.1
                                 rust-indoc-2.0.7
                                 rust-inotify-0.11.0
                                 rust-inotify-sys-0.1.5
                                 rust-insta-1.45.0
                                 rust-instability-0.3.10
                                 rust-is-terminal-0.4.17
                                 rust-is-terminal-polyfill-1.70.2
                                 rust-itertools-0.10.5
                                 rust-itertools-0.13.0
                                 rust-itertools-0.14.0
                                 rust-itoa-1.0.16
                                 rust-jobserver-0.1.34
                                 rust-js-sys-0.3.83
                                 rust-kqueue-1.1.1
                                 rust-kqueue-sys-1.0.4
                                 rust-lazy-static-1.5.0
                                 rust-libc-0.2.178
                                 rust-libgit2-sys-0.18.3+1.9.2
                                 rust-libz-sys-1.1.23
                                 rust-linux-raw-sys-0.4.15
                                 rust-linux-raw-sys-0.11.0
                                 rust-litemap-0.8.1
                                 rust-lock-api-0.4.14
                                 rust-log-0.4.29
                                 rust-lru-0.12.5
                                 rust-memchr-2.7.6
                                 rust-mio-1.1.1
                                 rust-nom-8.0.0
                                 rust-notify-8.2.0
                                 rust-notify-types-2.0.0
                                 rust-num-traits-0.2.19
                                 rust-objc2-0.6.3
                                 rust-objc2-app-kit-0.3.2
                                 rust-objc2-core-foundation-0.3.2
                                 rust-objc2-core-graphics-0.3.2
                                 rust-objc2-encode-4.1.0
                                 rust-objc2-foundation-0.3.2
                                 rust-objc2-io-surface-0.3.2
                                 rust-once-cell-1.21.3
                                 rust-once-cell-polyfill-1.70.2
                                 rust-oorandom-11.1.5
                                 rust-parking-lot-0.12.5
                                 rust-parking-lot-core-0.9.12
                                 rust-paste-1.0.15
                                 rust-percent-encoding-2.3.2
                                 rust-pkg-config-0.3.32
                                 rust-plotters-0.3.7
                                 rust-plotters-backend-0.3.7
                                 rust-plotters-svg-0.3.7
                                 rust-potential-utf-0.1.4
                                 rust-pretty-assertions-1.4.1
                                 rust-proc-macro2-1.0.103
                                 rust-quote-1.0.42
                                 rust-r-efi-5.3.0
                                 rust-ratatui-0.29.0
                                 rust-ratatui-macros-0.6.0
                                 rust-rayon-1.11.0
                                 rust-rayon-core-1.13.0
                                 rust-redox-syscall-0.1.57
                                 rust-redox-syscall-0.5.18
                                 rust-regex-1.12.2
                                 rust-regex-automata-0.4.13
                                 rust-regex-syntax-0.8.8
                                 rust-rustix-0.38.44
                                 rust-rustix-1.1.2
                                 rust-rustversion-1.0.22
                                 rust-ryu-1.0.21
                                 rust-same-file-1.0.6
                                 rust-scopeguard-1.2.0
                                 rust-serde-1.0.228
                                 rust-serde-core-1.0.228
                                 rust-serde-derive-1.0.228
                                 rust-serde-json-1.0.145
                                 rust-serde-spanned-0.6.9
                                 rust-shlex-1.3.0
                                 rust-signal-hook-0.3.18
                                 rust-signal-hook-mio-0.2.5
                                 rust-signal-hook-registry-1.4.7
                                 rust-similar-2.7.0
                                 rust-simple-logging-2.0.2
                                 rust-smallvec-1.15.1
                                 rust-smashquote-0.1.2
                                 rust-stable-deref-trait-1.2.1
                                 rust-static-assertions-1.1.0
                                 rust-stdext-0.3.3
                                 rust-streaming-iterator-0.1.9
                                 rust-strip-ansi-escapes-0.2.1
                                 rust-strsim-0.11.1
                                 rust-strum-0.26.3
                                 rust-strum-macros-0.26.4
                                 rust-syn-2.0.111
                                 rust-synstructure-0.13.2
                                 rust-temp-dir-0.1.16
                                 rust-temp-env-0.3.6
                                 rust-tempfile-3.23.0
                                 rust-thiserror-2.0.17
                                 rust-thiserror-impl-2.0.17
                                 rust-thread-id-3.3.0
                                 rust-tinystr-0.8.2
                                 rust-tinytemplate-1.2.1
                                 rust-tinyvec-1.10.0
                                 rust-toml-0.8.23
                                 rust-toml-datetime-0.6.11
                                 rust-toml-edit-0.22.27
                                 rust-toml-write-0.1.2
                                 rust-tree-sitter-0.25.6
                                 rust-tree-sitter-bash-0.25.0
                                 rust-tree-sitter-c-0.24.1
                                 rust-tree-sitter-c-sharp-0.23.1
                                 rust-tree-sitter-cpp-0.23.4
                                 rust-tree-sitter-elixir-0.3.4
                                 rust-tree-sitter-go-0.23.4
                                 rust-tree-sitter-haskell-0.23.1
                                 rust-tree-sitter-highlight-0.25.6
                                 rust-tree-sitter-html-0.23.2
                                 rust-tree-sitter-java-0.23.5
                                 rust-tree-sitter-javascript-0.23.1
                                 rust-tree-sitter-json-0.24.8
                                 rust-tree-sitter-language-0.1.6
                                 rust-tree-sitter-ocaml-0.24.2
                                 rust-tree-sitter-php-0.23.11
                                 rust-tree-sitter-python-0.23.6
                                 rust-tree-sitter-ruby-0.23.1
                                 rust-tree-sitter-rust-0.24.0
                                 rust-tree-sitter-scala-0.23.4
                                 rust-tree-sitter-toml-ng-0.7.0
                                 rust-tree-sitter-typescript-0.23.2
                                 rust-tui-prompts-0.5.2
                                 rust-uncased-0.9.10
                                 rust-unicode-ident-1.0.22
                                 rust-unicode-segmentation-1.12.0
                                 rust-unicode-truncate-1.1.0
                                 rust-unicode-width-0.1.14
                                 rust-unicode-width-0.2.0
                                 rust-url-2.5.7
                                 rust-utf8-iter-1.0.4
                                 rust-utf8parse-0.2.2
                                 rust-vcpkg-0.2.15
                                 rust-version-check-0.9.5
                                 rust-vte-0.14.1
                                 rust-walkdir-2.5.0
                                 rust-wasi-0.11.1+wasi-snapshot-preview1
                                 rust-wasip2-1.0.1+wasi-0.2.4
                                 rust-wasm-bindgen-0.2.106
                                 rust-wasm-bindgen-macro-0.2.106
                                 rust-wasm-bindgen-macro-support-0.2.106
                                 rust-wasm-bindgen-shared-0.2.106
                                 rust-web-sys-0.3.83
                                 rust-web-time-1.1.0
                                 rust-winapi-0.3.9
                                 rust-winapi-i686-pc-windows-gnu-0.4.0
                                 rust-winapi-util-0.1.11
                                 rust-winapi-x86-64-pc-windows-gnu-0.4.0
                                 rust-windows-core-0.62.2
                                 rust-windows-implement-0.60.2
                                 rust-windows-interface-0.59.3
                                 rust-windows-link-0.2.1
                                 rust-windows-result-0.4.1
                                 rust-windows-strings-0.5.1
                                 rust-windows-sys-0.59.0
                                 rust-windows-sys-0.60.2
                                 rust-windows-sys-0.61.2
                                 rust-windows-targets-0.52.6
                                 rust-windows-targets-0.53.5
                                 rust-windows-aarch64-gnullvm-0.52.6
                                 rust-windows-aarch64-gnullvm-0.53.1
                                 rust-windows-aarch64-msvc-0.52.6
                                 rust-windows-aarch64-msvc-0.53.1
                                 rust-windows-i686-gnu-0.52.6
                                 rust-windows-i686-gnu-0.53.1
                                 rust-windows-i686-gnullvm-0.52.6
                                 rust-windows-i686-gnullvm-0.53.1
                                 rust-windows-i686-msvc-0.52.6
                                 rust-windows-i686-msvc-0.53.1
                                 rust-windows-x86-64-gnu-0.52.6
                                 rust-windows-x86-64-gnu-0.53.1
                                 rust-windows-x86-64-gnullvm-0.52.6
                                 rust-windows-x86-64-gnullvm-0.53.1
                                 rust-windows-x86-64-msvc-0.52.6
                                 rust-windows-x86-64-msvc-0.53.1
                                 rust-winnow-0.7.14
                                 rust-wit-bindgen-0.46.0
                                 rust-writeable-0.6.2
                                 rust-x11rb-0.13.2
                                 rust-x11rb-protocol-0.13.2
                                 rust-yansi-1.0.1
                                 rust-yoke-0.8.1
                                 rust-yoke-derive-0.8.1
                                 rust-zerocopy-0.8.31
                                 rust-zerocopy-derive-0.8.31
                                 rust-zerofrom-0.1.6
                                 rust-zerofrom-derive-0.1.6
                                 rust-zerotrie-0.2.3
                                 rust-zerovec-0.11.5
                                 rust-zerovec-derive-0.11.2))
                     (rust-stakeholder =>
                                       (list rust-anstream-0.6.21
                                        rust-anstyle-1.0.13
                                        rust-anstyle-parse-0.2.7
                                        rust-anstyle-query-1.1.5
                                        rust-anstyle-wincon-3.0.11
                                        rust-bitflags-2.10.0
                                        rust-block2-0.6.2
                                        rust-bumpalo-3.19.1
                                        rust-cfg-if-1.0.4
                                        rust-cfg-aliases-0.2.1
                                        rust-clap-4.5.53
                                        rust-clap-builder-4.5.53
                                        rust-clap-derive-4.5.49
                                        rust-clap-lex-0.7.6
                                        rust-colorchoice-1.0.4
                                        rust-colored-3.0.0
                                        rust-console-0.15.11
                                        rust-ctrlc-3.5.1
                                        rust-dispatch2-0.3.0
                                        rust-encode-unicode-1.0.0
                                        rust-getrandom-0.3.4
                                        rust-heck-0.5.0
                                        rust-indicatif-0.17.11
                                        rust-is-terminal-polyfill-1.70.2
                                        rust-js-sys-0.3.83
                                        rust-libc-0.2.178
                                        rust-nix-0.30.1
                                        rust-number-prefix-0.4.0
                                        rust-objc2-0.6.3
                                        rust-objc2-encode-4.1.0
                                        rust-once-cell-1.21.3
                                        rust-once-cell-polyfill-1.70.2
                                        rust-portable-atomic-1.12.0
                                        rust-ppv-lite86-0.2.21
                                        rust-proc-macro2-1.0.103
                                        rust-quote-1.0.42
                                        rust-r-efi-5.3.0
                                        rust-rand-0.9.2
                                        rust-rand-chacha-0.9.0
                                        rust-rand-core-0.9.3
                                        rust-rustversion-1.0.22
                                        rust-strsim-0.11.1
                                        rust-syn-2.0.111
                                        rust-unicode-ident-1.0.22
                                        rust-unicode-width-0.2.2
                                        rust-utf8parse-0.2.2
                                        rust-wasip2-1.0.1+wasi-0.2.4
                                        rust-wasm-bindgen-0.2.106
                                        rust-wasm-bindgen-macro-0.2.106
                                        rust-wasm-bindgen-macro-support-0.2.106
                                        rust-wasm-bindgen-shared-0.2.106
                                        rust-web-time-1.1.0
                                        rust-windows-link-0.2.1
                                        rust-windows-sys-0.59.0
                                        rust-windows-sys-0.61.2
                                        rust-windows-targets-0.52.6
                                        rust-windows-aarch64-gnullvm-0.52.6
                                        rust-windows-aarch64-msvc-0.52.6
                                        rust-windows-i686-gnu-0.52.6
                                        rust-windows-i686-gnullvm-0.52.6
                                        rust-windows-i686-msvc-0.52.6
                                        rust-windows-x86-64-gnu-0.52.6
                                        rust-windows-x86-64-gnullvm-0.52.6
                                        rust-windows-x86-64-msvc-0.52.6
                                        rust-wit-bindgen-0.46.0
                                        rust-zerocopy-0.8.31
                                        rust-zerocopy-derive-0.8.31)))
