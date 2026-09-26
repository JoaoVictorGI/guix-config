;;; GNU Guix --- Functional package management for GNU
;;; Copyright © 2025 Hilton Chain <hako@ultrarare.space>
;;;
;;; This file is part of GNU Guix.
;;;
;;; GNU Guix is free software; you can redistribute it and/or modify it
;;; under the terms of the GNU General Public License as published by
;;; the Free Software Foundation; either version 3 of the License, or (at
;;; your option) any later version.
;;;
;;; GNU Guix is distributed in the hope that it will be useful, but
;;; WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;;
;;; You should have received a copy of the GNU General Public License
;;; along with GNU Guix.  If not, see <http://www.gnu.org/licenses/>.

(define-module (rust-crates)
  #:use-module (guix gexp)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system cargo)
  #:use-module ((gnu packages rust-sources) #:prefix package:)
  #:export (lookup-cargo-inputs))

;;;
;;; This file is managed by ‘guix import’.  Do NOT add definitions manually.
;;;

;;;
;;; Rust libraries fetched from crates.io and non-workspace development
;;; snapshots.
;;;

(define qqqq-separator 'begin-of-crates)

(define rust-adler2-2.0.1
  (crate-source "adler2" "2.0.1"
                "1ymy18s9hs7ya1pjc9864l30wk8p2qfqdi7mhhcc5nfakxbij09j"))

(define rust-aes-0.9.2
  (crate-source "aes" "0.9.2"
                "0n7dyw2g0wlcli8m147jgzqg9l6bhjj5bwci0l76mx85xixjgszq"))

(define rust-aho-corasick-1.1.4
  (crate-source "aho-corasick" "1.1.4"
                "00a32wb2h07im3skkikc495jvncf62jl6s96vwc7bhi70h9imlyx"))

(define rust-aligned-0.4.3
  (crate-source "aligned" "0.4.3"
                "1186lhb3gb4x6spzw7ff0zcraa8cr9zqk4ldpm5g1vb2ijc0higf"))

(define rust-aligned-vec-0.6.4
  (crate-source "aligned-vec" "0.6.4"
                "16vnf78hvfix5cwzd5xs5a2g6afmgb4h7n6yfsc36bv0r22072fw"))

(define rust-allocator-api2-0.2.21
  (crate-source "allocator-api2" "0.2.21"
                "08zrzs022xwndihvzdn78yqarv2b9696y67i6h78nla3ww87jgb8"))

(define rust-alsa-0.11.0
  (crate-source "alsa" "0.11.0"
                "0pdx9k0766lfwnflia3vaxl89rfjc4v3riym5jl71mnwkq24fac1"))

(define rust-alsa-sys-0.4.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "alsa-sys" "0.4.0"
                "010yyg1wp3dijm6574s3m0r23azab1scxv7b0zvd6p96b846jxdd"))

(define rust-android-system-properties-0.1.5
  (crate-source "android_system_properties" "0.1.5"
                "04b3wrz12837j7mdczqd95b732gw5q7q66cv4yn4646lvccp57l1"))

(define rust-anstream-1.0.0
  (crate-source "anstream" "1.0.0"
                "13d2bj0xfg012s4rmq44zc8zgy1q8k9yp7yhvfnarscnmwpj2jl2"))

(define rust-anstyle-1.0.14
  (crate-source "anstyle" "1.0.14"
                "0030szmgj51fxkic1hpakxxgappxzwm6m154a3gfml83lq63l2wl"))

(define rust-anstyle-parse-1.0.0
  (crate-source "anstyle-parse" "1.0.0"
                "03hkv2690s0crssbnmfkr76kw1k7ah2i6s5amdy9yca2n8w7zkjj"))

(define rust-anstyle-query-1.1.5
  (crate-source "anstyle-query" "1.1.5"
                "1p6shfpnbghs6jsa0vnqd8bb8gd7pjd0jr7w0j8jikakzmr8zi20"))

(define rust-anstyle-wincon-3.0.11
  (crate-source "anstyle-wincon" "3.0.11"
                "0zblannm70sk3xny337mz7c6d8q8i24vhbqi42ld8v7q1wjnl7i9"))

(define rust-anyhow-1.0.102
  (crate-source "anyhow" "1.0.102"
                "0b447dra1v12z474c6z4jmicdmc5yxz5bakympdnij44ckw2s83z"))

(define rust-apple-cf-0.7.1
  (crate-source "apple-cf" "0.7.1"
                "0x35k6f7086yh09q7x1b4n06id18pd0ss26s2kdrs8x0967mxfk7"))

(define rust-approx-0.5.1
  (crate-source "approx" "0.5.1"
                "1ilpv3dgd58rasslss0labarq7jawxmivk17wsh8wmkdm3q15cfa"))

(define rust-arbitrary-1.4.2
  (crate-source "arbitrary" "1.4.2"
                "1wcbi4x7i3lzcrkjda4810nqv03lpmvfhb0a85xrq1mbqjikdl63"))

(define rust-arg-enum-proc-macro-0.3.4
  (crate-source "arg_enum_proc_macro" "0.3.4"
                "1sjdfd5a8j6r99cf0bpqrd6b160x9vz97y5rysycsjda358jms8a"))

(define rust-arrayvec-0.7.6
  (crate-source "arrayvec" "0.7.6"
                "0l1fz4ccgv6pm609rif37sl5nv5k6lbzi7kkppgzqzh1vwix20kw"))

(define rust-as-slice-0.2.1
  (crate-source "as-slice" "0.2.1"
                "05j52y1ws8kir5zjxnl48ann0if79sb56p9nm76hvma01r7nnssi"))

(define rust-async-broadcast-0.7.2
  (crate-source "async-broadcast" "0.7.2"
                "0ckmqcwyqwbl2cijk1y4r0vy60i89gqc86ijrxzz5f2m4yjqfnj3"))

(define rust-async-channel-2.5.0
  (crate-source "async-channel" "2.5.0"
                "1ljq24ig8lgs2555myrrjighycpx2mbjgrm3q7lpa6rdsmnxjklj"))

(define rust-async-executor-1.14.0
  (crate-source "async-executor" "1.14.0"
                "0al1rmxjy7p7r6h50z698q5lwssqs5a2vzmqbazm1z2sv1rgjsy9"))

(define rust-async-io-2.6.0
  (crate-source "async-io" "2.6.0"
                "1z16s18bm4jxlmp6rif38mvn55442yd3wjvdfhvx4hkgxf7qlss5"))

(define rust-async-lock-3.4.2
  (crate-source "async-lock" "3.4.2"
                "04c3xrrdrfrvh9v0ajxrangpy38qi76qq268zslphnxxjqjpy3r9"))

(define rust-async-process-2.5.0
  (crate-source "async-process" "2.5.0"
                "0xfswxmng6835hjlfhv7k0jrfp7czqxpfj6y2s5dsp05q0g94l7w"))

(define rust-async-recursion-1.1.1
  (crate-source "async-recursion" "1.1.1"
                "04ac4zh8qz2xjc79lmfi4jlqj5f92xjvfaqvbzwkizyqd4pl4hrv"))

(define rust-async-signal-0.2.14
  (crate-source "async-signal" "0.2.14"
                "11dlpb15la279r5cazppy18gbk2xzzl60ahzl19m1kr0l2psmdaj"))

(define rust-async-stream-0.3.6
  (crate-source "async-stream" "0.3.6"
                "0xl4zqncrdmw2g6241wgr11dxdg4h7byy6bz3l6si03qyfk72nhb"))

(define rust-async-stream-impl-0.3.6
  (crate-source "async-stream-impl" "0.3.6"
                "0kaplfb5axsvf1gfs2gk6c4zx6zcsns0yf3ssk7iwni7bphlvhn7"))

(define rust-async-task-4.7.1
  (crate-source "async-task" "4.7.1"
                "1pp3avr4ri2nbh7s6y9ws0397nkx1zymmcr14sq761ljarh3axcb"))

(define rust-async-trait-0.1.89
  (crate-source "async-trait" "0.1.89"
                "1fsxxmz3rzx1prn1h3rs7kyjhkap60i7xvi0ldapkvbb14nssdch"))

(define rust-atoi-2.0.0
  (crate-source "atoi" "2.0.0"
                "0a05h42fggmy7h0ajjv6m7z72l924i7igbx13hk9d8pyign9k3gj"))

(define rust-atomic-0.6.1
  (crate-source "atomic" "0.6.1"
                "0h43ljcgbl6vk62hs6yk7zg7qn3myzvpw8k7isb9nzhkbdvvz758"))

(define rust-atomic-waker-1.1.2
  (crate-source "atomic-waker" "1.1.2"
                "1h5av1lw56m0jf0fd3bchxq8a30xv0b4wv8s4zkp4s0i7mfvs18m"))

(define rust-autocfg-1.5.1
  (crate-source "autocfg" "1.5.1"
                "0lqasy5i30flcgih1b50kvsk6z32g09r1q4ql7q81pj6228jy0zj"))

(define rust-av-scenechange-0.14.1
  (crate-source "av-scenechange" "0.14.1"
                "1543y7riwcy4mmsgcalxcm3bnb41hvwiqiz774nbj68fq9vischg"))

(define rust-av1-grain-0.2.5
  (crate-source "av1-grain" "0.2.5"
                "1y3p43i5xncbny0pfh8kw09am3l3mgyg82ln65r3f434443xpzcc"))

(define rust-avif-serialize-0.8.9
  (crate-source "avif-serialize" "0.8.9"
                "0f3z55fma6xmdj0a0x15vz91cqisiardrfgbjlwb2q6lyzjqy5z7"))

(define rust-aws-lc-rs-1.17.0
  (crate-source "aws-lc-rs" "1.17.0"
                "003d69lq9qf12bj4j6csy3nrvilwa30yd9x9blx7h1f27vyg3hjy"))

(define rust-aws-lc-sys-0.41.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "aws-lc-sys" "0.41.0"
                "1x735y1qny5v2gzpl928z1ppddb906nl1n8d2yv3mfc5rrwrfbqs"))

(define rust-axum-0.8.9
  (crate-source "axum" "0.8.9"
                "146df5x8dhczm1sp939gr3839220wl6rxc1k65bzc450z72ridii"))

(define rust-axum-core-0.5.6
  (crate-source "axum-core" "0.5.6"
                "1lcjhxysnbc64rh21ag9m9fpiryd1iwcdh9mwxz1yadiswqqziq8"))

(define rust-axum-extra-0.12.6
  (crate-source "axum-extra" "0.12.6"
                "0w3r7w87726ycs1l5r15gblmpif3r4ah08x54cnspffc84xnhi5y"))

(define rust-base64-0.22.1
  (crate-source "base64" "0.22.1"
                "1imqzgh7bxcikp5vx3shqvw9j09g9ly0xr0jma0q66i52r7jbcvj"))

(define rust-base64-0.23.1
  (crate-source "base64" "0.23.1"
                "19cdw4vh3d8qndbxjmbf6ddvmpicyddg704b4fjxjlchz7ncs1xc"))

(define rust-base64-simd-0.8.0
  (crate-source "base64-simd" "0.8.0"
                "15cihnjqpxy0h7llpk816czyp5z613yrvsivw9i8f5vkivkvp6ik"))

(define rust-base64ct-1.8.3
  (crate-source "base64ct" "1.8.3"
                "01nyyyx84bhwrcc168hn47d8gvz2pzpv3y3lmck7mq4hw5vh3x9a"))

(define rust-bit-field-0.10.3
  (crate-source "bit_field" "0.10.3"
                "1ikhbph4ap4w692c33r8bbv6yd2qxm1q3f64845grp1s6b3l0jqy"))

(define rust-bit-set-0.5.3
  (crate-source "bit-set" "0.5.3"
                "1wcm9vxi00ma4rcxkl3pzzjli6ihrpn9cfdi0c5b4cvga2mxs007"))

(define rust-bit-vec-0.6.3
  (crate-source "bit-vec" "0.6.3"
                "1ywqjnv60cdh1slhz67psnp422md6jdliji6alq0gmly2xm9p7rl"))

(define rust-bitflags-1.3.2
  (crate-source "bitflags" "1.3.2"
                "12ki6w8gn1ldq7yz9y680llwk5gmrhrzszaa17g1sbrw2r2qvwxy"))

(define rust-bitflags-2.13.0
  (crate-source "bitflags" "2.13.0"
                "1y239gpvl061rfvav7jds8mjs42kmwi39is7yx5d1qw3hvp8nf5l"))

(define rust-bitstream-io-4.10.0
  (crate-source "bitstream-io" "4.10.0"
                "07zxcy47l51k6vsxphzhgcnqyzl21pprs7212687c64s56z01zvy"))

(define rust-bitvec-1.0.1
  (crate-source "bitvec" "1.0.1"
                "173ydyj2q5vwj88k6xgjnfsshs4x9wbvjjv7sm0h36r34hn87hhv"))

(define rust-block-buffer-0.10.4
  (crate-source "block-buffer" "0.10.4"
                "0w9sa2ypmrsqqvc20nhwr75wbb5cjr4kkyhpjm1z1lv2kdicfy1h"))

(define rust-block-buffer-0.12.1
  (crate-source "block-buffer" "0.12.1"
                "1ak0cvmxz3yifqmzv6aba9606brsz7d5g3piv5xdcvjsx7dwgxnj"))

(define rust-block-padding-0.4.2
  (crate-source "block-padding" "0.4.2"
                "12q66364a5j80iqsi9jg8c447xp7inavmd1qlkw96kpg4b81s3vi"))

(define rust-block2-0.6.2
  (crate-source "block2" "0.6.2"
                "1xcfllzx6c3jc554nmb5qy6xmlkl6l6j5ib4wd11800n0n3rvsyd"))

(define rust-blocking-1.6.2
  (crate-source "blocking" "1.6.2"
                "08bz3f9agqlp3102snkvsll6wc9ag7x5m1xy45ak2rv9pq18sgz8"))

(define rust-bstr-1.12.1
  (crate-source "bstr" "1.12.1"
                "1arc1v7h5l86vd6z76z3xykjzldqd5icldn7j9d3p7z6x0d4w133"))

(define rust-built-0.8.1
  (crate-source "built" "0.8.1"
                "1saq332pd6g3svvc9ah8myjpfvgqlzl2ksb1ypp3976kjcfm63jw"))

(define rust-bumpalo-3.20.3
  (crate-source "bumpalo" "3.20.3"
                "0jc6va3nwcqikm7chnpdv1s87my3gs2j7g1sc7g3k91brg3arxbj"))

(define rust-by-address-1.2.1
  (crate-source "by_address" "1.2.1"
                "01idmag3lcwnnqrnnyik2gmbrr34drsi97q15ihvcbbidf2kryk4"))

(define rust-bytemuck-1.25.0
  (crate-source "bytemuck" "1.25.0"
                "1v1z32igg9zq49phb3fra0ax5r2inf3aw473vldnm886sx5vdvy8"))

(define rust-bytemuck-derive-1.10.2
  (crate-source "bytemuck_derive" "1.10.2"
                "1zvmjmw1sdmx9znzm4dpbb2yvz9vyim8w6gp4z256l46qqdvvazr"))

(define rust-byteorder-1.5.0
  (crate-source "byteorder" "1.5.0"
                "0jzncxyf404mwqdbspihyzpkndfgda450l0893pz5xj685cg5l0z"))

(define rust-byteorder-lite-0.1.0
  (crate-source "byteorder-lite" "0.1.0"
                "15alafmz4b9az56z6x7glcbcb6a8bfgyd109qc3bvx07zx4fj7wg"))

(define rust-bytes-1.12.1
  (crate-source "bytes" "1.12.1"
                "017z19dpg4f942h051m7bpnzcgng042hhcpd7bmg7bjjqd42lrgw"))

(define rust-cairo-rs-0.22.0
  (crate-source "cairo-rs" "0.22.0"
                "15fb1m9vlsni37g9qwqgmag7s69f3bplylm0v567901lg6mdkj2w"))

(define rust-cairo-sys-rs-0.22.0
  (crate-source "cairo-sys-rs" "0.22.0"
                "0m3dnyax3l8nwypc2lzzd41bbfrjxykbd39bw2p5yzq42dbrid7q"))

(define rust-castaway-0.2.4
  (crate-source "castaway" "0.2.4"
                "0nn5his5f8q20nkyg1nwb40xc19a08yaj4y76a8q2y3mdsmm3ify"))

(define rust-cbc-0.2.1
  (crate-source "cbc" "0.2.1"
                "15l8zvdhfazl994ijjww6b8z0p4a7jrqhb44xc5ixlc8bzpcjbff"))

(define rust-cc-1.2.64
  (crate-source "cc" "1.2.64"
                "07shcd8faxw7csz13m3cg2mj6i8z07pqs960k181pscbjpyqgn6s"))

(define rust-cesu8-1.1.0
  (crate-source "cesu8" "1.1.0"
                "0g6q58wa7khxrxcxgnqyi9s1z2cjywwwd3hzr5c55wskhx6s0hvd"))

(define rust-cfg-aliases-0.2.1
  (crate-source "cfg_aliases" "0.2.1"
                "092pxdc1dbgjb6qvh83gk56rkic2n2ybm4yvy76cgynmzi3zwfk1"))

(define rust-cfg-expr-0.20.8
  (crate-source "cfg-expr" "0.20.8"
                "0z4r6l4936g1c1s27ryvjdy5pjij6sfvs3myk3hji9dgpi13asgv"))

(define rust-cfg-if-1.0.4
  (crate-source "cfg-if" "1.0.4"
                "008q28ajc546z5p2hcwdnckmg0hia7rnx52fni04bwqkzyrghc4k"))

(define rust-chacha20-0.10.0
  (crate-source "chacha20" "0.10.0"
                "00bn2rn8l68qvlq93mhq7b4ns4zy9qbjsyjbb9kljgl4hqr9i3bg"))

(define rust-chrono-0.4.45
  (crate-source "chrono" "0.4.45"
                "09rkcgk6is2sdhqs9142zv8xqnj8ryx8m9hknllqwyv9wxi9x9qs"))

(define rust-cipher-0.5.2
  (crate-source "cipher" "0.5.2"
                "0v7sic43nmz4rgql62wmxq0z63s80gnmd0w5q1vlhw6djcn2mkz8"))

(define rust-clap-4.6.6
  (crate-source "clap" "4.6.6"
                "1jmx5z8d6jbvxdz6dybh599s4rd7ns6sl90p2rrdga09yh3pwg27"))

(define rust-clap-builder-4.6.6
  (crate-source "clap_builder" "4.6.6"
                "12cqg25zpjc3k82cpqa2v9h7s3vk1vydpgnwl8lfg6lfm2jzwj3v"))

(define rust-clap-derive-4.6.4
  (crate-source "clap_derive" "4.6.4"
                "0qd0v7pa2arwxjjinmjim6xrjy61bc28m1yryhc7zjjssswx44nh"))

(define rust-clap-lex-1.1.0
  (crate-source "clap_lex" "1.1.0"
                "1ycqkpygnlqnndghhcxjb44lzl0nmgsia64x9581030yifxs7m68"))

(define rust-cmake-0.1.58
  (crate-source "cmake" "0.1.58"
                "0y06zxw5sv1p5vvpp5rz1qwbrq7ccawrl09nqy5ahx1a5418mxy0"))

(define rust-cmov-0.5.4
  (crate-source "cmov" "0.5.4"
                "0yh22sqdvcdrfbhvnja4kaq5dyklpb4s70w5r6rplfdw4jna17hc"))

(define rust-color-quant-1.1.0
  (crate-source "color_quant" "1.1.0"
                "12q1n427h2bbmmm1mnglr57jaz2dj9apk0plcxw7nwqiai7qjyrx"))

(define rust-colorchoice-1.0.5
  (crate-source "colorchoice" "1.0.5"
                "0w75k89hw39p0mnnhlrwr23q50rza1yjki44qvh2mgrnj065a1qx"))

(define rust-combine-4.6.7
  (crate-source "combine" "4.6.7"
                "1z8rh8wp59gf8k23ar010phgs0wgf5i8cx4fg01gwcnzfn5k0nms"))

(define rust-compact-str-0.9.1
  (crate-source "compact_str" "0.9.1"
                "1aq0vx3xnaxf9k8p1pwch5v5av0xj2ddq2av25aa76jd4z1d3zcx"))

(define rust-concurrent-queue-2.5.0
  (crate-source "concurrent-queue" "2.5.0"
                "0wrr3mzq2ijdkxwndhf79k952cp4zkz35ray8hvsxl96xrx1k82c"))

(define rust-const-oid-0.10.2
  (crate-source "const-oid" "0.10.2"
                "0p7m286mp8aai4sa72g7ji6qm0d4ns8wg4i4b2hj9p9615zm3vx6"))

(define rust-const-oid-0.9.6
  (crate-source "const-oid" "0.9.6"
                "1y0jnqaq7p2wvspnx7qj76m7hjcqpz73qzvr9l2p9n2s51vr6if2"))

(define rust-convert-case-0.10.0
  (crate-source "convert_case" "0.10.0"
                "1fff1x78mp2c233g68my0ag0zrmjdbym8bfyahjbfy4cxza5hd33"))

(define rust-cookie-0.18.1
  (crate-source "cookie" "0.18.1"
                "0iy749flficrlvgr3hjmf3igr738lk81n5akzf4ym4cs6cxg7pjd"))

(define rust-cookie-store-0.22.1
  (crate-source "cookie_store" "0.22.1"
                "01jjqwlg3v76b627ar6mm8bgshjv51kag16swg5cc3k1rw1w3chm"))

(define rust-core-foundation-0.10.1
  (crate-source "core-foundation" "0.10.1"
                "1xjns6dqf36rni2x9f47b65grxwdm20kwdg9lhmzdrrkwadcv9mj"))

(define rust-core-foundation-0.9.4
  (crate-source "core-foundation" "0.9.4"
                "13zvbbj07yk3b61b8fhwfzhy35535a583irf23vlcg59j7h9bqci"))

(define rust-core-foundation-sys-0.8.7
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "core-foundation-sys" "0.8.7"
                "12w8j73lazxmr1z0h98hf3z623kl8ms7g07jch7n4p8f9nwlhdkp"))

(define rust-coreaudio-rs-0.14.2
  (crate-source "coreaudio-rs" "0.14.2"
                "0n5vfpjf3x3qlb978x2kwsg9s6iphm1svjc2al1mmxmw7v57spbx"))

(define rust-cpal-0.17.3
  (crate-source "cpal" "0.17.3"
                "1mq6lpmzfpnjs7gn8wv8qpnj951g7wk1dinasyaxiw60caijv56q"))

(define rust-cpubits-0.1.1
  (crate-source "cpubits" "0.1.1"
                "1bh6rvanxm00myf1rmnh44hq2jdxn69971c92s4klz0k76f5zf0m"))

(define rust-cpufeatures-0.2.17
  (crate-source "cpufeatures" "0.2.17"
                "10023dnnaghhdl70xcds12fsx2b966sxbxjq5sxs49mvxqw5ivar"))

(define rust-cpufeatures-0.3.0
  (crate-source "cpufeatures" "0.3.0"
                "00fjhygsqmh4kbxxlb99mcsbspxcai6hjydv4c46pwb67wwl2alb"))

(define rust-crc-3.4.0
  (crate-source "crc" "3.4.0"
                "03dsq5qsv86m35ikg84l80d00wnkjm8q4pjxgac0vaqjrnhs5f2y"))

(define rust-crc-catalog-2.5.0
  (crate-source "crc-catalog" "2.5.0"
                "0lq8dl60g457za8la86pak6i7ydxanm2lrpkqh5kyjkbz7m9hxi1"))

(define rust-crc32fast-1.5.0
  (crate-source "crc32fast" "1.5.0"
                "04d51liy8rbssra92p0qnwjw8i9rm9c4m3bwy19wjamz1k4w30cl"))

(define rust-critical-section-1.2.0
  (crate-source "critical-section" "1.2.0"
                "02ylhcykxjc40xrfhk1lwc21jqgz4dbwv3jr49ymw733c51yl3kr"))

(define rust-crossbeam-channel-0.5.15
  (crate-source "crossbeam-channel" "0.5.15"
                "1cicd9ins0fkpfgvz9vhz3m9rpkh6n8d3437c3wnfsdkd3wgif42"))

(define rust-crossbeam-deque-0.8.6
  (crate-source "crossbeam-deque" "0.8.6"
                "0l9f1saqp1gn5qy0rxvkmz4m6n7fc0b3dbm6q1r5pmgpnyvi3lcx"))

(define rust-crossbeam-epoch-0.9.18
  (crate-source "crossbeam-epoch" "0.9.18"
                "03j2np8llwf376m3fxqx859mgp9f83hj1w34153c7a9c7i5ar0jv"))

(define rust-crossbeam-queue-0.3.12
  (crate-source "crossbeam-queue" "0.3.12"
                "059igaxckccj6ndmg45d5yf7cm4ps46c18m21afq3pwiiz1bnn0g"))

(define rust-crossbeam-utils-0.8.21
  (crate-source "crossbeam-utils" "0.8.21"
                "0a3aa2bmc8q35fb67432w16wvi54sfmb69rk9h5bhd18vw0c99fh"))

(define rust-crossterm-0.29.0
  (crate-source "crossterm" "0.29.0"
                "0yzqxxd90k7d2ac26xq1awsznsaq0qika2nv1ik3p0vzqvjg5ffq"))

(define rust-crossterm-winapi-0.9.1
  (crate-source "crossterm_winapi" "0.9.1"
                "0axbfb2ykbwbpf1hmxwpawwfs8wvmkcka5m561l7yp36ldi7rpdc"))

(define rust-crunchy-0.2.4
  (crate-source "crunchy" "0.2.4"
                "1mbp5navim2qr3x48lyvadqblcxc1dm0lqr0swrkkwy2qblvw3s6"))

(define rust-crypto-common-0.1.7
  (crate-source "crypto-common" "0.1.7"
                "02nn2rhfy7kvdkdjl457q2z0mklcvj9h662xrq6dzhfialh2kj3q"))

(define rust-crypto-common-0.2.2
  (crate-source "crypto-common" "0.2.2"
                "0lql5wjlrjkd3r0w32rwbgqfmgg84ms3h65ldnlckmkc3nb4qvnf"))

(define rust-csscolorparser-0.6.2
  (crate-source "csscolorparser" "0.6.2"
                "1gxh11hajx96mf5sd0az6mfsxdryfqvcfcphny3yfbfscqq7sapb"))

(define rust-ctr-0.10.1
  (crate-source "ctr" "0.10.1"
                "088z8sa9aw7ij1sy4hlpxz20jhffnsfiwmsdysb2a29pnb2a3b5s"))

(define rust-ctutils-0.4.2
  (crate-source "ctutils" "0.4.2"
                "17m2s9jv7i780k26cq2fcyslg0pakv9plwdrmygdwha1hfiiambx"))

(define rust-darling-0.20.11
  (crate-source "darling" "0.20.11"
                "1vmlphlrlw4f50z16p4bc9p5qwdni1ba95qmxfrrmzs6dh8lczzw"))

(define rust-darling-0.23.0
  (crate-source "darling" "0.23.0"
                "179fj6p6ajw4dnkrik51wjhifxwy02x5zhligyymcb905zd17bi5"))

(define rust-darling-core-0.20.11
  (crate-source "darling_core" "0.20.11"
                "0bj1af6xl4ablnqbgn827m43b8fiicgv180749f5cphqdmcvj00d"))

(define rust-darling-core-0.23.0
  (crate-source "darling_core" "0.23.0"
                "1c033vrks38vpw8kwgd5w088dsr511kfz55n9db56prkgh7sarcq"))

(define rust-darling-macro-0.20.11
  (crate-source "darling_macro" "0.20.11"
                "1bbfbc2px6sj1pqqq97bgqn6c8xdnb2fmz66f7f40nrqrcybjd7w"))

(define rust-darling-macro-0.23.0
  (crate-source "darling_macro" "0.23.0"
                "13fvzji9xyp304mgq720z5l0xgm54qj68jibwscagkynggn88fdc"))

(define rust-dasp-sample-0.11.0
  (crate-source "dasp_sample" "0.11.0"
                "0zzw35akm3qs2rixbmlijk6h0l4g9ry6g74qc59zv1q8vs1f31qc"))

(define rust-data-encoding-2.11.0
  (crate-source "data-encoding" "2.11.0"
                "1j00wfmk4dzn4bnib07qlhylmd6a3kizwjz8mp00iix3vlamzbm4"))

(define rust-deltae-0.3.2
  (crate-source "deltae" "0.3.2"
                "1d3hw9hpvicl9x0x34jr2ybjk5g5ym1lhbyz6zj31110gq8zaaap"))

(define rust-der-0.7.10
  (crate-source "der" "0.7.10"
                "1jyxacyxdx6mxbkfw99jz59dzvcd9k17rq01a7xvn1dr6wl87hg7"))

(define rust-deranged-0.5.8
  (crate-source "deranged" "0.5.8"
                "0711df3w16vx80k55ivkwzwswziinj4dz05xci3rvmn15g615n3w"))

(define rust-derive-builder-0.20.2
  (crate-source "derive_builder" "0.20.2"
                "0is9z7v3kznziqsxa5jqji3ja6ay9wzravppzhcaczwbx84znzah"))

(define rust-derive-builder-core-0.20.2
  (crate-source "derive_builder_core" "0.20.2"
                "1s640r6q46c2iiz25sgvxw3lk6b6v5y8hwylng7kas2d09xwynrd"))

(define rust-derive-builder-macro-0.20.2
  (crate-source "derive_builder_macro" "0.20.2"
                "0g1zznpqrmvjlp2w7p0jzsjvpmw5rvdag0rfyypjhnadpzib0qxb"))

(define rust-derive-more-2.1.1
  (crate-source "derive_more" "2.1.1"
                "0d5i10l4aff744jw7v4n8g6cv15rjk5mp0f1z522pc2nj7jfjlfp"))

(define rust-derive-more-impl-2.1.1
  (crate-source "derive_more-impl" "2.1.1"
                "1jwdp836vymp35d7mfvvalplkdgk2683nv3zjlx65n1194k9g6kr"))

(define rust-digest-0.10.7
  (crate-source "digest" "0.10.7"
                "14p2n6ih29x81akj097lvz7wi9b6b9hvls0lwrv7b6xwyy0s5ncy"))

(define rust-digest-0.11.3
  (crate-source "digest" "0.11.3"
                "1hnmhd4rkybr11292w42pz9ppzx1h49glrhqg107k4s1b2xnvpgi"))

(define rust-dirs-6.0.0
  (crate-source "dirs" "6.0.0"
                "0knfikii29761g22pwfrb8d0nqpbgw77sni9h2224haisyaams63"))

(define rust-dirs-sys-0.5.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "dirs-sys" "0.5.0"
                "1aqzpgq6ampza6v012gm2dppx9k35cdycbj54808ksbys9k366p0"))

(define rust-dispatch2-0.3.1
  (crate-source "dispatch2" "0.3.1"
                "0f5xmnbzpaz1g80m27kd804p75nswh0ikb6wvqh4ba3x9rz3c3hy"))

(define rust-displaydoc-0.2.6
  (crate-source "displaydoc" "0.2.6"
                "0kyxwfbdmagd8afzb2pzja7wj8dhah7smxdsgw00iq8pa2jhmiqs"))

(define rust-document-features-0.2.12
  (crate-source "document-features" "0.2.12"
                "0qcgpialq3zgvjmsvar9n6v10rfbv6mk6ajl46dd4pj5hn3aif6l"))

(define rust-doom-fish-utils-0.2.1
  (crate-source "doom-fish-utils" "0.2.1"
                "19y6407fhx80vccxwcfdrdzr8gz49i8x3n305qfbwnm4jclsyp07"))

(define rust-doom-fish-utils-0.3.3
  (crate-source "doom-fish-utils" "0.3.3"
                "17vzyrgbbcwvvvxmk5jrxzllsnfcvjwrbhwzv04ij6nvl31gc0f8"))

(define rust-dotenvy-0.15.7
  (crate-source "dotenvy" "0.15.7"
                "16s3n973n5aqym02692i1npb079n5mb0fwql42ikmwn8wnrrbbqs"))

(define rust-dunce-1.0.5
  (crate-source "dunce" "1.0.5"
                "04y8wwv3vvcqaqmqzssi6k0ii9gs6fpz96j5w9nky2ccsl23axwj"))

(define rust-ecow-0.2.6
  (crate-source "ecow" "0.2.6"
                "00mxjzbmz215z8s2x8z7xgh0y0bz9k5m4bg2w9napfkg56dzgr3q"))

(define rust-educe-0.7.4
  (crate-source "educe" "0.7.4"
                "0ip6caxg45pss5m100n6d4kg0i7i5zhvmmwcyv44pxrbb9qy3hwj"))

(define rust-either-1.16.0
  (crate-source "either" "1.16.0"
                "17k7jfbdz7k440h6lws9baz8p9zlxgb41sig3w81h80nwzsjyqli"))

(define rust-encoding-rs-0.8.35
  (crate-source "encoding_rs" "0.8.35"
                "1wv64xdrr9v37rqqdjsyb8l8wzlcbab80ryxhrszvnj59wy0y0vm"))

(define rust-endi-1.1.1
  (crate-source "endi" "1.1.1"
                "16a0076dx41vgrzzimm9clcym77h732czqjiajanmzvd1i1y5dv6"))

(define rust-enum-ordinalize-4.4.1
  (crate-source "enum-ordinalize" "4.4.1"
                "1sxkclnqr0k11x307hda1bryyj80a3nymlzplr74c3n1i3ahiy07"))

(define rust-enum-ordinalize-derive-4.4.1
  (crate-source "enum-ordinalize-derive" "4.4.1"
                "0ch4b4k355vb71ph2f5nzp2rzxlfmsz8c2v539xada2bsgi2ira2"))

(define rust-enumflags2-0.7.12
  (crate-source "enumflags2" "0.7.12"
                "1vzcskg4dca2jiflsfx1p9yw1fvgzcakcs7cpip0agl51ilgf9qh"))

(define rust-enumflags2-derive-0.7.12
  (crate-source "enumflags2_derive" "0.7.12"
                "09rqffacafl1b83ir55hrah9gza0x7pzjn6lr6jm76fzix6qmiv7"))

(define rust-equator-0.4.2
  (crate-source "equator" "0.4.2"
                "1z760z5r0haxjyakbqxvswrz9mq7c29arrivgq8y1zldhc9v44a7"))

(define rust-equator-macro-0.4.2
  (crate-source "equator-macro" "0.4.2"
                "1cqzx3cqn9rxln3a607xr54wippzff56zs5chqdf3z2bnks3rwj4"))

(define rust-equivalent-1.0.2
  (crate-source "equivalent" "1.0.2"
                "03swzqznragy8n0x31lqc78g2af054jwivp7lkrbrc0khz74lyl7"))

(define rust-errno-0.3.14
  (crate-source "errno" "0.3.14"
                "1szgccmh8vgryqyadg8xd58mnwwicf39zmin3bsn63df2wbbgjir"))

(define rust-etcetera-0.8.0
  (crate-source "etcetera" "0.8.0"
                "0hxrsn75dirbjhwgkdkh0pnpqrnq17ypyhjpjaypgax1hd91nv8k"))

(define rust-euclid-0.22.14
  (crate-source "euclid" "0.22.14"
                "01ksjl4vb8ms89laswnjpld3z4n6c1s7qlqq0djx3imiwdjm787i"))

(define rust-event-listener-5.4.1
  (crate-source "event-listener" "5.4.1"
                "1asnp3agbr8shcl001yd935m167ammyi8hnvl0q1ycajryn6cfz1"))

(define rust-event-listener-strategy-0.5.4
  (crate-source "event-listener-strategy" "0.5.4"
                "14rv18av8s7n8yixg38bxp5vg2qs394rl1w052by5npzmbgz7scb"))

(define rust-eventsource-stream-0.2.3
  (crate-source "eventsource-stream" "0.2.3"
                "1awhkl4xh9f66j9m770qvn2l74cr4l59ssqmv4lz99a7j9bg9zkl"))

(define rust-exr-1.74.0
  (crate-source "exr" "1.74.0"
                "1gk3cc2qkfm0jqw4v1d7g4c356k9iz583bq17iiwp8kalm1y0023"))

(define rust-extended-0.1.0
  (crate-source "extended" "0.1.0"
                "0r830ak1a9775i9yl5lljm29zbnlncw7xlfz35mhgjrz43c775mg"))

(define rust-fancy-regex-0.11.0
  (crate-source "fancy-regex" "0.11.0"
                "18j0mmzfycibhxhhhfja00dxd1vf8x5c28lbry224574h037qpxr"))

(define rust-fast-srgb8-1.0.0
  (crate-source "fast-srgb8" "1.0.0"
                "18g6xwwh4gnkyx1352hnvwagpv0n4y98yp2llm8vyvwxh487abnx"))

(define rust-fastrand-2.4.1
  (crate-source "fastrand" "2.4.1"
                "1mnqxxnxvd69ma9mczabpbbsgwlhd6l78yv3vd681453a9s247wz"))

(define rust-fax-0.2.7
  (crate-source "fax" "0.2.7"
                "0nmc65jjdym0f7lr4qm2q7awz1p5arm8i19wv1cmsg92cfahgwfa"))

(define rust-fdeflate-0.3.7
  (crate-source "fdeflate" "0.3.7"
                "130ga18vyxbb5idbgi07njymdaavvk6j08yh1dfarm294ssm6s0y"))

(define rust-field-offset-0.3.6
  (crate-source "field-offset" "0.3.6"
                "0zq5sssaa2ckmcmxxbly8qgz3sxpb8g1lwv90sdh1z74qif2gqiq"))

(define rust-filedescriptor-0.8.3
  (crate-source "filedescriptor" "0.8.3"
                "0bb8qqa9h9sj2mzf09yqxn260qkcqvmhmyrmdjvyxcn94knmh1z4"))

(define rust-filesentry-0.2.2
  (crate-source "filesentry" "0.2.2"
                "04yjwmmg3df8f40ciddmwi9jz4w9xa149b1vi5x5v36lsy7ka0hj"))

(define rust-find-msvc-tools-0.1.9
  (crate-source "find-msvc-tools" "0.1.9"
                "10nmi0qdskq6l7zwxw5g56xny7hb624iki1c39d907qmfh3vrbjv"))

(define rust-finl-unicode-1.4.0
  (crate-source "finl_unicode" "1.4.0"
                "1md4j32sa8g6y7q9yphpslhhjdjxig1bczkjp8mxccz5lv1xsi4q"))

(define rust-fixedbitset-0.4.2
  (crate-source "fixedbitset" "0.4.2"
                "101v41amgv5n9h4hcghvrbfk5vrncx1jwm35rn5szv4rk55i7rqc"))

(define rust-flate2-1.1.9
  (crate-source "flate2" "1.1.9"
                "0g2pb7cxnzcbzrj8bw4v6gpqqp21aycmf6d84rzb6j748qkvlgw4"))

(define rust-flume-0.11.1
  (crate-source "flume" "0.11.1"
                "15ch0slxa8sqsi6c73a0ky6vdnh48q8cxjf7rksa3243m394s3ns"))

(define rust-fnv-1.0.7
  (crate-source "fnv" "1.0.7"
                "1hc2mcqha06aibcaza94vbi81j6pr9a1bbxrxjfhc91zin8yr7iz"))

(define rust-foldhash-0.1.5
  (crate-source "foldhash" "0.1.5"
                "1wisr1xlc2bj7hk4rgkcjkz3j2x4dhd1h9lwk7mj8p71qpdgbi6r"))

(define rust-foldhash-0.2.0
  (crate-source "foldhash" "0.2.0"
                "1nvgylb099s11xpfm1kn2wcsql080nqmnhj1l25bp3r2b35j9kkp"))

(define rust-font8x8-0.3.1
  (crate-source "font8x8" "0.3.1"
                "0znh67wfv3pyx12619rm8v59fc3ig2ai6pfgqxl855hsf6w8hm47"))

(define rust-foreign-types-0.3.2
  (crate-source "foreign-types" "0.3.2"
                "1cgk0vyd7r45cj769jym4a6s7vwshvd0z4bqrb92q1fwibmkkwzn"))

(define rust-foreign-types-shared-0.1.1
  (crate-source "foreign-types-shared" "0.1.1"
                "0jxgzd04ra4imjv8jgkmdq59kj8fsz6w4zxsbmlai34h26225c00"))

(define rust-form-urlencoded-1.2.2
  (crate-source "form_urlencoded" "1.2.2"
                "1kqzb2qn608rxl3dws04zahcklpplkd5r1vpabwga5l50d2v4k6b"))

(define rust-fs-extra-1.3.0
  (crate-source "fs_extra" "1.3.0"
                "075i25z70j2mz9r7i9p9r521y8xdj81q7skslyb7zhqnnw33fw22"))

(define rust-funty-2.0.0
  (crate-source "funty" "2.0.0"
                "177w048bm0046qlzvp33ag3ghqkqw4ncpzcm5lq36gxf2lla7mg6"))

(define rust-futures-0.3.32
  (crate-source "futures" "0.3.32"
                "0b9q86r5ar18v5xjiyqn7sb8sa32xv98qqnfz779gl7ns7lpw54b"))

(define rust-futures-channel-0.3.32
  (crate-source "futures-channel" "0.3.32"
                "07fcyzrmbmh7fh4ainilf1s7gnwvnk07phdq77jkb9fpa2ffifq7"))

(define rust-futures-core-0.3.32
  (crate-source "futures-core" "0.3.32"
                "07bbvwjbm5g2i330nyr1kcvjapkmdqzl4r6mqv75ivvjaa0m0d3y"))

(define rust-futures-executor-0.3.32
  (crate-source "futures-executor" "0.3.32"
                "17aplz3ns74qn7a04qg7qlgsdx5iwwwkd4jvdfra6hl3h4w9rwms"))

(define rust-futures-intrusive-0.5.0
  (crate-source "futures-intrusive" "0.5.0"
                "0vwm08d1pli6bdaj0i7xhk3476qlx4pll6i0w03gzdnh7lh0r4qx"))

(define rust-futures-io-0.3.32
  (crate-source "futures-io" "0.3.32"
                "063pf5m6vfmyxj74447x8kx9q8zj6m9daamj4hvf49yrg9fs7jyf"))

(define rust-futures-lite-2.6.1
  (crate-source "futures-lite" "2.6.1"
                "1ba4dg26sc168vf60b1a23dv1d8rcf3v3ykz2psb7q70kxh113pp"))

(define rust-futures-macro-0.3.32
  (crate-source "futures-macro" "0.3.32"
                "0ys4b1lk7s0bsj29pv42bxsaavalch35rprp64s964p40c1bfdg8"))

(define rust-futures-sink-0.3.32
  (crate-source "futures-sink" "0.3.32"
                "14q8ml7hn5a6gyy9ri236j28kh0svqmrk4gcg0wh26rkazhm95y3"))

(define rust-futures-task-0.3.32
  (crate-source "futures-task" "0.3.32"
                "14s3vqf8llz3kjza33vn4ixg6kwxp61xrysn716h0cwwsnri2xq3"))

(define rust-futures-util-0.3.32
  (crate-source "futures-util" "0.3.32"
                "1mn60lw5kh32hz9isinjlpw34zx708fk5q1x0m40n6g6jq9a971q"))

(define rust-gdk-pixbuf-0.22.0
  (crate-source "gdk-pixbuf" "0.22.0"
                "0imnx7m6f3agw91hqv1zpci658wj71by8k1pvfr43q5ydlvj1x15"))

(define rust-gdk-pixbuf-sys-0.22.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "gdk-pixbuf-sys" "0.22.0"
                "1ywipm5pg65rsyfkb62xb2s013n10kpvg4bb9yslhjzwn4vipws8"))

(define rust-gdk4-0.11.2
  (crate-source "gdk4" "0.11.2"
                "0kia5nic35rqx13z0sndmqjrrwz8sa9gnrbwyklcc4l6yjxzshpx"))

(define rust-gdk4-sys-0.11.2
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "gdk4-sys" "0.11.2"
                "0g041nwg1399vl73zcx4c9bll2sr2bvdla4p78n4frsyy724m5wx"))

(define rust-generic-array-0.14.7
  (crate-source "generic-array" "0.14.7"
                "16lyyrzrljfq424c3n8kfwkqihlimmsg5nhshbbp48np3yjrqr45"))

(define rust-getrandom-0.2.17
  (crate-source "getrandom" "0.2.17"
                "1l2ac6jfj9xhpjjgmcx6s1x89bbnw9x6j9258yy6xjkzpq0bqapz"))

(define rust-getrandom-0.3.4
  (crate-source "getrandom" "0.3.4"
                "1zbpvpicry9lrbjmkd4msgj3ihff1q92i334chk7pzf46xffz7c9"))

(define rust-getrandom-0.4.2
  (crate-source "getrandom" "0.4.2"
                "0mb5833hf9pvn9dhvxjgfg5dx0m77g8wavvjdpvpnkp9fil1xr8d"))

(define rust-gif-0.14.2
  (crate-source "gif" "0.14.2"
                "0n81js7vlb9bwrjb765sicza3k0vrihjddrgm2mvpbfr272gr37f"))

(define rust-gio-0.22.6
  (crate-source "gio" "0.22.6"
                "1rm478hn5yqmm6j56ailcawbzmlrsz7qxfpq3nkw0p53lg5qp173"))

(define rust-gio-sys-0.22.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "gio-sys" "0.22.0"
                "1qc797pz587qbs38mhnq02qywss5yjldnrprz540821cfyi9nwk4"))

(define rust-glib-0.22.8
  (crate-source "glib" "0.22.8"
                "0041i04ba9r8sicbvpff7gdg8wr8x2s54khfjqdzr08qplagbg6x"))

(define rust-glib-macros-0.22.6
  (crate-source "glib-macros" "0.22.6"
                "06bgdnz54l50vxkcp8iraab1v1x3v7l5g5s2k0l19iq7jx4j6vah"))

(define rust-glib-sys-0.22.6
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "glib-sys" "0.22.6"
                "0iclvgbp4il2wilg1my23i2g3kdrw7lbvdsrhfic4nzd6k1blzsz"))

(define rust-glob-0.3.3
  (crate-source "glob" "0.3.3"
                "106jpd3syfzjfj2k70mwm0v436qbx96wig98m4q8x071yrq35hhc"))

(define rust-globset-0.4.18
  (crate-source "globset" "0.4.18"
                "1qsp3wg0mgxzmshcgymdlpivqlc1bihm6133pl6dx2x4af8w3psj"))

(define rust-gobject-sys-0.22.6
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "gobject-sys" "0.22.6"
                "0b57dwgs2yp56892kp990bxxhmvsr69c2n8k8v7pjyl8kf2n3a12"))

(define rust-graphene-rs-0.22.0
  (crate-source "graphene-rs" "0.22.0"
                "1wbiilhc6s2d8i9j55848aimffm90vlxyslbh14rz1ln3y4bglf7"))

(define rust-graphene-sys-0.22.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "graphene-sys" "0.22.0"
                "177p8fcn0157i81gz68iylrcl8rw9fkkiw53awzgvdyn7wphczsi"))

(define rust-gsk4-0.11.1
  (crate-source "gsk4" "0.11.1"
                "0qnbrndajrkz6842c7zv7svxrq95kyxl1769bz7cm2njrggi5jak"))

(define rust-gsk4-sys-0.11.1
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "gsk4-sys" "0.11.1"
                "12pv31xvbkvbprd2f8gmidf3dyyc2pgfx58c9zz6z2wxgay4pmfp"))

(define rust-gtk4-0.11.4
  (crate-source "gtk4" "0.11.4"
                "1nbn1dvivwws2x7aw14f1gmpigj6z91ls65qnl3lpxl4ci3a184q"))

(define rust-gtk4-macros-0.11.0
  (crate-source "gtk4-macros" "0.11.0"
                "11sah2f0518gsqcvs8hn0ckc6bjq86k6wqmv5q9gzzb2p91b509m"))

(define rust-gtk4-sys-0.11.3
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "gtk4-sys" "0.11.3"
                "06sfmv726jvzcq3n0x2hwhcic58abzj6aki7c5alah16brlqxfi0"))

(define rust-h2-0.4.14
  (crate-source "h2" "0.4.14"
                "0cw7jk7kn2vn6f8w8ssh6gis1mljnfjxd606gvi4sjpyjayfy7qp"))

(define rust-half-2.7.1
  (crate-source "half" "2.7.1"
                "0jyq42xfa6sghc397mx84av7fayd4xfxr4jahsqv90lmjr5xi8kf"))

(define rust-hashbrown-0.15.5
  (crate-source "hashbrown" "0.15.5"
                "189qaczmjxnikm9db748xyhiw04kpmhm9xj9k9hg0sgx7pjwyacj"))

(define rust-hashbrown-0.16.1
  (crate-source "hashbrown" "0.16.1"
                "004i3njw38ji3bzdp9z178ba9x3k0c1pgy8x69pj7yfppv4iq7c4"))

(define rust-hashbrown-0.17.1
  (crate-source "hashbrown" "0.17.1"
                "0jmqz7i4yl6cm7rbn0i2ffkfrmwi6xkmzkaldr2v8bcsx2v0jngd"))

(define rust-hashlink-0.10.0
  (crate-source "hashlink" "0.10.0"
                "1h8lzvnl9qxi3zyagivzz2p1hp6shgddfmccyf6jv7s1cdicz0kk"))

(define rust-heck-0.5.0
  (crate-source "heck" "0.5.0"
                "1sjmpsdl8czyh9ywl3qcsfsq9a307dg4ni2vnlwgnzzqhc4y0113"))

(define rust-hermit-abi-0.5.2
  (crate-source "hermit-abi" "0.5.2"
                "1744vaqkczpwncfy960j2hxrbjl1q01csm84jpd9dajbdr2yy3zw"))

(define rust-hex-0.4.3
  (crate-source "hex" "0.4.3"
                "0w1a4davm1lgzpamwnba907aysmlrnygbqmfis2mqjx5m552a93z"))

(define rust-hkdf-0.12.4
  (crate-source "hkdf" "0.12.4"
                "1xxxzcarz151p1b858yn5skmhyrvn8fs4ivx5km3i1kjmnr8wpvv"))

(define rust-hkdf-0.13.0
  (crate-source "hkdf" "0.13.0"
                "061halz93gjbshffck2xzrrz9rmkch95rvwn5ipqd2y6433jdaja"))

(define rust-hmac-0.12.1
  (crate-source "hmac" "0.12.1"
                "0pmbr069sfg76z7wsssfk5ddcqd9ncp79fyz6zcm6yn115yc6jbc"))

(define rust-hmac-0.13.0
  (crate-source "hmac" "0.13.0"
                "0gw6avmix6ah63lf70dapxhml4dlcakl9f2lnm6b0hdf6abvq0v3"))

(define rust-home-0.5.12
  (crate-source "home" "0.5.12"
                "13bjyzgx6q9srnfvl43dvmhn93qc8mh5w7cylk2g13sj3i3pyqnc"))

(define rust-hostname-0.4.2
  (crate-source "hostname" "0.4.2"
                "1g8cfg0a1v8y5a0zkncbns8hh24amjgskl39cc583wxfawsslyk1"))

(define rust-html-escape-0.2.15
  (crate-source "html-escape" "0.2.15"
                "1i8k6hkpvrz2d0px2rcgc7d2qyc22l760wr1lfxrf4dlnjan0df9"))

(define rust-http-1.4.2
  (crate-source "http" "1.4.2"
                "09b4p8fiivkg7wm0b59fyrn1jkm7px298ci7zb9igz6n647gaw39"))

(define rust-http-body-1.0.1
  (crate-source "http-body" "1.0.1"
                "111ir5k2b9ihz5nr9cz7cwm7fnydca7dx4hc7vr16scfzghxrzhy"))

(define rust-http-body-util-0.1.3
  (crate-source "http-body-util" "0.1.3"
                "0jm6jv4gxsnlsi1kzdyffjrj8cfr3zninnxpw73mvkxy4qzdj8dh"))

(define rust-httparse-1.10.1
  (crate-source "httparse" "1.10.1"
                "11ycd554bw2dkgw0q61xsa7a4jn1wb1xbfacmf3dbwsikvkkvgvd"))

(define rust-httpdate-1.0.3
  (crate-source "httpdate" "1.0.3"
                "1aa9rd2sac0zhjqh24c9xvir96g188zldkx0hr6dnnlx5904cfyz"))

(define rust-hybrid-array-0.4.12
  (crate-source "hybrid-array" "0.4.12"
                "1njpm3mmsb6lgr9nn97ld5aavwjzrvijjb4nav0anhnimf1aamci"))

(define rust-hyper-1.10.1
  (crate-source "hyper" "1.10.1"
                "1624nwrh1ci34psqcl3q8q266kha8kd6fmqjj14qck49l59iqa2m"))

(define rust-hyper-rustls-0.27.9
  (crate-source "hyper-rustls" "0.27.9"
                "03vfnsm873wsp1dk0q85nxvk7w6syp8c2m5bcdjcyfgg4786ijik"))

(define rust-hyper-tls-0.6.0
  (crate-source "hyper-tls" "0.6.0"
                "1q36x2yps6hhvxq5r7mc8ph9zz6xlb573gx0x3yskb0fi736y83h"))

(define rust-hyper-util-0.1.20
  (crate-source "hyper-util" "0.1.20"
                "186zdc58hmm663csmjvrzgkr6jdh93sfmi3q2pxi57gcaqjpqm4n"))

(define rust-iana-time-zone-0.1.65
  (crate-source "iana-time-zone" "0.1.65"
                "0w64khw5p8s4nzwcf36bwnsmqzf61vpwk9ca1920x82bk6nwj6z3"))

(define rust-iana-time-zone-haiku-0.1.2
  (crate-source "iana-time-zone-haiku" "0.1.2"
                "17r6jmj31chn7xs9698r122mapq85mfnv98bb4pg6spm0si2f67k"))

(define rust-icu-collections-2.2.0
  (crate-source "icu_collections" "2.2.0"
                "070r7xd0pynm0hnc1v2jzlbxka6wf50f81wybf9xg0y82v6x3119"))

(define rust-icu-locale-core-2.2.0
  (crate-source "icu_locale_core" "2.2.0"
                "0a9cmin5w1x3bg941dlmgszn33qgq428k7qiqn5did72ndi9n8cj"))

(define rust-icu-normalizer-2.2.0
  (crate-source "icu_normalizer" "2.2.0"
                "1d7krxr0xpc4x9635k1100a24nh0nrc59n65j6yk6gbfkplmwvn5"))

(define rust-icu-normalizer-data-2.2.0
  (crate-source "icu_normalizer_data" "2.2.0"
                "0f5d5d5fhhr9937m2z6z38fzh6agf14z24kwlr6lyczafypf0fys"))

(define rust-icu-properties-2.2.0
  (crate-source "icu_properties" "2.2.0"
                "1pkh3s837808cbwxvfagwc28cvwrz2d9h5rl02jwrhm51ryvdqxy"))

(define rust-icu-properties-data-2.2.0
  (crate-source "icu_properties_data" "2.2.0"
                "052awny0qwkbcbpd5jg2cd7vl5ry26pq4hz1nfsgf10c3qhbnawf"))

(define rust-icu-provider-2.2.0
  (crate-source "icu_provider" "2.2.0"
                "08dl8pxbwr8zsz4c5vphqb7xw0hykkznwi4rw7bk6pwb3krlr70k"))

(define rust-icy-sixel-0.5.0
  (crate-source "icy_sixel" "0.5.0"
                "1m8mfbwfb3r4vm2gpcfzibx3ccpgq28pc3mrc5vi20dzhs88nlc5"))

(define rust-id-arena-2.3.0
  (crate-source "id-arena" "2.3.0"
                "0m6rs0jcaj4mg33gkv98d71w3hridghp5c4yr928hplpkgbnfc1x"))

(define rust-ident-case-1.0.1
  (crate-source "ident_case" "1.0.1"
                "0fac21q6pwns8gh1hz3nbq15j8fi441ncl6w4vlnd1cmc55kiq5r"))

(define rust-idna-1.1.0
  (crate-source "idna" "1.1.0"
                "1pp4n7hppm480zcx411dsv9wfibai00wbpgnjj4qj0xa7kr7a21v"))

(define rust-idna-adapter-1.2.2
  (crate-source "idna_adapter" "1.2.2"
                "0557p76l8hj35r9zn1yv7c6x1c0qbrsffmg80n0yy8361ly3fs6b"))

(define rust-if-addrs-0.14.0
  (crate-source "if-addrs" "0.14.0"
                "142y49lwnzpaifp8na65w00s1r40aplarkzcqlfh4rpf4c2cqfdz"))

(define rust-ignore-0.4.26
  (crate-source "ignore" "0.4.26"
                "0zg65dcwq8qnni4jg3iqj8vpnln6pivj8nr6a18g1cqxs0fnc5dr"))

(define rust-image-0.25.10
  (crate-source "image" "0.25.10"
                "0131b9fsd5grxf3lchfs2ci0rg8ga2mh1ygai7k2zh1k8cwq1aw5"))

(define rust-image-webp-0.2.4
  (crate-source "image-webp" "0.2.4"
                "1hz814csyi9283vinzlkix6qpnd6hs3fkw7xl6z2zgm4w7rrypjj"))

(define rust-imgref-1.12.2
  (crate-source "imgref" "1.12.2"
                "1msc8g8x8a9dy3l85ila4sijvnhr1rxrxsbjhqk1bawkm64lc6c9"))

(define rust-indexmap-2.14.0
  (crate-source "indexmap" "2.14.0"
                "1na9z6f0d5pkjr1lgsni470v98gv2r7c41j8w48skr089x2yjrnl"))

(define rust-indoc-2.0.7
  (crate-source "indoc" "2.0.7"
                "01np60qdq6lvgh8ww2caajn9j4dibx9n58rvzf7cya1jz69mrkvr"))

(define rust-inout-0.2.2
  (crate-source "inout" "0.2.2"
                "1iq39s01d3y56j2r6hf75yqhpa7s2ifwr316yzyi0879a9jcwl22"))

(define rust-instability-0.3.12
  (crate-source "instability" "0.3.12"
                "0wc98mr44w5k1y6pib2x0kydmhbff8gkfgiw36ls684ry47ddcjy"))

(define rust-interpolate-name-0.2.4
  (crate-source "interpolate_name" "0.2.4"
                "0q7s5mrfkx4p56dl8q9zq71y1ysdj4shh6f28qf9gly35l21jj63"))

(define rust-ipnet-2.12.0
  (crate-source "ipnet" "2.12.0"
                "1qpq2y0asyv0jppw7zww9y96fpnpinwap8a0phhqqgyy3znnz3yr"))

(define rust-is-docker-0.2.0
  (crate-source "is-docker" "0.2.0"
                "1cyibrv6817cqcpf391m327ss40xlbik8wxcv5h9pj9byhksx2wj"))

(define rust-is-terminal-polyfill-1.70.2
  (crate-source "is_terminal_polyfill" "1.70.2"
                "15anlc47sbz0jfs9q8fhwf0h3vs2w4imc030shdnq54sny5i7jx6"))

(define rust-is-wsl-0.4.0
  (crate-source "is-wsl" "0.4.0"
                "19bs5pq221d4bknnwiqqkqrnsx2in0fsk8fylxm1747iim4hjdhp"))

(define rust-itertools-0.14.0
  (crate-source "itertools" "0.14.0"
                "118j6l1vs2mx65dqhwyssbrxpawa90886m3mzafdvyip41w2q69b"))

(define rust-itertools-0.15.0
  (crate-source "itertools" "0.15.0"
                "1p412hriqm4kxn7x1539vz2p5c5s1v2m36m4kis2ai4dyn9syjwb"))

(define rust-itoa-1.0.18
  (crate-source "itoa" "1.0.18"
                "10jnd1vpfkb8kj38rlkn2a6k02afvj3qmw054dfpzagrpl6achlg"))

(define rust-javascriptcore6-0.6.0
  (crate-source "javascriptcore6" "0.6.0"
                "1nrd6rrygxr6r1vg6xdnar6rbkwahgvnwfvjd1hdriknv5j4z3cd"))

(define rust-javascriptcore6-sys-0.6.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "javascriptcore6-sys" "0.6.0"
                "1xlwwgdj1pwkfxn3qr75wl7lpbqz9ly5kf69c5q9m568h5spifgj"))

(define rust-jni-0.21.1
  (crate-source "jni" "0.21.1"
                "15wczfkr2r45slsljby12ymf2hij8wi5b104ghck9byjnwmsm1qs"))

(define rust-jni-0.22.4
  (crate-source "jni" "0.22.4"
                "161lza8gz071h22pgyqyx4n91ixd691z2dbb1pq2g97k5i49mzay"))

(define rust-jni-macros-0.22.4
  (crate-source "jni-macros" "0.22.4"
                "18v02mcn5c7mb2yw6r930xg6ynsn7hwkxv8z2kdhn3qprjn0j0d0"))

(define rust-jni-sys-0.3.1
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "jni-sys" "0.3.1"
                "0n1j8fbz081w1igfrpc79n6vgm7h3ik34nziy5fjgq5nz7hm59j1"))

(define rust-jni-sys-0.4.1
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "jni-sys" "0.4.1"
                "1wlahx6f2zhczdjqyn8mk7kshb8x5vsd927sn3lvw41rrf47ldy6"))

(define rust-jni-sys-macros-0.4.1
  (crate-source "jni-sys-macros" "0.4.1"
                "0r32gbabrak15a7p487765b5wc0jcna2yv88mk6m1zjqyi1bkh1q"))

(define rust-jobserver-0.1.34
  (crate-source "jobserver" "0.1.34"
                "0cwx0fllqzdycqn4d6nb277qx5qwnmjdxdl0lxkkwssx77j3vyws"))

(define rust-js-sys-0.3.102
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "js-sys" "0.3.102"
                "0cgxklnyrfpzvf32cvdl3x5d070kfsv7ykdxfl3yizwdjqq4rl03"))

(define rust-kasuari-0.4.12
  (crate-source "kasuari" "0.4.12"
                "1688q59qh1mxa28k00lnddn73mh3jcdmj3yrc7l99k23c5yhbrdx"))

(define rust-keepawake-0.6.0
  (crate-source "keepawake" "0.6.0"
                "1dr6ab4k7jnk991md17mvzrkmnnmmg1sggawbmcn54qpxi8b88am"))

(define rust-lab-0.11.0
  (crate-source "lab" "0.11.0"
                "13ymsn5cwl5i9pmp5mfmbap7q688dcp9a17q82crkvb784yifdmz"))

(define rust-lazy-static-1.5.0
  (crate-source "lazy_static" "1.5.0"
                "1zk6dqqni0193xg6iijh7i3i44sryglwgvx20spdvwk3r6sbrlmv"))

(define rust-leb128fmt-0.1.0
  (crate-source "leb128fmt" "0.1.0"
                "1chxm1484a0bly6anh6bd7a99sn355ymlagnwj3yajafnpldkv89"))

(define rust-lebe-0.5.3
  (crate-source "lebe" "0.5.3"
                "1f459clndzzm35nyd15vj5dlasyagfasp7hcgl6lh2b658rs6ybs"))

(define rust-libadwaita-0.9.2
  (crate-source "libadwaita" "0.9.2"
                "1yivylbik000y0ff5k3hjy5mqwghjj6l8yqm3xdlnahqcw791fc5"))

(define rust-libadwaita-sys-0.9.2
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "libadwaita-sys" "0.9.2"
                "1kcw0yc235d1bdzxvsv35f56zv0r9i5bshckm4m8b2dk89vc5lr8"))

(define rust-libc-0.2.189
  (crate-source "libc" "0.2.189"
                "1whjfs375vlng2q6yrbzs73cvp5lm3w1n2gfqajb2vgf7zg3xbry"))

(define rust-libfuzzer-sys-0.4.13
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "libfuzzer-sys" "0.4.13"
                "1li9z5q55wi81zzyifm7a4rw1xvcclsnqsqbkbvrk86bl50jzzd9"))

(define rust-libm-0.2.16
  (crate-source "libm" "0.2.16"
                "10brh0a3qjmbzkr5mf5xqi887nhs5y9layvnki89ykz9xb1wxlmn"))

(define rust-libredox-0.1.17
  (crate-source "libredox" "0.1.17"
                "1ly9hnhiy0f6ccnlg3h8lca9smvv268gj5iwia4gnm10rsxbcaph"))

(define rust-libsqlite3-sys-0.30.1
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "libsqlite3-sys" "0.30.1"
                "0jcikvgbj84xc7ikdmpc8m4y5lyqgrb9aqblphwk67kv95xgp69f"))

(define rust-line-clipping-0.3.7
  (crate-source "line-clipping" "0.3.7"
                "1y19rla4ivdwagf0y4yahvb8jzsddj3jcb8r0xa8n9i3fvsfhl1z"))

(define rust-linux-raw-sys-0.12.1
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "linux-raw-sys" "0.12.1"
                "0lwasljrqxjjfk9l2j8lyib1babh2qjlnhylqzl01nihw14nk9ij"))

(define rust-linux-raw-sys-0.4.15
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "linux-raw-sys" "0.4.15"
                "1aq7r2g7786hyxhv40spzf2nhag5xbw2axxc1k8z5k1dsgdm4v6j"))

(define rust-litemap-0.8.2
  (crate-source "litemap" "0.8.2"
                "1w7628bc7wwcxc4n4s5kw0610xk06710nh2hn5kwwk2wa91z9nlj"))

(define rust-litrs-1.0.0
  (crate-source "litrs" "1.0.0"
                "14p0kzzkavnngvybl88nvfwv031cc2qx4vaxpfwsiifm8grdglqi"))

(define rust-lock-api-0.4.14
  (crate-source "lock_api" "0.4.14"
                "0rg9mhx7vdpajfxvdjmgmlyrn20ligzqvn8ifmaz7dc79gkrjhr2"))

(define rust-log-0.4.32
  (crate-source "log" "0.4.32"
                "0fmdg0cxig7i4fwf1sw7fmg4d1gdbfzniawcfpwydy1q7320fgwm"))

(define rust-loop9-0.1.5
  (crate-source "loop9" "0.1.5"
                "0qphc1c0cbbx43pwm6isnwzwbg6nsxjh7jah04n1sg5h4p0qgbhg"))

(define rust-lru-0.18.0
  (crate-source "lru" "0.18.0"
                "1fagimn8n3ivc3diad3jf323lbx86x1cyffjky31dklgjq2hd1la"))

(define rust-lru-slab-0.1.2
  (crate-source "lru-slab" "0.1.2"
                "0m2139k466qj3bnpk66bwivgcx3z88qkxvlzk70vd65jq373jaqi"))

(define rust-mac-address-1.1.8
  (crate-source "mac_address" "1.1.8"
                "00r3n18mxglq1dzshnm0vxk1fgsp3c2hd08w6hfcqdp8ymmv5bn0"))

(define rust-mach2-0.5.0
  (crate-source "mach2" "0.5.0"
                "1siskhk6qhhzw40k1gc23zg6irx0bqpi1bmm8ns5bv11ak6ra6va"))

(define rust-matchers-0.2.0
  (crate-source "matchers" "0.2.0"
                "1sasssspdj2vwcwmbq3ra18d3qniapkimfcbr47zmx6750m5llni"))

(define rust-matchit-0.8.4
  (crate-source "matchit" "0.8.4"
                "1hzl48fwq1cn5dvshfly6vzkzqhfihya65zpj7nz7lfx82mgzqa7"))

(define rust-maybe-rayon-0.1.1
  (crate-source "maybe-rayon" "0.1.1"
                "06cmvhj4n36459g327ng5dnj8d58qs472pv5ahlhm7ynxl6g78cf"))

(define rust-md-5-0.10.6
  (crate-source "md-5" "0.10.6"
                "1kvq5rnpm4fzwmyv5nmnxygdhhb2369888a06gdc9pxyrzh7x7nq"))

(define rust-md5-0.8.1
  (crate-source "md5" "0.8.1"
                "032pi1dmpk8aimpc8p5rxw07wx7w3j8q4ah3iwyxz9n66a3qvfvy"))

(define rust-mdns-sd-0.17.2
  (crate-source "mdns-sd" "0.17.2"
                "13bvaafh7bp40kayc4yc65bk27azv4g9s0yd6lb5r0g3kyypwg8q"))

(define rust-mediaplayer-0.4.3
  (crate-source "mediaplayer" "0.4.3"
                "1yv76irqrqsq5l5habkrd9kj7zscqyra09d5yr37dpxxag81lzvh"))

(define rust-mediatype-0.23.0
  (crate-source "mediatype" "0.23.0"
                "0zxmp0nb3kw924kwfmfggj1zd58kj4csphsbsf6q6dcdwf9sd586"))

(define rust-memchr-2.8.2
  (crate-source "memchr" "2.8.2"
                "1i33wr49pcz2sbd12nds3n9fszay8kq5bk78gwciz462mcs49448"))

(define rust-memmem-0.1.1
  (crate-source "memmem" "0.1.1"
                "05ccifqgxdfxk6yls41ljabcccsz3jz6549l1h3cwi17kr494jm6"))

(define rust-memoffset-0.9.1
  (crate-source "memoffset" "0.9.1"
                "12i17wh9a9plx869g7j4whf62xw68k5zd4k0k5nh6ys5mszid028"))

(define rust-mime-0.3.17
  (crate-source "mime" "0.3.17"
                "16hkibgvb9klh0w0jk5crr5xv90l3wlf77ggymzjmvl1818vnxv8"))

(define rust-mime-guess-2.0.5
  (crate-source "mime_guess" "2.0.5"
                "03jmg3yx6j39mg0kayf7w4a886dl3j15y8zs119zw01ccy74zi7p"))

(define rust-minimal-lexical-0.2.1
  (crate-source "minimal-lexical" "0.2.1"
                "16ppc5g84aijpri4jzv14rvcnslvlpphbszc7zzp6vfkddf4qdb8"))

(define rust-miniz-oxide-0.8.9
  (crate-source "miniz_oxide" "0.8.9"
                "05k3pdg8bjjzayq3rf0qhpirq9k37pxnasfn4arbs17phqn6m9qz"))

(define rust-mio-1.2.1
  (crate-source "mio" "1.2.1"
                "1nkggmrlnjs93w8rja4lvjj4aml1xqahgimv1h0p7d373kvhmg82"))

(define rust-moka-0.12.15
  (crate-source "moka" "0.12.15"
                "0ijhgjfprcjkvrhgmm71m9gaph5lc9xjb3rwz4wyhbh42anjhwlm"))

(define rust-moxcms-0.8.1
  (crate-source "moxcms" "0.8.1"
                "0jz4fd5f7pdn1rngqc96lxriqjkym1lswdhdbjr037s8p9ac31dv"))

(define rust-mpris-server-0.10.0
  (crate-source "mpris-server" "0.10.0"
                "0aqkg6w8d31m5l6cvcx2ly8523z8rdbbvvj0xlswq5lmka73bkvh"))

(define rust-native-tls-0.2.18
  (crate-source "native-tls" "0.2.18"
                "1wmv0g5p6jwyyslyw88w5fv9kc9qvjd1hi2d4sfl4qm19vhh0ma6"))

(define rust-ndk-0.9.0
  (crate-source "ndk" "0.9.0"
                "1m32zpmi5w1pf3j47k6k5fw395dc7aj8d0mdpsv53lqkprxjxx63"))

(define rust-ndk-context-0.1.1
  (crate-source "ndk-context" "0.1.1"
                "12sai3dqsblsvfd1l1zab0z6xsnlha3xsfl7kagdnmj3an3jvc17"))

(define rust-ndk-sys-0.6.0+11769913
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "ndk-sys" "0.6.0+11769913"
                "0wx8r6pji20if4xs04g73gxl98nmjrfc73z0v6w1ypv6a4qdlv7f"))

(define rust-new-debug-unreachable-1.0.6
  (crate-source "new_debug_unreachable" "1.0.6"
                "11phpf1mjxq6khk91yzcbd3ympm78m3ivl7xg6lg2c0lf66fy3k5"))

(define rust-nix-0.29.0
  (crate-source "nix" "0.29.0"
                "0ikvn7s9r2lrfdm3mx1h7nbfjvcc6s9vxdzw7j5xfkd2qdnp9qki"))

(define rust-no-std-io2-0.9.4
  (crate-source "no_std_io2" "0.9.4"
                "00w0ggkaaacbwiv4qw188ih5llmhf53qgp20wk5gdyrldldvv2j1"))

(define rust-nom-7.1.3
  (crate-source "nom" "7.1.3"
                "0jha9901wxam390jcf5pfa0qqfrgh8li787jx2ip0yk5b8y9hwyj"))

(define rust-nom-8.0.0
  (crate-source "nom" "8.0.0"
                "01cl5xng9d0gxf26h39m0l8lprgpa00fcc75ps1yzgbib1vn35yz"))

(define rust-noop-proc-macro-0.3.0
  (crate-source "noop_proc_macro" "0.3.0"
                "1j2v1c6ric4w9v12h34jghzmngcwmn0hll1ywly4h6lcm4rbnxh6"))

(define rust-nu-ansi-term-0.50.3
  (crate-source "nu-ansi-term" "0.50.3"
                "1ra088d885lbd21q1bxgpqdlk1zlndblmarn948jz2a40xsbjmvr"))

(define rust-num-bigint-0.4.6
  (crate-source "num-bigint" "0.4.6"
                "1f903zd33i6hkjpsgwhqwi2wffnvkxbn6rv4mkgcjcqi7xr4zr55"))

(define rust-num-bigint-dig-0.8.6
  (crate-source "num-bigint-dig" "0.8.6"
                "1dxh3d8pzjc5k0kpy8gy2qhhhqs7zw8a7m564zl3ib8gcjkdsqg6"))

(define rust-num-conv-0.2.2
  (crate-source "num-conv" "0.2.2"
                "0hg4f9bwmy7cwpxdkm165dmkfc8jhkkayci234jsmi5ssb33j5sj"))

(define rust-num-derive-0.4.2
  (crate-source "num-derive" "0.4.2"
                "00p2am9ma8jgd2v6xpsz621wc7wbn1yqi71g15gc3h67m7qmafgd"))

(define rust-num-enum-0.7.6
  (crate-source "num_enum" "0.7.6"
                "09kg0c2y08npdv0c9dbm4m9a9wz8w2qaiqqxl4gj3v22hj1wl2sx"))

(define rust-num-enum-derive-0.7.6
  (crate-source "num_enum_derive" "0.7.6"
                "1y0x9z49s27vdas6mglqbv02sgkdmbr8ns2kwspzrp2ra81rh2b8"))

(define rust-num-integer-0.1.46
  (crate-source "num-integer" "0.1.46"
                "13w5g54a9184cqlbsq80rnxw4jj4s0d8wv75jsq5r2lms8gncsbr"))

(define rust-num-iter-0.1.45
  (crate-source "num-iter" "0.1.45"
                "1gzm7vc5g9qsjjl3bqk9rz1h6raxhygbrcpbfl04swlh0i506a8l"))

(define rust-num-rational-0.4.2
  (crate-source "num-rational" "0.4.2"
                "093qndy02817vpgcqjnj139im3jl7vkq4h68kykdqqh577d18ggq"))

(define rust-num-threads-0.1.7
  (crate-source "num_threads" "0.1.7"
                "1ngajbmhrgyhzrlc4d5ga9ych1vrfcvfsiqz6zv0h2dpr2wrhwsw"))

(define rust-num-traits-0.2.19
  (crate-source "num-traits" "0.2.19"
                "0h984rhdkkqd4ny9cif7y2azl3xdfb7768hb9irhpsch4q3gq787"))

(define rust-objc2-0.6.4
  (crate-source "objc2" "0.6.4"
                "17x8qpl512frscfqbmgjr20kg3y4r0xdqxphja17dz5f0znsh4is"))

(define rust-objc2-audio-toolbox-0.3.2
  (crate-source "objc2-audio-toolbox" "0.3.2"
                "024vny0nxb93ihdk97q1zrbpism4i8xa7flsnycn678jj4d50j39"))

(define rust-objc2-avf-audio-0.3.2
  (crate-source "objc2-avf-audio" "0.3.2"
                "1glh82g1yi74hwxy2d60hyllqhys6xcw8r80n2fykn7f3l1q18qk"))

(define rust-objc2-core-audio-0.3.2
  (crate-source "objc2-core-audio" "0.3.2"
                "1cn3d7cni2ngr18j14s4xfin3h4gqq3k2kshr3vzbgqdigmbrvp1"))

(define rust-objc2-core-audio-types-0.3.2
  (crate-source "objc2-core-audio-types" "0.3.2"
                "075xj0j67n59m6v7pa0d556l06imicg9kcj24siz832a4zng52as"))

(define rust-objc2-core-foundation-0.3.2
  (crate-source "objc2-core-foundation" "0.3.2"
                "0dnmg7606n4zifyjw4ff554xvjmi256cs8fpgpdmr91gckc0s61a"))

(define rust-objc2-encode-4.1.0
  (crate-source "objc2-encode" "4.1.0"
                "0cqckp4cpf68mxyc2zgnazj8klv0z395nsgbafa61cjgsyyan9gg"))

(define rust-objc2-foundation-0.3.2
  (crate-source "objc2-foundation" "0.3.2"
                "0wijkxzzvw2xkzssds3fj8279cbykz2rz9agxf6qh7y2agpsvq73"))

(define rust-objc2-io-kit-0.3.2
  (crate-source "objc2-io-kit" "0.3.2"
                "05dvfcf97w39daaj5qsbfc399lw9hbx3s4h9nwgxrmlpjnizpyik"))

(define rust-once-cell-1.21.4
  (crate-source "once_cell" "1.21.4"
                "0l1v676wf71kjg2khch4dphwh1jp3291ffiymr2mvy1kxd5kwz4z"))

(define rust-once-cell-polyfill-1.70.2
  (crate-source "once_cell_polyfill" "1.70.2"
                "1zmla628f0sk3fhjdjqzgxhalr2xrfna958s632z65bjsfv8ljrq"))

(define rust-open-5.4.0
  (crate-source "open" "5.4.0"
                "1m8ya7x1yf8lm9j8acwv6nf4vp8fc9c5dx7yfa52pmcmwxcx1cx0"))

(define rust-openssl-0.10.81
  (crate-source "openssl" "0.10.81"
                "0ibsv2ppsjrp62jqyzprhay9vczk1bw9xvdr3h4h7fxsy0kkm0kp"))

(define rust-openssl-macros-0.1.1
  (crate-source "openssl-macros" "0.1.1"
                "173xxvfc63rr5ybwqwylsir0vq6xsj4kxiv4hmg4c3vscdmncj59"))

(define rust-openssl-probe-0.2.1
  (crate-source "openssl-probe" "0.2.1"
                "1gpwpb7smfhkscwvbri8xzbab39wcnby1jgz1s49vf1aqgsdx1vw"))

(define rust-openssl-sys-0.9.117
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "openssl-sys" "0.9.117"
                "159nf6jsqnmsynkh6gjzx088q1ifll7v88sss8qdk363n9mpwzml"))

(define rust-option-ext-0.2.0
  (crate-source "option-ext" "0.2.0"
                "0zbf7cx8ib99frnlanpyikm1bx8qn8x602sw1n7bg6p9x94lyx04"))

(define rust-ordered-float-4.6.0
  (crate-source "ordered-float" "4.6.0"
                "0ldrcgilsiijd141vw51fbkziqmh5fpllil3ydhirjm67wdixdvv"))

(define rust-ordered-float-5.3.0
  (crate-source "ordered-float" "5.3.0"
                "03mx5yg3ncp0g524y7zbyvhwcxpd8l9v30lgybm5bhqx2v551ndp"))

(define rust-ordered-stream-0.2.0
  (crate-source "ordered-stream" "0.2.0"
                "0l0xxp697q7wiix1gnfn66xsss7fdhfivl2k7bvpjs4i3lgb18ls"))

(define rust-outref-0.5.2
  (crate-source "outref" "0.5.2"
                "03pzw9aj4qskqhh0fkagy2mkgfwgj5a1m67ajlba5hw80h68100s"))

(define rust-palette-0.7.6
  (crate-source "palette" "0.7.6"
                "1rmn02mv6cb112504qyg7pyfa83c08hxpk5sw7jc5v659hc73gsc"))

(define rust-palette-derive-0.7.6
  (crate-source "palette_derive" "0.7.6"
                "0c0xhpk1nqyq4jr2m8xnka7w47vqzc7m2vq9ih8wxyjv02phs0zm"))

(define rust-pango-0.22.6
  (crate-source "pango" "0.22.6"
                "0f14fn8jmqf8q009x8wgmb04azp007ij2sj01sz13f47cipdq6r5"))

(define rust-pango-sys-0.22.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "pango-sys" "0.22.0"
                "1mnm14vf7xcrag51qjfqy400kh3rqs1rgi897vqfs3x91ji13ldv"))

(define rust-papaya-0.2.4
  (crate-source "papaya" "0.2.4"
                "1dqrr8bliqk60vzpjrlyrc5qha5dy0a3fr26f2d4c0ccscyf0zlr"))

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

(define rust-pastey-0.1.1
  (crate-source "pastey" "0.1.1"
                "1v389jkifv757903flrrps67dvc6q6giwlyx3xi33hcfjmgjxyrm"))

(define rust-pathdiff-0.2.3
  (crate-source "pathdiff" "0.2.3"
                "1lrqp4ip05df8dzldq6gb2c1sq2gs54gly8lcnv3rhav1qhwx56z"))

(define rust-pem-rfc7468-0.7.0
  (crate-source "pem-rfc7468" "0.7.0"
                "04l4852scl4zdva31c1z6jafbak0ni5pi0j38ml108zwzjdrrcw8"))

(define rust-percent-encoding-2.3.2
  (crate-source "percent-encoding" "2.3.2"
                "083jv1ai930azvawz2khv7w73xh8mnylk7i578cifndjn5y64kwv"))

(define rust-pest-2.8.6
  (crate-source "pest" "2.8.6"
                "0qm6kpqsbn2p6vkd7v4j3g7wsjby2ip6di1h6kx7vlq921h8r170"))

(define rust-pest-derive-2.8.6
  (crate-source "pest_derive" "2.8.6"
                "0xzysvcyfs0pkn2801rg811y83jx2rvpqnjxs47c3ri1xbqqdx0i"))

(define rust-pest-generator-2.8.6
  (crate-source "pest_generator" "2.8.6"
                "0kzrcik2ww0qh84jlv8xqc0zmzgl3xy41vf1cfli1chkgdjc8h40"))

(define rust-pest-meta-2.8.6
  (crate-source "pest_meta" "2.8.6"
                "08126skq2lxysinp6v917niszhnnh6d6a9kg2i0a28b0sdlmr0c9"))

(define rust-phf-0.11.3
  (crate-source "phf" "0.11.3"
                "0y6hxp1d48rx2434wgi5g8j1pr8s5jja29ha2b65435fh057imhz"))

(define rust-phf-codegen-0.11.3
  (crate-source "phf_codegen" "0.11.3"
                "0si1n6zr93kzjs3wah04ikw8z6npsr39jw4dam8yi9czg2609y5f"))

(define rust-phf-generator-0.11.3
  (crate-source "phf_generator" "0.11.3"
                "0gc4np7s91ynrgw73s2i7iakhb4lzdv1gcyx7yhlc0n214a2701w"))

(define rust-phf-macros-0.11.3
  (crate-source "phf_macros" "0.11.3"
                "05kjfbyb439344rhmlzzw0f9bwk9fp95mmw56zs7yfn1552c0jpq"))

(define rust-phf-shared-0.11.3
  (crate-source "phf_shared" "0.11.3"
                "1rallyvh28jqd9i916gk5gk2igdmzlgvv5q0l3xbf3m6y8pbrsk7"))

(define rust-pin-project-lite-0.2.17
  (crate-source "pin-project-lite" "0.2.17"
                "1kfmwvs271si96zay4mm8887v5khw0c27jc9srw1a75ykvgj54x8"))

(define rust-piper-0.2.5
  (crate-source "piper" "0.2.5"
                "1hd3j94mw5dwc457gs9ssb2r5b9iipywndf5srqx7pj38jd4fdf8"))

(define rust-pkcs1-0.7.5
  (crate-source "pkcs1" "0.7.5"
                "0zz4mil3nchnxljdfs2k5ab1cjqn7kq5lqp62n9qfix01zqvkzy8"))

(define rust-pkcs8-0.10.2
  (crate-source "pkcs8" "0.10.2"
                "1dx7w21gvn07azszgqd3ryjhyphsrjrmq5mmz1fbxkj5g0vv4l7r"))

(define rust-pkg-config-0.3.33
  (crate-source "pkg-config" "0.3.33"
                "17jnqmcbxsnwhg9gjf0nh6dj5k0x3hgwi3mb9krjnmfa9v435w8r"))

(define rust-plain-0.2.3
  (crate-source "plain" "0.2.3"
                "19n1xbxb4wa7w891268bzf6cbwq4qvdb86bik1z129qb0xnnnndl"))

(define rust-png-0.18.1
  (crate-source "png" "0.18.1"
                "0qca282xp8a6d7mikxrwji3f52mjn4vnqxz2v9iz5adj665rnxk0"))

(define rust-polling-3.11.0
  (crate-source "polling" "3.11.0"
                "0622qfbxi3gb0ly2c99n3xawp878fkrd1sl83hjdhisx11cly3jx"))

(define rust-portable-atomic-1.13.1
  (crate-source "portable-atomic" "1.13.1"
                "0j8vlar3n5acyigq8q6f4wjx3k3s5yz0rlpqrv76j73gi5qr8fn3"))

(define rust-potential-utf-0.1.5
  (crate-source "potential_utf" "0.1.5"
                "0r0518fr32xbkgzqap509s3r60cr0iancsg9j1jgf37cyz7b20q1"))

(define rust-powerfmt-0.2.0
  (crate-source "powerfmt" "0.2.0"
                "14ckj2xdpkhv3h6l5sdmb9f1d57z8hbfpdldjc2vl5givq2y77j3"))

(define rust-ppv-lite86-0.2.21
  (crate-source "ppv-lite86" "0.2.21"
                "1abxx6qz5qnd43br1dd9b2savpihzjza8gb4fbzdql1gxp2f7sl5"))

(define rust-prettyplease-0.2.37
  (crate-source "prettyplease" "0.2.37"
                "0azn11i1kh0byabhsgab6kqs74zyrg69xkirzgqyhz6xmjnsi727"))

(define rust-proc-macro-crate-3.5.0
  (crate-source "proc-macro-crate" "3.5.0"
                "0kv1g1d1zjwxlgcaba2qlshzyy32j03xic8rskqlcr5mnblsfyz6"))

(define rust-proc-macro2-1.0.106
  (crate-source "proc-macro2" "1.0.106"
                "0d09nczyaj67x4ihqr5p7gxbkz38gxhk4asc0k8q23g9n85hzl4g"))

(define rust-profiling-1.0.18
  (crate-source "profiling" "1.0.18"
                "1xdwlvxlgy99nn1dra7arzinkc8lbqljvcwpq70m7g16lda5wn9x"))

(define rust-profiling-procmacros-1.0.18
  (crate-source "profiling-procmacros" "1.0.18"
                "1jxvqff6j1z7ph3qghw2xhv18z7pf6cs6cja6fwscjwsdfis9224"))

(define rust-prost-0.13.5
  (crate-source "prost" "0.13.5"
                "1r8yi6zxxwv9gq5ia9p55nspgwmchs94sqpp64x33v5k3njgm5i7"))

(define rust-prost-derive-0.13.5
  (crate-source "prost-derive" "0.13.5"
                "0kgc9gbzsa998xixblfi3kfydka64zqf6rmpm53b761cjxbxfmla"))

(define rust-psl-types-2.0.11
  (crate-source "psl-types" "2.0.11"
                "1b3cz1q07iy744a39smykra2j83nv8vmni6la37wnx3ax17jkjrk"))

(define rust-publicsuffix-2.3.0
  (crate-source "publicsuffix" "2.3.0"
                "1pzsm61x49zgdcb14b5fnmjj36k129gc37lpfrgk6q5bdi2flhkg"))

(define rust-pxfm-0.1.29
  (crate-source "pxfm" "0.1.29"
                "0gvfd9r73i2mqf1cdc2y5yf0m0skhc16a5aglxiwsv2c57swrig0"))

(define rust-qoi-0.4.1
  (crate-source "qoi" "0.4.1"
                "00c0wkb112annn2wl72ixyd78mf56p4lxkhlmsggx65l3v3n8vbz"))

(define rust-qonductor-0.1.0-alpha.5
  (crate-source "qonductor" "0.1.0-alpha.5"
                "1y926rhmyrbi23bccga0nb5m2dmh7yvk2iilbdwp6akaq5ljhf3y"))

(define rust-quantette-0.5.1
  (crate-source "quantette" "0.5.1"
                "0x6i4nlirhzmkni0d1mm8a67gl9xa9568rxcmpwnyf8nigdfr3y9"))

(define rust-quick-error-2.0.1
  (crate-source "quick-error" "2.0.1"
                "18z6r2rcjvvf8cn92xjhm2qc3jpd1ljvcbf12zv0k9p565gmb4x9"))

(define rust-quinn-0.11.9
  (crate-source "quinn" "0.11.9"
                "086gzj666dr3slmlynkvxlndy28hahgl361d6bf93hk3i6ahmqmr"))

(define rust-quinn-proto-0.11.14
  (crate-source "quinn-proto" "0.11.14"
                "1660jkxhzi1pnywzs13ifczwrlv6ds9qds111vsnxjciqpz44js3"))

(define rust-quinn-udp-0.5.14
  (crate-source "quinn-udp" "0.5.14"
                "1gacawr17a2zkyri0r3m0lc9spzmxbq1by3ilyb8v2mdvjhcdpmd"))

(define rust-quote-1.0.45
  (crate-source "quote" "1.0.45"
                "095rb5rg7pbnwdp6v8w5jw93wndwyijgci1b5lw8j1h5cscn3wj1"))

(define rust-r-efi-5.3.0
  (crate-source "r-efi" "5.3.0"
                "03sbfm3g7myvzyylff6qaxk4z6fy76yv860yy66jiswc2m6b7kb9"))

(define rust-r-efi-6.0.0
  (crate-source "r-efi" "6.0.0"
                "1gyrl2k5fyzj9k7kchg2n296z5881lg7070msabid09asp3wkp7q"))

(define rust-radium-0.7.0
  (crate-source "radium" "0.7.0"
                "02cxfi3ky3c4yhyqx9axqwhyaca804ws46nn4gc1imbk94nzycyw"))

(define rust-rand-0.10.2
  (crate-source "rand" "0.10.2"
                "105yqkdzqbgggd3r1yjm9jg0zvibfdsmxylvxxkmblwc0lxgmxf7"))

(define rust-rand-0.8.6
  (crate-source "rand" "0.8.6"
                "12kd4rljn86m00rcaz4c1rcya4mb4gk5ig6i8xq00a8wjgxfr82w"))

(define rust-rand-0.9.4
  (crate-source "rand" "0.9.4"
                "1sknbxgs6nfg0nxdd7689lwbyr2i4vaswchrv4b34z8vpc3azia4"))

(define rust-rand-chacha-0.3.1
  (crate-source "rand_chacha" "0.3.1"
                "123x2adin558xbhvqb8w4f6syjsdkmqff8cxwhmjacpsl1ihmhg6"))

(define rust-rand-chacha-0.9.0
  (crate-source "rand_chacha" "0.9.0"
                "1jr5ygix7r60pz0s1cv3ms1f6pd1i9pcdmnxzzhjc3zn3mgjn0nk"))

(define rust-rand-core-0.10.1
  (crate-source "rand_core" "0.10.1"
                "0s9wiacxrr100icl7i41308gcj85nlcclrc5jx1jd6p10dhigf33"))

(define rust-rand-core-0.6.4
  (crate-source "rand_core" "0.6.4"
                "0b4j2v4cb5krak1pv6kakv4sz6xcwbrmy2zckc32hsigbrwy82zc"))

(define rust-rand-core-0.9.5
  (crate-source "rand_core" "0.9.5"
                "0g6qc5r3f0hdmz9b11nripyp9qqrzb0xqk9piip8w8qlvqkcibvn"))

(define rust-rand-distr-0.6.0
  (crate-source "rand_distr" "0.6.0"
                "1n61c943yzpwxkirxmvagnwj5fwyyh1kq9a59pg2kwfc0ckiqhsd"))

(define rust-rand-xoshiro-0.7.0
  (crate-source "rand_xoshiro" "0.7.0"
                "0h9dv9mn703zb2z5dys7vc4rzy3az8xg99fc5m8zbnh0axkg80zp"))

(define rust-rangemap-1.7.1
  (crate-source "rangemap" "1.7.1"
                "0s7am2w72siggn668h03gn3g06gsinv6m1jaaxmnbj59177l6d4p"))

(define rust-ratatui-0.30.2
  (crate-source "ratatui" "0.30.2"
                "0zfmk50bl3ahjjq0z55h5rmx5njrvks20p80lb9cl6sy5h5blx1j"))

(define rust-ratatui-core-0.1.2
  (crate-source "ratatui-core" "0.1.2"
                "1727mqrvy80hmg5nbf0dwh68rrlnmsi76mqzkn08mqn86g27bcfb"))

(define rust-ratatui-crossterm-0.1.2
  (crate-source "ratatui-crossterm" "0.1.2"
                "1w59rh1xdvd133yxnqskxcjnf9lp2j3b8h6y4cy21a76n2iq8xan"))

(define rust-ratatui-image-11.0.6
  (crate-source "ratatui-image" "11.0.6"
                "11hc4ww2vmbxgp6ka6fj1rdsxv49qqfbpj3fpih98qxf5sibf070"))

(define rust-ratatui-macros-0.7.2
  (crate-source "ratatui-macros" "0.7.2"
                "056q80hzmwamv511xfygzcw0rq97hh3ypq389lza963lma6wczgd"))

(define rust-ratatui-termina-0.1.0
  (crate-source "ratatui-termina" "0.1.0"
                "1hj35knwflynqim7sxdbaarqda0f51m3hbnrb6kmgw36kqnr3gy0"))

(define rust-ratatui-termwiz-0.1.2
  (crate-source "ratatui-termwiz" "0.1.2"
                "0xz95i63n7nafpsk6jbm56h65w5dwd7j4x6bsra40x5ph01kxw7s"))

(define rust-ratatui-widgets-0.3.2
  (crate-source "ratatui-widgets" "0.3.2"
                "1l87cjanipc1bzwza1mywfn23wbzfrh3pnbpc8vwlc4irjdx3qv6"))

(define rust-rav1e-0.8.1
  (crate-source "rav1e" "0.8.1"
                "0axk3ji3jmlr81svmsy5zvj8shmhpp8lz5nyghkq752xx1bdvdj3"))

(define rust-ravif-0.13.0
  (crate-source "ravif" "0.13.0"
                "0ifcpczxf6kcsqlky08vbjrvw9yd1m9mfszywxdhy6wpglci08z5"))

(define rust-rayon-1.12.0
  (crate-source "rayon" "1.12.0"
                "0vcj63xgnk72c30vdrak7dhl53snnaqv9x2faf1d94hzg1kb2fgv"))

(define rust-rayon-core-1.13.0
  (crate-source "rayon-core" "1.13.0"
                "14dbr0sq83a6lf1rfjq5xdpk5r6zgzvmzs5j6110vlv2007qpq92"))

(define rust-redox-syscall-0.5.18
  (crate-source "redox_syscall" "0.5.18"
                "0b9n38zsxylql36vybw18if68yc9jczxmbyzdwyhb9sifmag4azd"))

(define rust-redox-syscall-0.8.1
  (crate-source "redox_syscall" "0.8.1"
                "1rrcn3nxva589cdhq1bhbvnxdbb6726f1lb5srbn9qx6yaabhi2v"))

(define rust-redox-users-0.5.2
  (crate-source "redox_users" "0.5.2"
                "1b17q7gf7w8b1vvl53bxna24xl983yn7bd00gfbii74bcg30irm4"))

(define rust-ref-cast-1.0.25
  (crate-source "ref-cast" "1.0.25"
                "0zdzc34qjva9xxgs889z5iz787g81hznk12zbk4g2xkgwq530m7k"))

(define rust-ref-cast-impl-1.0.25
  (crate-source "ref-cast-impl" "1.0.25"
                "1nkhn1fklmn342z5c4mzfzlxddv3x8yhxwwk02cj06djvh36065p"))

(define rust-regex-1.13.0
  (crate-source "regex" "1.13.0"
                "18p8vqy4yp4z4rnx78sh4qqz257jhil7il4c0v5mmp0l7q8pa3ia"))

(define rust-regex-automata-0.4.14
  (crate-source "regex-automata" "0.4.14"
                "13xf7hhn4qmgfh784llcp2kzrvljd13lb2b1ca0mwnf15w9d87bf"))

(define rust-regex-syntax-0.8.11
  (crate-source "regex-syntax" "0.8.11"
                "1m25h5q2wp976fb9gc3dsc9l99svcvd5cri8lncb51c46ydgzxnn"))

(define rust-reqwest-0.12.28
  (crate-source "reqwest" "0.12.28"
                "0iqidijghgqbzl3bjg5hb4zmigwa4r612bgi0yiq0c90b6jkrpgd"))

(define rust-reqwest-0.13.4
  (crate-source "reqwest" "0.13.4"
                "1hy1plns9krbh3h1dy2sdjygsfkdcnxm6pbxdi0ya9b5vq8mi711"))

(define rust-rgb-0.8.53
  (crate-source "rgb" "0.8.53"
                "1i0c55whln68zs6f5qqrkbg1mzai0p3qk1mwkwzdgr9i3dw4pcs7"))

(define rust-ring-0.17.14
  (crate-source "ring" "0.17.14"
                "1dw32gv19ccq4hsx3ribhpdzri1vnrlcfqb2vj41xn4l49n9ws54"))

(define rust-rodio-0.22.2
  (crate-source "rodio" "0.22.2"
                "1sq1xikp3phcisvb3kny2srqgsq2dhjd8k8syy70jnfvg6xkd9fh"))

(define rust-rppal-0.22.1
  (crate-source "rppal" "0.22.1"
                "09mhjq2islpiiq7lj6nwhw0vkig5q9y6xsdhnqng1kq9j00kpkn1"))

(define rust-rsa-0.9.10
  (crate-source "rsa" "0.9.10"
                "0bdikdwhcvl1gfh4637m5rdw3fgcl752aiygvzmwlgc8yl1kymxq"))

(define rust-rtrb-0.3.4
  (crate-source "rtrb" "0.3.4"
                "0lqidbanyfljyf1v31pzrjnbgpi3rhr687wxyrnm7gxlrcy0ipja"))

(define rust-rust-embed-8.12.0
  (crate-source "rust-embed" "8.12.0"
                "1jabmc2gbkalr4m5alwansyqbxbc8wv0xq2bkyqagara4l77drz9"))

(define rust-rust-embed-impl-8.12.0
  (crate-source "rust-embed-impl" "8.12.0"
                "15rh6kswbb8xdj6dsy51abhcqkvrp2vf88x7yxakgx1sypbc9krv"))

(define rust-rust-embed-utils-8.12.0
  (crate-source "rust-embed-utils" "8.12.0"
                "1w4545lpqk3sji8jqbbkg8nd2kkwhldd049hbf5bb0dayr4s3zs2"))

(define rust-rustc-hash-2.1.2
  (crate-source "rustc-hash" "2.1.2"
                "1gjdc5bw9982cj176jvgz9rrqf9xvr1q1ddpzywf5qhs7yzhlc4l"))

(define rust-rustc-version-0.4.1
  (crate-source "rustc_version" "0.4.1"
                "14lvdsmr5si5qbqzrajgb6vfn69k0sfygrvfvr2mps26xwi3mjyg"))

(define rust-rustix-0.38.44
  (crate-source "rustix" "0.38.44"
                "0m61v0h15lf5rrnbjhcb9306bgqrhskrqv7i1n0939dsw8dbrdgx"))

(define rust-rustix-1.1.4
  (crate-source "rustix" "1.1.4"
                "14511f9yjqh0ix07xjrjpllah3325774gfwi9zpq72sip5jlbzmn"))

(define rust-rustls-0.23.40
  (crate-source "rustls" "0.23.40"
                "12qnv3ag4wrw7aj8jng74kgrilpjm2b1rfcjaac8h691frccv1pg"))

(define rust-rustls-native-certs-0.8.4
  (crate-source "rustls-native-certs" "0.8.4"
                "0kgazl8zc1sv63qg179bz96ilzh56lzfa5k92ji7d265f4kibdfs"))

(define rust-rustls-pki-types-1.14.1
  (crate-source "rustls-pki-types" "1.14.1"
                "1a9pr54y0f3qr97bxpd3ahjldq0gqdld0h799xbnwdzbwxx1k9rh"))

(define rust-rustls-platform-verifier-0.7.0
  (crate-source "rustls-platform-verifier" "0.7.0"
                "181v4d0vl53vdh2wq56vghal1zyhdgqvy4xa8r45zwz4di9y5l96"))

(define rust-rustls-platform-verifier-android-0.1.1
  (crate-source "rustls-platform-verifier-android" "0.1.1"
                "13vq6sxsgz9547xm2zbdxiw8x7ad1g8n8ax6xvxsjqszk7q6awgq"))

(define rust-rustls-webpki-0.103.13
  (crate-source "rustls-webpki" "0.103.13"
                "0vkm7z9pnxz5qz66p2kmyy2pwx0g4jnsbqk5xzfhs4czcjl2ki31"))

(define rust-rustversion-1.0.22
  (crate-source "rustversion" "1.0.22"
                "0vfl70jhv72scd9rfqgr2n11m5i9l1acnk684m2w83w0zbqdx75k"))

(define rust-ryu-1.0.23
  (crate-source "ryu" "1.0.23"
                "0zs70sg00l2fb9jwrf6cbkdyscjs53anrvai2hf7npyyfi5blx4p"))

(define rust-safe-arch-0.9.3
  (crate-source "safe_arch" "0.9.3"
                "1pfz0zib1xrfzklksan08hyw9spi9h3z40zsf1vpbzi9bk41d5b2"))

(define rust-same-file-1.0.6
  (crate-source "same-file" "1.0.6"
                "00h5j1w87dmhnvbv9l8bic3y7xxsnjmssvifw2ayvgx9mb1ivz4k"))

(define rust-schannel-0.1.29
  (crate-source "schannel" "0.1.29"
                "0ffrzz5vf2s3gnzvphgb5gg8fqifvryl07qcf7q3x1scj3jbghci"))

(define rust-scopeguard-1.2.0
  (crate-source "scopeguard" "1.2.0"
                "0jcz9sd47zlsgcnm1hdw0664krxwb5gczlif4qngj2aif8vky54l"))

(define rust-security-framework-3.7.0
  (crate-source "security-framework" "3.7.0"
                "07fd0j29j8yczb3hd430vwz784lx9knb5xwbvqna1nbkbivvrx5p"))

(define rust-security-framework-sys-2.17.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "security-framework-sys" "2.17.0"
                "1qr0w0y9iwvmv3hwg653q1igngnc5b74xcf0679cbv23z0fnkqkc"))

(define rust-seize-0.5.1
  (crate-source "seize" "0.5.1"
                "0885zlin3ma34hhqs7q3lchymi4niyl110x7dvvzb8nkvy3gnmav"))

(define rust-self-cell-1.2.2
  (crate-source "self_cell" "1.2.2"
                "12cdmh9p2h72rmw923kj841jji4k0vrykihvx19fn059az8pcbmi"))

(define rust-semver-1.0.28
  (crate-source "semver" "1.0.28"
                "1kaimrpy876bcgi8bfj0qqfxk77zm9iz2zhn1hp9hj685z854y4a"))

(define rust-serde-1.0.228
  (crate-source "serde" "1.0.228"
                "17mf4hhjxv5m90g42wmlbc61hdhlm6j9hwfkpcnd72rpgzm993ls"))

(define rust-serde-core-1.0.228
  (crate-source "serde_core" "1.0.228"
                "1bb7id2xwx8izq50098s5j2sqrrvk31jbbrjqygyan6ask3qbls1"))

(define rust-serde-derive-1.0.228
  (crate-source "serde_derive" "1.0.228"
                "0y8xm7fvmr2kjcd029g9fijpndh8csv5m20g4bd76w8qschg4h6m"))

(define rust-serde-html-form-0.2.8
  (crate-source "serde_html_form" "0.2.8"
                "0kqmp0m7vj8lrs1n2hjcp1jhhpzw81f9ycmv30vk6h11ibzxgwmj"))

(define rust-serde-json-1.0.151
  (crate-source "serde_json" "1.0.151"
                "051zww7lvpw147vvwss1ng6w587qyrkzg75fvj08q2dfrmgbahf8"))

(define rust-serde-path-to-error-0.1.20
  (crate-source "serde_path_to_error" "0.1.20"
                "0mxls44p2ycmnxh03zpnlxxygq42w61ws7ir7r0ba6rp5s1gza8h"))

(define rust-serde-repr-0.1.20
  (crate-source "serde_repr" "0.1.20"
                "1755gss3f6lwvv23pk7fhnjdkjw7609rcgjlr8vjg6791blf6php"))

(define rust-serde-spanned-1.1.1
  (crate-source "serde_spanned" "1.1.1"
                "09jzk7i6wihn3d8i3wi4j4n98ghi93c3b8m8k64nxq0ijn3vaqk6"))

(define rust-serde-urlencoded-0.7.1
  (crate-source "serde_urlencoded" "0.7.1"
                "1zgklbdaysj3230xivihs30qi5vkhigg323a9m62k8jwf4a1qjfk"))

(define rust-sha1-0.10.6
  (crate-source "sha1" "0.10.6"
                "1fnnxlfg08xhkmwf2ahv634as30l1i3xhlhkvxflmasi5nd85gz3"))

(define rust-sha2-0.10.9
  (crate-source "sha2" "0.10.9"
                "10xjj843v31ghsksd9sl9y12qfc48157j1xpb8v1ml39jy0psl57"))

(define rust-sha2-0.11.0
  (crate-source "sha2" "0.11.0"
                "1x15x22c5yf54ac0np5bfqnq5x0hdw4wqzpi48zwn94ma0bsfss4"))

(define rust-sharded-slab-0.1.7
  (crate-source "sharded-slab" "0.1.7"
                "1xipjr4nqsgw34k7a2cgj9zaasl2ds6jwn89886kww93d32a637l"))

(define rust-shlex-2.0.1
  (crate-source "shlex" "2.0.1"
                "1fjsll1cd7d2bcpdij9kd6w62rpbc7qqzvydvs021vsmr1cxvypq"))

(define rust-signal-hook-0.3.18
  (crate-source "signal-hook" "0.3.18"
                "1qnnbq4g2vixfmlv28i1whkr0hikrf1bsc4xjy2aasj2yina30fq"))

(define rust-signal-hook-mio-0.2.5
  (crate-source "signal-hook-mio" "0.2.5"
                "1k20rr76ngvmzr6kskkl7dv8iyb84cbydpjbjk3mpcj0lykijnmp"))

(define rust-signal-hook-registry-1.4.8
  (crate-source "signal-hook-registry" "1.4.8"
                "06vc7pmnki6lmxar3z31gkyg9cw7py5x9g7px70gy2hil75nkny4"))

(define rust-signature-2.2.0
  (crate-source "signature" "2.2.0"
                "1pi9hd5vqfr3q3k49k37z06p7gs5si0in32qia4mmr1dancr6m3p"))

(define rust-simd-adler32-0.3.9
  (crate-source "simd-adler32" "0.3.9"
                "0532ysdwcvzyp2bwpk8qz0hijplcdwpssr5gy5r7qwqqy5z5qgbh"))

(define rust-simd-cesu8-1.1.1
  (crate-source "simd_cesu8" "1.1.1"
                "0crcbgvyycmazji2vqj9vxn2czdyl3gxmicp4xqdzkc7pdbh3ycl"))

(define rust-simd-helpers-0.1.0
  (crate-source "simd_helpers" "0.1.0"
                "19idqicn9k4vhd04ifh2ff41wvna79zphdf2c81rlmpc7f3hz2cm"))

(define rust-simdutf8-0.1.5
  (crate-source "simdutf8" "0.1.5"
                "0vmpf7xaa0dnaikib5jlx6y4dxd3hxqz6l830qb079g7wcsgxag3"))

(define rust-siphasher-1.0.3
  (crate-source "siphasher" "1.0.3"
                "0jg6l9xyzca5vy4h6gf8r6p4kk84g98fk95pzig1kq6cr4z8grcf"))

(define rust-skabelon-0.2.3
  (crate-source "skabelon" "0.2.3"
                "0xc8nd722nmyji8kr28pxgvy3rhvjavgxk2ykvb04rq48zxc68gb"))

(define rust-slab-0.4.12
  (crate-source "slab" "0.4.12"
                "1xcwik6s6zbd3lf51kkrcicdq2j4c1fw0yjdai2apy9467i0sy8c"))

(define rust-smallvec-1.15.2
  (crate-source "smallvec" "1.15.2"
                "143wzbqf6vgapdp2z4qpl0yvlqcn17s8cnk8m28rqly808zsdmlf"))

(define rust-snafu-0.9.2
  (crate-source "snafu" "0.9.2"
                "1dx44pj4nid04lv64rjbhwihz3bd4arqg637df97pfwa0c2bcp74"))

(define rust-snafu-derive-0.9.2
  (crate-source "snafu-derive" "0.9.2"
                "0whyc1bp26laq8sczsfkr13cq6kccrnij0rvbv7xgw08000mjzr8"))

(define rust-socket-pktinfo-0.3.2
  (crate-source "socket-pktinfo" "0.3.2"
                "0byjvk8dr1l6q4xsf15hdmr3yp5p084j3cf6dbkb18g65b63cwcj"))

(define rust-socket2-0.6.4
  (crate-source "socket2" "0.6.4"
                "0ldyp5rhba15spwxj1n94xh7sjks1398c3vwpwkxkd1087nwzlaj"))

(define rust-soup3-0.9.0
  (crate-source "soup3" "0.9.0"
                "0alnb9h78786wh5cc8y2ks85n76n0ify2dykxww2ac3dzxcqplwj"))

(define rust-soup3-sys-0.9.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "soup3-sys" "0.9.0"
                "1slvdxd7zmmvsbb6xbr1vpy4avdmfdcw737zg0xzh1mv4m9d5mbr"))

(define rust-spin-0.9.8
  (crate-source "spin" "0.9.8"
                "0rvam5r0p3a6qhc18scqpvpgb3ckzyqxpgdfyjnghh8ja7byi039"))

(define rust-spki-0.7.3
  (crate-source "spki" "0.7.3"
                "17fj8k5fmx4w9mp27l970clrh5qa7r5sjdvbsln987xhb34dc7nr"))

(define rust-sqlx-0.8.6
  (crate-source "sqlx" "0.8.6"
                "1p4pgppy10ch4vj0fyay9q3g8y5xhzsayyfrrnfncacli69vivqz"))

(define rust-sqlx-core-0.8.6
  (crate-source "sqlx-core" "0.8.6"
                "1ildwsjy7lwfxsvfh174jwhk0rjqvyw37h87q1lhyslbhfqrhrzf"))

(define rust-sqlx-macros-0.8.6
  (crate-source "sqlx-macros" "0.8.6"
                "0pbiwsv5ysv3qcx1g4p1pvsqlz0xp67k9g5xw3szpb6aijc55m52"))

(define rust-sqlx-macros-core-0.8.6
  (crate-source "sqlx-macros-core" "0.8.6"
                "16r1slvkzfdxjkc2v5i3yd5l4xzcwbcy35hzfihmmb14262c3a8r"))

(define rust-sqlx-mysql-0.8.6
  (crate-source "sqlx-mysql" "0.8.6"
                "09n5k60z9j1ilbdmggcla6s27np3zwxc3fnbzsw4wy6z7003y05a"))

(define rust-sqlx-postgres-0.8.6
  (crate-source "sqlx-postgres" "0.8.6"
                "0insvvaql0pz6nk64dbss4q4qzilj7zh2j0m9cc7rw1wlpazqn6v"))

(define rust-sqlx-sqlite-0.8.6
  (crate-source "sqlx-sqlite" "0.8.6"
                "1siy1jhqf5flpxyrmy7rw66j0y0v2l7zjmc00c0l86rc1gkjzlf2"))

(define rust-stable-deref-trait-1.2.1
  (crate-source "stable_deref_trait" "1.2.1"
                "15h5h73ppqyhdhx6ywxfj88azmrpml9gl6zp3pwy2malqa6vxqkc"))

(define rust-static-assertions-1.1.0
  (crate-source "static_assertions" "1.1.0"
                "0gsl6xmw10gvn3zs1rv99laj5ig7ylffnh71f9l34js4nr4r7sx2"))

(define rust-stream-download-0.24.3
  (crate-source "stream-download" "0.24.3"
                "055v0ii2bdx79yzl4l1xlnqwc9lb6a694cjxnzm02cw8p57jg5a3"))

(define rust-stringprep-0.1.5
  (crate-source "stringprep" "0.1.5"
                "1cb3jis4h2b767csk272zw92lc6jzfzvh8d6m1cd86yqjb9z6kbv"))

(define rust-strsim-0.11.1
  (crate-source "strsim" "0.11.1"
                "0kzvqlw8hxqb7y598w1s0hxlnmi84sg5vsipp3yg5na5d1rvba3x"))

(define rust-strum-0.28.0
  (crate-source "strum" "0.28.0"
                "1ggr0if083c1mz9w33hkdjsp0iqk2fz9n49bvb73knwihydxwa4n"))

(define rust-strum-macros-0.28.0
  (crate-source "strum_macros" "0.28.0"
                "0r7n6v5b3x85m52isyc8wq78irmr22g0hmj1xn3pbq8f4yhfx1db"))

(define rust-subtle-2.6.1
  (crate-source "subtle" "2.6.1"
                "14ijxaymghbl1p0wql9cib5zlwiina7kall6w7g89csprkgbvhhk"))

(define rust-symphonia-0.5.5
  (crate-source "symphonia" "0.5.5"
                "0fbhlmvf1m9rb5xdy057vzymvirmzx39gx4hl3x9p7d1630a8wsp"))

(define rust-symphonia-bundle-flac-0.5.5
  (crate-source "symphonia-bundle-flac" "0.5.5"
                "0xlrdil9prgbwds8j2rd0z8gy9i5h13ca459h2dmv8mfh3hna5f9"))

(define rust-symphonia-bundle-mp3-0.5.5
  (crate-source "symphonia-bundle-mp3" "0.5.5"
                "1vapgi7haxmi4fnf09rvc4z6q24136m5gsg3k73ymxbbnmmxswj8"))

(define rust-symphonia-codec-aac-0.5.5
  (crate-source "symphonia-codec-aac" "0.5.5"
                "1457ffg88inyb6x1s4cnid7icmbz9jjjj5wwhhb19246m92kh9jc"))

(define rust-symphonia-codec-pcm-0.5.5
  (crate-source "symphonia-codec-pcm" "0.5.5"
                "158x0g5v13qh1c4jyyrzd8kcz9rqim6cx4bwpqzash8mq0bdg2af"))

(define rust-symphonia-codec-vorbis-0.5.5
  (crate-source "symphonia-codec-vorbis" "0.5.5"
                "0wqwbnwb3ibwf14mx6irqm99bdap4950nxbjypz9zmlw61y869gh"))

(define rust-symphonia-core-0.5.5
  (crate-source "symphonia-core" "0.5.5"
                "1by293wrwb37as89fx8qzr1klvq6l5jw1pbyz1zvpxmpg57wq07a"))

(define rust-symphonia-format-isomp4-0.5.5
  (crate-source "symphonia-format-isomp4" "0.5.5"
                "19g060n3hjrnzisrc9csq3v9hy6c30yrz3dcinpivy0ibmc3jdr4"))

(define rust-symphonia-format-ogg-0.5.5
  (crate-source "symphonia-format-ogg" "0.5.5"
                "1jrrar1v3a2x7gkm3c5j35mfzywphg5093a2x25amlqygk35aj9b"))

(define rust-symphonia-format-riff-0.5.5
  (crate-source "symphonia-format-riff" "0.5.5"
                "0vx9247jsn9cjr0s3hay1ns04g77x831kn01hjvfz53x1vgw7my2"))

(define rust-symphonia-metadata-0.5.5
  (crate-source "symphonia-metadata" "0.5.5"
                "05kbkshrzqj83mlbkdwxkgkjzmhb3q99xm4rzid6xzlz5gs6yc1n"))

(define rust-symphonia-utils-xiph-0.5.5
  (crate-source "symphonia-utils-xiph" "0.5.5"
                "05lzmgxppqn647hmc1j9pgqsdqa2pxxcgvk8dd23i8wrnxdch9zf"))

(define rust-syn-1.0.109
  (crate-source "syn" "1.0.109"
                "0ds2if4600bd59wsv7jjgfkayfzy3hnazs394kz6zdkmna8l3dkj"))

(define rust-syn-2.0.117
  (crate-source "syn" "2.0.117"
                "16cv7c0wbn8amxc54n4w15kxlx5ypdmla8s0gxr2l7bv7s0bhrg6"))

(define rust-syn-3.0.3
  (crate-source "syn" "3.0.3"
                "18srnql3cd39j9q6hf1az02p67rlr1rf6njx9zx4vxj9i3jvmsak"))

(define rust-sync-wrapper-1.0.2
  (crate-source "sync_wrapper" "1.0.2"
                "0qvjyasd6w18mjg5xlaq5jgy84jsjfsvmnn12c13gypxbv75dwhb"))

(define rust-synstructure-0.13.2
  (crate-source "synstructure" "0.13.2"
                "1lh9lx3r3jb18f8sbj29am5hm9jymvbwh6jb1izsnnxgvgrp12kj"))

(define rust-system-configuration-0.7.0
  (crate-source "system-configuration" "0.7.0"
                "12rwilylzc625qnxl30h5kf8wj5ka61zjrwpmb034cd0mc6ksgx1"))

(define rust-system-configuration-sys-0.6.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "system-configuration-sys" "0.6.0"
                "1i5sqrmgy58l4704hibjbl36hclddglh73fb3wx95jnmrq81n7cf"))

(define rust-system-deps-7.0.8
  (crate-source "system-deps" "7.0.8"
                "1rwnfw9dm6ck65a7lfjfpn2c91gwj88brz2i09z3fdbknvz3asir"))

(define rust-tagptr-0.2.0
  (crate-source "tagptr" "0.2.0"
                "05r4mwvlsclx1ayj65hpzjv3dn4wpi8j4xm695vydccf9k7r683v"))

(define rust-tap-1.0.1
  (crate-source "tap" "1.0.1"
                "0sc3gl4nldqpvyhqi3bbd0l9k7fngrcl4zs47n314nqqk4bpx4sm"))

(define rust-target-lexicon-0.13.5
  (crate-source "target-lexicon" "0.13.5"
                "1jm6lmf9hsn7ri2d6v9gg6fy24lylhskh6pbxh71f82wdxd97dmd"))

(define rust-tempfile-3.27.0
  (crate-source "tempfile" "3.27.0"
                "1gblhnyfjsbg9wjg194n89wrzah7jy3yzgnyzhp56f3v9jd7wj9j"))

(define rust-termina-0.3.3
  (crate-source "termina" "0.3.3"
                "0km0c8zdpprqin2i1r9vr9nv362i519pzbz0vv6sad7yxy4shj4h"))

(define rust-terminfo-0.9.0
  (crate-source "terminfo" "0.9.0"
                "0qp6rrzkxcg08vjzsim2bw7mid3vi29mizrg70dzbycj0q7q3snl"))

(define rust-termios-0.3.3
  (crate-source "termios" "0.3.3"
                "0sxcs0g00538jqh5xbdqakkzijadr8nj7zmip0c7jz3k83vmn721"))

(define rust-termwiz-0.23.3
  (crate-source "termwiz" "0.23.3"
                "1xzq6l7rx285ax57dz8gdh44kp1790x0knvfynmimgfc89rb6xj6"))

(define rust-thiserror-1.0.69
  (crate-source "thiserror" "1.0.69"
                "0lizjay08agcr5hs9yfzzj6axs53a2rgx070a1dsi3jpkcrzbamn"))

(define rust-thiserror-2.0.18
  (crate-source "thiserror" "2.0.18"
                "1i7vcmw9900bvsmay7mww04ahahab7wmr8s925xc083rpjybb222"))

(define rust-thiserror-impl-1.0.69
  (crate-source "thiserror-impl" "1.0.69"
                "1h84fmn2nai41cxbhk6pqf46bxqq1b344v8yz089w1chzi76rvjg"))

(define rust-thiserror-impl-2.0.18
  (crate-source "thiserror-impl" "2.0.18"
                "1mf1vrbbimj1g6dvhdgzjmn6q09yflz2b92zs1j9n3k7cxzyxi7b"))

(define rust-thread-local-1.1.9
  (crate-source "thread_local" "1.1.9"
                "1191jvl8d63agnq06pcnarivf63qzgpws5xa33hgc92gjjj4c0pn"))

(define rust-tiff-0.11.3
  (crate-source "tiff" "0.11.3"
                "0lmw68ic77sixk17r4rl2vsv00rqhja3yj2h9p5bcd9x6krylgxn"))

(define rust-time-0.3.55
  (crate-source "time" "0.3.55"
                "0d6iyws47z50zlksf5m3cflxvjrcgfhjglhn112gmpahxjappf6d"))

(define rust-time-core-0.1.9
  (crate-source "time-core" "0.1.9"
                "028ix0ax7ixp1h1k5zsqwgw85w6y1q32irslma7ci6ddd5kr074y"))

(define rust-time-macros-0.2.32
  (crate-source "time-macros" "0.2.32"
                "11gdd3b81mj8i0h114qfjjzm8j2rz2mhr9byr0ksjbldli196s3y"))

(define rust-tinystr-0.8.3
  (crate-source "tinystr" "0.8.3"
                "0vfr8x285w6zsqhna0a9jyhylwiafb2kc8pj2qaqaahw48236cn8"))

(define rust-tinyvec-1.11.0
  (crate-source "tinyvec" "1.11.0"
                "1wvycrghzmaysnw34kzwnf0mfx6r75045s24r214wnnjadqfcq9y"))

(define rust-tinyvec-macros-0.1.1
  (crate-source "tinyvec_macros" "0.1.1"
                "081gag86208sc3y6sdkshgw3vysm5d34p431dzw0bshz66ncng0z"))

(define rust-tokio-1.53.1
  (crate-source "tokio" "1.53.1"
                "1v8b3b45pkpbibls75yniqbvx5dlks2708141ljni5mnf6lawb10"))

(define rust-tokio-macros-2.7.0
  (crate-source "tokio-macros" "2.7.0"
                "15m4f37mdafs0gg36sh0rskm1i768lb7zmp8bw67kaxr3avnqniq"))

(define rust-tokio-native-tls-0.3.1
  (crate-source "tokio-native-tls" "0.3.1"
                "1wkfg6zn85zckmv4im7mv20ca6b1vmlib5xwz9p7g19wjfmpdbmv"))

(define rust-tokio-rustls-0.26.4
  (crate-source "tokio-rustls" "0.26.4"
                "0qggwknz9w4bbsv1z158hlnpkm97j3w8v31586jipn99byaala8p"))

(define rust-tokio-schedule-0.3.2
  (crate-source "tokio_schedule" "0.3.2"
                "1q62v8jc5lgn2xh6p8c5c5rqzixbbainxiv9xzb1hdfsak2r3hk1"))

(define rust-tokio-stream-0.1.19
  (crate-source "tokio-stream" "0.1.19"
                "02s2ag7j40z8kx3yjy2g28l1wangawp3f1wlnwk7r99b105nzl53"))

(define rust-tokio-tungstenite-0.24.0
  (crate-source "tokio-tungstenite" "0.24.0"
                "1nfw1i6yy120a14h1xagd4f31k3g1mz4rdxpvgh77jcd4i7ggigd"))

(define rust-tokio-util-0.7.18
  (crate-source "tokio-util" "0.7.18"
                "1600rd47pylwn7cap1k7s5nvdaa9j7w8kqigzp1qy7mh0p4cxscs"))

(define rust-toml-1.1.2+spec-1.1.0
  (crate-source "toml" "1.1.2+spec-1.1.0"
                "1vpggpamqhw4852kic7465zsidczsla06wz6friqkkfbhigd3ww1"))

(define rust-toml-datetime-1.1.1+spec-1.1.0
  (crate-source "toml_datetime" "1.1.1+spec-1.1.0"
                "1mws2mkkf46l7inn77azhm0vdwxngv9vsbhbl0ah33p2c9gzcr9i"))

(define rust-toml-edit-0.25.12+spec-1.1.0
  (crate-source "toml_edit" "0.25.12+spec-1.1.0"
                "1mx5paq837rjw7w51zprrjynk1vaig9yzxfqz9ac79jmd7f3w5fj"))

(define rust-toml-parser-1.1.2+spec-1.1.0
  (crate-source "toml_parser" "1.1.2+spec-1.1.0"
                "09kmzc55a0j21whm290wlf5a8b18a0qc87a1s8sncrckc6wfkax2"))

(define rust-toml-writer-1.1.1+spec-1.1.0
  (crate-source "toml_writer" "1.1.1+spec-1.1.0"
                "1nwjhvvrxz8f4ck1qi4xcz2x9qhpci37nrknhxxf9sqk22dsyvbm"))

(define rust-tower-0.5.3
  (crate-source "tower" "0.5.3"
                "1m5i3a2z1sgs8nnz1hgfq2nr4clpdmizlp1d9qsg358ma5iyzrgb"))

(define rust-tower-http-0.6.11
  (crate-source "tower-http" "0.6.11"
                "0h08wjgs3hwnq11iwwzlmnabn1h4cl0fzd48svaccvqffkiggz2c"))

(define rust-tower-http-0.7.0
  (crate-source "tower-http" "0.7.0"
                "0cz2k1a6gj54lcqx9cxb6k7rfgwcgc2zi31xnq0vxhmh2blpa7xi"))

(define rust-tower-layer-0.3.3
  (crate-source "tower-layer" "0.3.3"
                "03kq92fdzxin51w8iqix06dcfgydyvx7yr6izjq0p626v9n2l70j"))

(define rust-tower-service-0.3.3
  (crate-source "tower-service" "0.3.3"
                "1hzfkvkci33ra94xjx64vv3pp0sq346w06fpkcdwjcid7zhvdycd"))

(define rust-tracing-0.1.44
  (crate-source "tracing" "0.1.44"
                "006ilqkg1lmfdh3xhg3z762izfwmxcvz0w7m4qx2qajbz9i1drv3"))

(define rust-tracing-attributes-0.1.31
  (crate-source "tracing-attributes" "0.1.31"
                "1np8d77shfvz0n7camx2bsf1qw0zg331lra0hxb4cdwnxjjwz43l"))

(define rust-tracing-core-0.1.36
  (crate-source "tracing-core" "0.1.36"
                "16mpbz6p8vd6j7sf925k9k8wzvm9vdfsjbynbmaxxyq6v7wwm5yv"))

(define rust-tracing-log-0.2.0
  (crate-source "tracing-log" "0.2.0"
                "1hs77z026k730ij1a9dhahzrl0s073gfa2hm5p0fbl0b80gmz1gf"))

(define rust-tracing-subscriber-0.3.23
  (crate-source "tracing-subscriber" "0.3.23"
                "06fkr0qhggvrs861d7f74pn3i3a10h5jsp4n70jj9ys5b675fzyb"))

(define rust-trait-variant-0.1.2
  (crate-source "trait-variant" "0.1.2"
                "19vpbnbcsxdiznwdw854pd0vya7rm7v7hnl3nh741621603pg5vh"))

(define rust-try-lock-0.2.5
  (crate-source "try-lock" "0.2.5"
                "0jqijrrvm1pyq34zn1jmy2vihd4jcrjlvsh4alkjahhssjnsn8g4"))

(define rust-tui-big-text-0.8.8
  (crate-source "tui-big-text" "0.8.8"
                "1vb9ywrp7ah21v60ln2i4mwssrphh71c2mkiz2343r74h7av8dly"))

(define rust-tui-input-0.15.3
  (crate-source "tui-input" "0.15.3"
                "1yh5xc8kz4y90mskh6cv8iirhm09gc5b24cdlrgg4773aak19l0b"))

(define rust-tungstenite-0.24.0
  (crate-source "tungstenite" "0.24.0"
                "12nsxnxazk4nisgsqpywi6za0hsbc2rd15r1scb5pag7dqvbir8q"))

(define rust-typenum-1.20.1
  (crate-source "typenum" "1.20.1"
                "086s9ly0906kw5yw41249fba97w5zfxf03pyfwdkffvcprqfixdn"))

(define rust-ucd-trie-0.1.7
  (crate-source "ucd-trie" "0.1.7"
                "0wc9p07sqwz320848i52nvyjvpsxkx3kv5bfbmm6s35809fdk5i8"))

(define rust-uds-windows-1.2.1
  (crate-source "uds_windows" "1.2.1"
                "0vidqwwfgn8wyzvbxiqil787b4wyqjia50zpdbbjqx7n8wlgpxpj"))

(define rust-unicase-2.9.0
  (crate-source "unicase" "2.9.0"
                "0hh1wrfd7807mfph2q67jsxqgw8hm82xg2fb8ln8cvblkwxbri6v"))

(define rust-unicode-bidi-0.3.18
  (crate-source "unicode-bidi" "0.3.18"
                "1xcxwbsqa24b8vfchhzyyzgj0l6bn51ib5v8j6krha0m77dva72w"))

(define rust-unicode-ident-1.0.24
  (crate-source "unicode-ident" "1.0.24"
                "0xfs8y1g7syl2iykji8zk5hgfi5jw819f5zsrbaxmlzwsly33r76"))

(define rust-unicode-normalization-0.1.25
  (crate-source "unicode-normalization" "0.1.25"
                "1s76dcrxw7vs32yhpi0p074apdc3s7lak7809f3qvclwij3zdm2z"))

(define rust-unicode-properties-0.1.4
  (crate-source "unicode-properties" "0.1.4"
                "07fpm3sqq7lm9gmgpxa93z31q933h3c3ypfwy4cdh6l42g3miw3x"))

(define rust-unicode-segmentation-1.13.3
  (crate-source "unicode-segmentation" "1.13.3"
                "1a47zaq83p386r3baq4m018xd5q4q0grdg56i1x042dzn71x7xf6"))

(define rust-unicode-truncate-2.0.1
  (crate-source "unicode-truncate" "2.0.1"
                "19g9af5v0a8xaigqbs9hi9csxkg1fff07ycilvwfaqw64fhq1cqn"))

(define rust-unicode-width-0.2.2
  (crate-source "unicode-width" "0.2.2"
                "0m7jjzlcccw716dy9423xxh0clys8pfpllc5smvfxrzdf66h9b5l"))

(define rust-unicode-xid-0.2.6
  (crate-source "unicode-xid" "0.2.6"
                "0lzqaky89fq0bcrh6jj6bhlz37scfd8c7dsj5dq7y32if56c1hgb"))

(define rust-untrusted-0.9.0
  (crate-source "untrusted" "0.9.0"
                "1ha7ib98vkc538x0z60gfn0fc5whqdd85mb87dvisdcaifi6vjwf"))

(define rust-url-2.5.8
  (crate-source "url" "2.5.8"
                "1v8f7nx3hpr1qh76if0a04sj08k86amsq4h8cvpw6wvk76jahrzz"))

(define rust-utf-8-0.7.6
  (crate-source "utf-8" "0.7.6"
                "1a9ns3fvgird0snjkd3wbdhwd3zdpc2h5gpyybrfr6ra5pkqxk09"))

(define rust-utf8-iter-1.0.4
  (crate-source "utf8_iter" "1.0.4"
                "1gmna9flnj8dbyd8ba17zigrp9c4c3zclngf5lnb5yvz1ri41hdn"))

(define rust-utf8parse-0.2.2
  (crate-source "utf8parse" "0.2.2"
                "088807qwjq46azicqwbhlmzwrbkz7l4hpw43sdkdyyk524vdxaq6"))

(define rust-uuid-1.23.3
  (crate-source "uuid" "1.23.3"
                "1drddl03gi12vl1s3l2h371dw39plhn9wappp00v707g7h96nk8l"))

(define rust-v-frame-0.3.9
  (crate-source "v_frame" "0.3.9"
                "1qkvb4ks33zck931vzqckjn36hkngj6l2cwmvfsnlpc7r0kpfsv6"))

(define rust-valuable-0.1.1
  (crate-source "valuable" "0.1.1"
                "0r9srp55v7g27s5bg7a2m095fzckrcdca5maih6dy9bay6fflwxs"))

(define rust-vcpkg-0.2.15
  (crate-source "vcpkg" "0.2.15"
                "09i4nf5y8lig6xgj3f7fyrvzd3nlaw4znrihw8psidvv5yk4xkdc"))

(define rust-version-check-0.9.5
  (crate-source "version_check" "0.9.5"
                "0nhhi4i5x89gm911azqbn7avs9mdacw2i3vcz3cnmz3mv4rqz4hb"))

(define rust-version-compare-0.2.1
  (crate-source "version-compare" "0.2.1"
                "03nziqxwnxlizl42cwsx33vi5xd2cf2jnszhh9rzay7g6xl8bhh3"))

(define rust-vsimd-0.8.0
  (crate-source "vsimd" "0.8.0"
                "0r4wn54jxb12r0x023r5yxcrqk785akmbddqkcafz9fm03584c2w"))

(define rust-vtparse-0.6.2
  (crate-source "vtparse" "0.6.2"
                "1l5yz9650zhkaffxn28cvfys7plcw2wd6drajyf41pshn37jm6vd"))

(define rust-walkdir-2.5.0
  (crate-source "walkdir" "2.5.0"
                "0jsy7a710qv8gld5957ybrnc07gavppp963gs32xk4ag8130jy99"))

(define rust-want-0.3.1
  (crate-source "want" "0.3.1"
                "03hbfrnvqqdchb5kgxyavb9jabwza0dmh2vw5kg0dq8rxl57d9xz"))

(define rust-wasi-0.11.1+wasi-snapshot-preview1
  (crate-source "wasi" "0.11.1+wasi-snapshot-preview1"
                "0jx49r7nbkbhyfrfyhz0bm4817yrnxgd3jiwwwfv0zl439jyrwyc"))

(define rust-wasip2-1.0.4+wasi-0.2.12
  (crate-source "wasip2" "1.0.4+wasi-0.2.12"
                "11wl7lqwq4pbmlmzr6n7bwz0hzy1z6sxc4554bkmrr86w4vznzmn"))

(define rust-wasip3-0.4.0+wasi-0.3.0-rc-2026-01-06
  (crate-source "wasip3" "0.4.0+wasi-0.3.0-rc-2026-01-06"
                "19dc8p0y2mfrvgk3qw3c3240nfbylv22mvyxz84dqpgai2zzha2l"))

(define rust-wasite-0.1.0
  (crate-source "wasite" "0.1.0"
                "0nw5h9nmcl4fyf4j5d4mfdjfgvwi1cakpi349wc4zrr59wxxinmq"))

(define rust-wasm-bindgen-0.2.125
  (crate-source "wasm-bindgen" "0.2.125"
                "06nakz7nfy0ymyp7a27wfbjwx69659i12117hkgddkiv2iwkznwd"))

(define rust-wasm-bindgen-futures-0.4.75
  (crate-source "wasm-bindgen-futures" "0.4.75"
                "104jssshr6cm5hmkn6c66mbkyxgaaphng6c17g0dmj7jhk918fsh"))

(define rust-wasm-bindgen-macro-0.2.125
  (crate-source "wasm-bindgen-macro" "0.2.125"
                "0g9w68dwcs4ylm5kxf7schi0kjdfarhc9qlnf8arxc9zn62a28af"))

(define rust-wasm-bindgen-macro-support-0.2.125
  (crate-source "wasm-bindgen-macro-support" "0.2.125"
                "1gayzdx5iwl8gllh7ys79wg9cf4iyasl9hrzzhh5m4xx6nfgvkpy"))

(define rust-wasm-bindgen-shared-0.2.125
  (crate-source "wasm-bindgen-shared" "0.2.125"
                "07w7fy5qa14ys3p8v2p84h98yqinw713smibz9v7apcspd29x4r3"))

(define rust-wasm-encoder-0.244.0
  (crate-source "wasm-encoder" "0.244.0"
                "06c35kv4h42vk3k51xjz1x6hn3mqwfswycmr6ziky033zvr6a04r"))

(define rust-wasm-metadata-0.244.0
  (crate-source "wasm-metadata" "0.244.0"
                "02f9dhlnryd2l7zf03whlxai5sv26x4spfibjdvc3g9gd8z3a3mv"))

(define rust-wasm-streams-0.4.2
  (crate-source "wasm-streams" "0.4.2"
                "0rddn007hp6k2cm91mm9y33n79b0jxv0c3znzszcvv67hn6ks18m"))

(define rust-wasm-streams-0.5.0
  (crate-source "wasm-streams" "0.5.0"
                "1fqbcx33w8ys5i5dv3p28a82g4yiclmhn80fcfp137kwa7vc87lx"))

(define rust-wasmparser-0.244.0
  (crate-source "wasmparser" "0.244.0"
                "1zi821hrlsxfhn39nqpmgzc0wk7ax3dv6vrs5cw6kb0v5v3hgf27"))

(define rust-web-sys-0.3.102
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "web-sys" "0.3.102"
                "0786aybrnwsgdmcynhc2k5ii291a02rq9zk054j35csyvxr0lhx6"))

(define rust-web-time-1.1.0
  (crate-source "web-time" "1.1.0"
                "1fx05yqx83dhx628wb70fyy10yjfq1jpl20qfqhdkymi13rq0ras"))

(define rust-webkit6-0.6.1
  (crate-source "webkit6" "0.6.1"
                "0w1blamii4hy2g6pjkwv33zvqc1hl12i7rrlw4m4ngc1j8mdsna9"))

(define rust-webkit6-sys-0.6.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "webkit6-sys" "0.6.0"
                "1095y3falmhpkigw2rvjjl7rw3lvd9z2bj04g7w1n17z0g77hq13"))

(define rust-webpki-root-certs-1.0.7
  (crate-source "webpki-root-certs" "1.0.7"
                "0b59x5mzsilk42w59nif3lfhc24pgzb0v35pi6p01qy37z7424gk"))

(define rust-webpki-roots-0.26.11
  (crate-source "webpki-roots" "0.26.11"
                "1agpayg5zzf7m1a01q30jahlgmn5nwggbabdhq0in008pf5c66sj"))

(define rust-webpki-roots-1.0.7
  (crate-source "webpki-roots" "1.0.7"
                "17gblaqmp51znxd2c18c04k8yfnf7s77c04n6hdmzxbcr52fxxaj"))

(define rust-weezl-0.1.12
  (crate-source "weezl" "0.1.12"
                "122a1dhha6cib5az4ihcqlh60ns2bi6rskdv875p94lbvj6wk2m2"))

(define rust-wezterm-bidi-0.2.3
  (crate-source "wezterm-bidi" "0.2.3"
                "1v7kwmnxfplv9kgdmamn6csbn2ag5xjr0y6gs797slk0alsnw2hc"))

(define rust-wezterm-blob-leases-0.1.1
  (crate-source "wezterm-blob-leases" "0.1.1"
                "1dwf8bm3cwdi37fandwbk7nsfhn9spv4wm0l86gf551xv7vaybb9"))

(define rust-wezterm-color-types-0.3.0
  (crate-source "wezterm-color-types" "0.3.0"
                "15j29f60p1dc0msx50x940niyv9d5zpynavpcc6jf44hbkrixs3x"))

(define rust-wezterm-dynamic-0.2.1
  (crate-source "wezterm-dynamic" "0.2.1"
                "1b6mrk09xxiz66dj3912kmiq8rl7dqig6rwminkfmmhg287bcajz"))

(define rust-wezterm-dynamic-derive-0.1.1
  (crate-source "wezterm-dynamic-derive" "0.1.1"
                "0nspip7gwzmfn66fbnbpa2yik2sb97nckzmgir25nr4wacnwzh26"))

(define rust-wezterm-input-types-0.1.0
  (crate-source "wezterm-input-types" "0.1.0"
                "0zp557014d458a69yqn9dxfy270b6kyfdiynr5p4algrb7aas4kh"))

(define rust-whoami-1.6.1
  (crate-source "whoami" "1.6.1"
                "0zg9sz669vhqyxysn4lymnianj29jxs2vl6k2lqcl0kp0yslsjjx"))

(define rust-wide-0.8.3
  (crate-source "wide" "0.8.3"
                "1277lyj1q3sb3gf1fg7ys430xaq9xb0gdz4fqi4n2y744s6r1jhk"))

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

(define rust-windows-0.58.0
  (crate-source "windows" "0.58.0"
                "1dkjj94b0gn91nn1n22cvm4afsj98f5qrhcl3112v6f4jcfx816x"))

(define rust-windows-0.62.2
  (crate-source "windows" "0.62.2"
                "10457l9ihrbw8j79z2v4plyjxkf6xvb5npd0lqwmkh702gpaszsj"))

(define rust-windows-aarch64-gnullvm-0.42.2
  (crate-source "windows_aarch64_gnullvm" "0.42.2"
                "1y4q0qmvl0lvp7syxvfykafvmwal5hrjb4fmv04bqs0bawc52yjr"))

(define rust-windows-aarch64-gnullvm-0.48.5
  (crate-source "windows_aarch64_gnullvm" "0.48.5"
                "1n05v7qblg1ci3i567inc7xrkmywczxrs1z3lj3rkkxw18py6f1b"))

(define rust-windows-aarch64-gnullvm-0.52.6
  (crate-source "windows_aarch64_gnullvm" "0.52.6"
                "1lrcq38cr2arvmz19v32qaggvj8bh1640mdm9c2fr877h0hn591j"))

(define rust-windows-aarch64-gnullvm-0.53.1
  (crate-source "windows_aarch64_gnullvm" "0.53.1"
                "0lqvdm510mka9w26vmga7hbkmrw9glzc90l4gya5qbxlm1pl3n59"))

(define rust-windows-aarch64-msvc-0.42.2
  (crate-source "windows_aarch64_msvc" "0.42.2"
                "0hsdikjl5sa1fva5qskpwlxzpc5q9l909fpl1w6yy1hglrj8i3p0"))

(define rust-windows-aarch64-msvc-0.48.5
  (crate-source "windows_aarch64_msvc" "0.48.5"
                "1g5l4ry968p73g6bg6jgyvy9lb8fyhcs54067yzxpcpkf44k2dfw"))

(define rust-windows-aarch64-msvc-0.52.6
  (crate-source "windows_aarch64_msvc" "0.52.6"
                "0sfl0nysnz32yyfh773hpi49b1q700ah6y7sacmjbqjjn5xjmv09"))

(define rust-windows-aarch64-msvc-0.53.1
  (crate-source "windows_aarch64_msvc" "0.53.1"
                "01jh2adlwx043rji888b22whx4bm8alrk3khjpik5xn20kl85mxr"))

(define rust-windows-collections-0.3.2
  (crate-source "windows-collections" "0.3.2"
                "0436rjbkqn3j9m2v2lcmwwk0l3n2r57yvqb7fcy4m8d8y5ddkci3"))

(define rust-windows-core-0.58.0
  (crate-source "windows-core" "0.58.0"
                "16czypy425jzmiys4yb3pwsh7cm6grxn9kjp889iqnf2r17d99kb"))

(define rust-windows-core-0.62.2
  (crate-source "windows-core" "0.62.2"
                "1swxpv1a8qvn3bkxv8cn663238h2jccq35ff3nsj61jdsca3ms5q"))

(define rust-windows-future-0.3.2
  (crate-source "windows-future" "0.3.2"
                "1jq5qs2dwzf6rl60f8gr49z2mifxsrdh4y4yfdws467ya41gkmp1"))

(define rust-windows-i686-gnu-0.42.2
  (crate-source "windows_i686_gnu" "0.42.2"
                "0kx866dfrby88lqs9v1vgmrkk1z6af9lhaghh5maj7d4imyr47f6"))

(define rust-windows-i686-gnu-0.48.5
  (crate-source "windows_i686_gnu" "0.48.5"
                "0gklnglwd9ilqx7ac3cn8hbhkraqisd0n83jxzf9837nvvkiand7"))

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

(define rust-windows-i686-msvc-0.42.2
  (crate-source "windows_i686_msvc" "0.42.2"
                "0q0h9m2aq1pygc199pa5jgc952qhcnf0zn688454i7v4xjv41n24"))

(define rust-windows-i686-msvc-0.48.5
  (crate-source "windows_i686_msvc" "0.48.5"
                "01m4rik437dl9rdf0ndnm2syh10hizvq0dajdkv2fjqcywrw4mcg"))

(define rust-windows-i686-msvc-0.52.6
  (crate-source "windows_i686_msvc" "0.52.6"
                "0rkcqmp4zzmfvrrrx01260q3xkpzi6fzi2x2pgdcdry50ny4h294"))

(define rust-windows-i686-msvc-0.53.1
  (crate-source "windows_i686_msvc" "0.53.1"
                "1hi6scw3mn2pbdl30ji5i4y8vvspb9b66l98kkz350pig58wfyhy"))

(define rust-windows-implement-0.58.0
  (crate-source "windows-implement" "0.58.0"
                "16spr5z65z21qyv379rv2mb1s5q2i9ibd1p2pkn0dr9qr535pg9b"))

(define rust-windows-implement-0.60.2
  (crate-source "windows-implement" "0.60.2"
                "1psxhmklzcf3wjs4b8qb42qb6znvc142cb5pa74rsyxm1822wgh5"))

(define rust-windows-interface-0.58.0
  (crate-source "windows-interface" "0.58.0"
                "059mxmfvx3x88q74ms0qlxmj2pnidmr5mzn60hakn7f95m34qg05"))

(define rust-windows-interface-0.59.3
  (crate-source "windows-interface" "0.59.3"
                "0n73cwrn4247d0axrk7gjp08p34x1723483jxjxjdfkh4m56qc9z"))

(define rust-windows-link-0.2.1
  (crate-source "windows-link" "0.2.1"
                "1rag186yfr3xx7piv5rg8b6im2dwcf8zldiflvb22xbzwli5507h"))

(define rust-windows-numerics-0.3.1
  (crate-source "windows-numerics" "0.3.1"
                "09hgbg8pf89r4090yyhh9q29ppi7yyxkgmga9ascshy19a240bkf"))

(define rust-windows-registry-0.6.1
  (crate-source "windows-registry" "0.6.1"
                "082p7l615qk8a4g8g15yipc5lghga6cgfhm74wm7zknwzgvjnx82"))

(define rust-windows-result-0.2.0
  (crate-source "windows-result" "0.2.0"
                "03mf2z1xcy2slhhsm15z24p76qxgm2m74xdjp8bihyag47c4640x"))

(define rust-windows-result-0.4.1
  (crate-source "windows-result" "0.4.1"
                "1d9yhmrmmfqh56zlj751s5wfm9a2aa7az9rd7nn5027nxa4zm0bp"))

(define rust-windows-strings-0.1.0
  (crate-source "windows-strings" "0.1.0"
                "042dxvi3133f7dyi2pgcvknwkikk47k8bddwxbq5s0l6qhjv3nac"))

(define rust-windows-strings-0.5.1
  (crate-source "windows-strings" "0.5.1"
                "14bhng9jqv4fyl7lqjz3az7vzh8pw0w4am49fsqgcz67d67x0dvq"))

(define rust-windows-sys-0.45.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "windows-sys" "0.45.0"
                "1l36bcqm4g89pknfp8r9rl1w4bn017q6a8qlx8viv0xjxzjkna3m"))

(define rust-windows-sys-0.48.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "windows-sys" "0.48.0"
                "1aan23v5gs7gya1lc46hqn9mdh8yph3fhxmhxlw36pn6pqc28zb7"))

(define rust-windows-sys-0.52.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "windows-sys" "0.52.0"
                "0gd3v4ji88490zgb6b5mq5zgbvwv7zx1ibn8v3x83rwcdbryaar8"))

(define rust-windows-sys-0.59.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "windows-sys" "0.59.0"
                "0fw5672ziw8b3zpmnbp9pdv1famk74f1l9fcbc3zsrzdg56vqf0y"))

(define rust-windows-sys-0.60.2
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "windows-sys" "0.60.2"
                "1jrbc615ihqnhjhxplr2kw7rasrskv9wj3lr80hgfd42sbj01xgj"))

(define rust-windows-sys-0.61.2
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "windows-sys" "0.61.2"
                "1z7k3y9b6b5h52kid57lvmvm05362zv1v8w0gc7xyv5xphlp44xf"))

(define rust-windows-targets-0.42.2
  (crate-source "windows-targets" "0.42.2"
                "0wfhnib2fisxlx8c507dbmh97kgij4r6kcxdi0f9nk6l1k080lcf"))

(define rust-windows-targets-0.48.5
  (crate-source "windows-targets" "0.48.5"
                "034ljxqshifs1lan89xwpcy1hp0lhdh4b5n0d2z4fwjx2piacbws"))

(define rust-windows-targets-0.52.6
  (crate-source "windows-targets" "0.52.6"
                "0wwrx625nwlfp7k93r2rra568gad1mwd888h1jwnl0vfg5r4ywlv"))

(define rust-windows-targets-0.53.5
  (crate-source "windows-targets" "0.53.5"
                "1wv9j2gv3l6wj3gkw5j1kr6ymb5q6dfc42yvydjhv3mqa7szjia9"))

(define rust-windows-threading-0.2.1
  (crate-source "windows-threading" "0.2.1"
                "0dsvsy33vxs0153z4n39sqkzx382cjjkrd46rb3z3zfak5dvsj9r"))

(define rust-windows-x86-64-gnu-0.42.2
  (crate-source "windows_x86_64_gnu" "0.42.2"
                "0dnbf2xnp3xrvy8v9mgs3var4zq9v9yh9kv79035rdgyp2w15scd"))

(define rust-windows-x86-64-gnu-0.48.5
  (crate-source "windows_x86_64_gnu" "0.48.5"
                "13kiqqcvz2vnyxzydjh73hwgigsdr2z1xpzx313kxll34nyhmm2k"))

(define rust-windows-x86-64-gnu-0.52.6
  (crate-source "windows_x86_64_gnu" "0.52.6"
                "0y0sifqcb56a56mvn7xjgs8g43p33mfqkd8wj1yhrgxzma05qyhl"))

(define rust-windows-x86-64-gnu-0.53.1
  (crate-source "windows_x86_64_gnu" "0.53.1"
                "16d4yiysmfdlsrghndr97y57gh3kljkwhfdbcs05m1jasz6l4f4w"))

(define rust-windows-x86-64-gnullvm-0.42.2
  (crate-source "windows_x86_64_gnullvm" "0.42.2"
                "18wl9r8qbsl475j39zvawlidp1bsbinliwfymr43fibdld31pm16"))

(define rust-windows-x86-64-gnullvm-0.48.5
  (crate-source "windows_x86_64_gnullvm" "0.48.5"
                "1k24810wfbgz8k48c2yknqjmiigmql6kk3knmddkv8k8g1v54yqb"))

(define rust-windows-x86-64-gnullvm-0.52.6
  (crate-source "windows_x86_64_gnullvm" "0.52.6"
                "03gda7zjx1qh8k9nnlgb7m3w3s1xkysg55hkd1wjch8pqhyv5m94"))

(define rust-windows-x86-64-gnullvm-0.53.1
  (crate-source "windows_x86_64_gnullvm" "0.53.1"
                "1qbspgv4g3q0vygkg8rnql5c6z3caqv38japiynyivh75ng1gyhg"))

(define rust-windows-x86-64-msvc-0.42.2
  (crate-source "windows_x86_64_msvc" "0.42.2"
                "1w5r0q0yzx827d10dpjza2ww0j8iajqhmb54s735hhaj66imvv4s"))

(define rust-windows-x86-64-msvc-0.48.5
  (crate-source "windows_x86_64_msvc" "0.48.5"
                "0f4mdp895kkjh9zv8dxvn4pc10xr7839lf5pa9l0193i2pkgr57d"))

(define rust-windows-x86-64-msvc-0.52.6
  (crate-source "windows_x86_64_msvc" "0.52.6"
                "1v7rb5cibyzx8vak29pdrk8nx9hycsjs4w0jgms08qk49jl6v7sq"))

(define rust-windows-x86-64-msvc-0.53.1
  (crate-source "windows_x86_64_msvc" "0.53.1"
                "0l6npq76vlq4ksn4bwsncpr8508mk0gmznm6wnhjg95d19gzzfyn"))

(define rust-winnow-1.0.3
  (crate-source "winnow" "1.0.3"
                "1wajycd3krn6h699vydjv7hm0ll5l31p899qzpk59y2is74y34h5"))

(define rust-wit-bindgen-0.51.0
  (crate-source "wit-bindgen" "0.51.0"
                "19fazgch8sq5cvjv3ynhhfh5d5x08jq2pkw8jfb05vbcyqcr496p"))

(define rust-wit-bindgen-0.57.1
  (crate-source "wit-bindgen" "0.57.1"
                "0vjk2jb593ri9k1aq4iqs2si9mrw5q46wxnn78im7hm7hx799gqy"))

(define rust-wit-bindgen-core-0.51.0
  (crate-source "wit-bindgen-core" "0.51.0"
                "1p2jszqsqbx8k7y8nwvxg65wqzxjm048ba5phaq8r9iy9ildwqga"))

(define rust-wit-bindgen-rust-0.51.0
  (crate-source "wit-bindgen-rust" "0.51.0"
                "08bzn5fsvkb9x9wyvyx98qglknj2075xk1n7c5jxv15jykh6didp"))

(define rust-wit-bindgen-rust-macro-0.51.0
  (crate-source "wit-bindgen-rust-macro" "0.51.0"
                "0ymizapzv2id89igxsz2n587y2hlfypf6n8kyp68x976fzyrn3qc"))

(define rust-wit-component-0.244.0
  (crate-source "wit-component" "0.244.0"
                "1clwxgsgdns3zj2fqnrjcp8y5gazwfa1k0sy5cbk0fsmx4hflrlx"))

(define rust-wit-parser-0.244.0
  (crate-source "wit-parser" "0.244.0"
                "0dm7avvdxryxd5b02l0g5h6933z1cw5z0d4wynvq2cywq55srj7c"))

(define rust-writeable-0.6.3
  (crate-source "writeable" "0.6.3"
                "1i54d13h9bpap2hf13xcry1s4lxh7ap3923g8f3c0grd7c9fbyhz"))

(define rust-wyz-0.5.1
  (crate-source "wyz" "0.5.1"
                "1vdrfy7i2bznnzjdl9vvrzljvs4s3qm8bnlgqwln6a941gy61wq5"))

(define rust-y4m-0.8.0
  (crate-source "y4m" "0.8.0"
                "0j24y2zf60lpxwd7kyg737hqfyqx16y32s0fjyi6fax6w4hlnnks"))

(define rust-yoke-0.8.3
  (crate-source "yoke" "0.8.3"
                "1xgyj6c2lxj2bp891ynmhws87c6z7yyv2li1v0ss9di40hxf57vh"))

(define rust-yoke-derive-0.8.2
  (crate-source "yoke-derive" "0.8.2"
                "13l5y5sz4lqm7rmyakjbh6vwgikxiql51xfff9hq2j485hk4r16y"))

(define rust-zbus-5.16.0
  (crate-source "zbus" "5.16.0"
                "11a28qwmwgn9k1pzdp9lik0gb2mjlx4dyarc7fgllzm70b985rpf"))

(define rust-zbus-macros-5.16.0
  (crate-source "zbus_macros" "5.16.0"
                "1mnih15n4cf4irn4sbjkwh0wvs1659v58xvmn52kf40sm12vvwdd"))

(define rust-zbus-names-4.3.2
  (crate-source "zbus_names" "4.3.2"
                "0bg5c1bq4xdq9xqdkgvxwvl9pa6h61nh2hh1fn8sqkl91gjz6x3h"))

(define rust-zerocopy-0.8.52
  (crate-source "zerocopy" "0.8.52"
                "0gv563swc1yn3k8w3wjj07a8q293rkx99nfp3a25vzzmbycj446f"))

(define rust-zerocopy-derive-0.8.52
  (crate-source "zerocopy-derive" "0.8.52"
                "0c3rhsh4sd9kdym4z55zprybjkydy9y2gvw75d72aapcfa5z7rqs"))

(define rust-zerofrom-0.1.8
  (crate-source "zerofrom" "0.1.8"
                "0wjjdj7gdmd0iq91gzkxl7dlv0nhkk80l4bmdpzh3a1yh48mmh0f"))

(define rust-zerofrom-derive-0.1.7
  (crate-source "zerofrom-derive" "0.1.7"
                "18c4wsnznhdxx6m80piil1lbyszdiwsshgjrybqcm4b6qic22lqi"))

(define rust-zeroize-1.9.0
  (crate-source "zeroize" "1.9.0"
                "0kpnij2v1ig6g2mhc0bnci0lrdfdhiq40afbc0fahajqc9jiag71"))

(define rust-zerotrie-0.2.4
  (crate-source "zerotrie" "0.2.4"
                "1gr0pkcn3qsr6in6iixqyp0vbzwf2j1jzyvh7yl2yydh3p9m548g"))

(define rust-zerovec-0.11.6
  (crate-source "zerovec" "0.11.6"
                "0fdjsy6b31q9i0d73sl7xjd12xadbwi45lkpfgqnmasrqg5i3ych"))

(define rust-zerovec-derive-0.11.3
  (crate-source "zerovec-derive" "0.11.3"
                "0m85qj92mmfvhjra6ziqky5b1p4kcmp5069k7kfadp5hr8jw8pb2"))

(define rust-zmij-1.0.21
  (crate-source "zmij" "1.0.21"
                "1amb5i6gz7yjb0dnmz5y669674pqmwbj44p4yfxfv2ncgvk8x15q"))

(define rust-zune-core-0.5.1
  (crate-source "zune-core" "0.5.1"
                "1ya0zdqxlr5v57791j7bvm408ri2cfx81a4v6z85f560yw3hi2nb"))

(define rust-zune-inflate-0.2.54
  (crate-source "zune-inflate" "0.2.54"
                "00kg24jh3zqa3i6rg6yksnb71bch9yi1casqydl00s7nw8pk7avk"))

(define rust-zune-jpeg-0.5.15
  (crate-source "zune-jpeg" "0.5.15"
                "15kjpn6pywxlwb8w5irfd68x31wi3mb4y1da8bqh7havh5drvg17"))

(define rust-zvariant-5.12.0
  (crate-source "zvariant" "5.12.0"
                "1q3vwaiv2h65wi335ig24ylp0q6fnka37j13fmxdfq1kwsys14m1"))

(define rust-zvariant-derive-5.12.0
  (crate-source "zvariant_derive" "5.12.0"
                "0dw7cgacz7cr5s0jwrpqwf4xml0rdk5pqzz99c3i3i81kkg6rg4h"))

(define rust-zvariant-utils-3.4.0
  (crate-source "zvariant_utils" "3.4.0"
                "1mn4fa0rvibzxzj32s07xspa82cr2gl6i34xamz58xgsbj8kb18y"))

(define ssss-separator 'end-of-crates)


;;;
;;; Cargo inputs.
;;;

(define-cargo-inputs lookup-cargo-inputs
                     (qobine =>
                             (list rust-adler2-2.0.1
                              rust-aes-0.9.2
                              rust-aho-corasick-1.1.4
                              rust-aligned-0.4.3
                              rust-aligned-vec-0.6.4
                              rust-allocator-api2-0.2.21
                              rust-alsa-0.11.0
                              rust-alsa-sys-0.4.0
                              rust-android-system-properties-0.1.5
                              rust-anstream-1.0.0
                              rust-anstyle-1.0.14
                              rust-anstyle-parse-1.0.0
                              rust-anstyle-query-1.1.5
                              rust-anstyle-wincon-3.0.11
                              rust-anyhow-1.0.102
                              rust-apple-cf-0.7.1
                              rust-approx-0.5.1
                              rust-arbitrary-1.4.2
                              rust-arg-enum-proc-macro-0.3.4
                              rust-arrayvec-0.7.6
                              rust-as-slice-0.2.1
                              rust-async-broadcast-0.7.2
                              rust-async-channel-2.5.0
                              rust-async-executor-1.14.0
                              rust-async-io-2.6.0
                              rust-async-lock-3.4.2
                              rust-async-process-2.5.0
                              rust-async-recursion-1.1.1
                              rust-async-signal-0.2.14
                              rust-async-stream-0.3.6
                              rust-async-stream-impl-0.3.6
                              rust-async-task-4.7.1
                              rust-async-trait-0.1.89
                              rust-atoi-2.0.0
                              rust-atomic-0.6.1
                              rust-atomic-waker-1.1.2
                              rust-autocfg-1.5.1
                              rust-av-scenechange-0.14.1
                              rust-av1-grain-0.2.5
                              rust-avif-serialize-0.8.9
                              rust-aws-lc-rs-1.17.0
                              rust-aws-lc-sys-0.41.0
                              rust-axum-0.8.9
                              rust-axum-core-0.5.6
                              rust-axum-extra-0.12.6
                              rust-base64-0.22.1
                              rust-base64-0.23.1
                              rust-base64-simd-0.8.0
                              rust-base64ct-1.8.3
                              rust-bit-set-0.5.3
                              rust-bit-vec-0.6.3
                              rust-bit-field-0.10.3
                              rust-bitflags-1.3.2
                              rust-bitflags-2.13.0
                              rust-bitstream-io-4.10.0
                              rust-bitvec-1.0.1
                              rust-block-buffer-0.10.4
                              rust-block-buffer-0.12.1
                              rust-block-padding-0.4.2
                              rust-block2-0.6.2
                              rust-blocking-1.6.2
                              rust-bstr-1.12.1
                              rust-built-0.8.1
                              rust-bumpalo-3.20.3
                              rust-by-address-1.2.1
                              rust-bytemuck-1.25.0
                              rust-bytemuck-derive-1.10.2
                              rust-byteorder-1.5.0
                              rust-byteorder-lite-0.1.0
                              rust-bytes-1.12.1
                              rust-cairo-rs-0.22.0
                              rust-cairo-sys-rs-0.22.0
                              rust-castaway-0.2.4
                              rust-cbc-0.2.1
                              rust-cc-1.2.64
                              rust-cesu8-1.1.0
                              rust-cfg-expr-0.20.8
                              rust-cfg-if-1.0.4
                              rust-cfg-aliases-0.2.1
                              rust-chacha20-0.10.0
                              rust-chrono-0.4.45
                              rust-cipher-0.5.2
                              rust-clap-4.6.6
                              rust-clap-builder-4.6.6
                              rust-clap-derive-4.6.4
                              rust-clap-lex-1.1.0
                              rust-cmake-0.1.58
                              rust-cmov-0.5.4
                              rust-color-quant-1.1.0
                              rust-colorchoice-1.0.5
                              rust-combine-4.6.7
                              rust-compact-str-0.9.1
                              rust-concurrent-queue-2.5.0
                              rust-const-oid-0.9.6
                              rust-const-oid-0.10.2
                              rust-convert-case-0.10.0
                              rust-cookie-0.18.1
                              rust-cookie-store-0.22.1
                              rust-core-foundation-0.9.4
                              rust-core-foundation-0.10.1
                              rust-core-foundation-sys-0.8.7
                              rust-coreaudio-rs-0.14.2
                              rust-cpal-0.17.3
                              rust-cpubits-0.1.1
                              rust-cpufeatures-0.2.17
                              rust-cpufeatures-0.3.0
                              rust-crc-3.4.0
                              rust-crc-catalog-2.5.0
                              rust-crc32fast-1.5.0
                              rust-critical-section-1.2.0
                              rust-crossbeam-channel-0.5.15
                              rust-crossbeam-deque-0.8.6
                              rust-crossbeam-epoch-0.9.18
                              rust-crossbeam-queue-0.3.12
                              rust-crossbeam-utils-0.8.21
                              rust-crossterm-0.29.0
                              rust-crossterm-winapi-0.9.1
                              rust-crunchy-0.2.4
                              rust-crypto-common-0.1.7
                              rust-crypto-common-0.2.2
                              rust-csscolorparser-0.6.2
                              rust-ctr-0.10.1
                              rust-ctutils-0.4.2
                              rust-darling-0.20.11
                              rust-darling-0.23.0
                              rust-darling-core-0.20.11
                              rust-darling-core-0.23.0
                              rust-darling-macro-0.20.11
                              rust-darling-macro-0.23.0
                              rust-dasp-sample-0.11.0
                              rust-data-encoding-2.11.0
                              rust-deltae-0.3.2
                              rust-der-0.7.10
                              rust-deranged-0.5.8
                              rust-derive-builder-0.20.2
                              rust-derive-builder-core-0.20.2
                              rust-derive-builder-macro-0.20.2
                              rust-derive-more-2.1.1
                              rust-derive-more-impl-2.1.1
                              rust-digest-0.10.7
                              rust-digest-0.11.3
                              rust-dirs-6.0.0
                              rust-dirs-sys-0.5.0
                              rust-dispatch2-0.3.1
                              rust-displaydoc-0.2.6
                              rust-document-features-0.2.12
                              rust-doom-fish-utils-0.2.1
                              rust-doom-fish-utils-0.3.3
                              rust-dotenvy-0.15.7
                              rust-dunce-1.0.5
                              rust-ecow-0.2.6
                              rust-educe-0.7.4
                              rust-either-1.16.0
                              rust-encoding-rs-0.8.35
                              rust-endi-1.1.1
                              rust-enum-ordinalize-4.4.1
                              rust-enum-ordinalize-derive-4.4.1
                              rust-enumflags2-0.7.12
                              rust-enumflags2-derive-0.7.12
                              rust-equator-0.4.2
                              rust-equator-macro-0.4.2
                              rust-equivalent-1.0.2
                              rust-errno-0.3.14
                              rust-etcetera-0.8.0
                              rust-euclid-0.22.14
                              rust-event-listener-5.4.1
                              rust-event-listener-strategy-0.5.4
                              rust-eventsource-stream-0.2.3
                              rust-exr-1.74.0
                              rust-extended-0.1.0
                              rust-fancy-regex-0.11.0
                              rust-fast-srgb8-1.0.0
                              rust-fastrand-2.4.1
                              rust-fax-0.2.7
                              rust-fdeflate-0.3.7
                              rust-field-offset-0.3.6
                              rust-filedescriptor-0.8.3
                              rust-filesentry-0.2.2
                              rust-find-msvc-tools-0.1.9
                              rust-finl-unicode-1.4.0
                              rust-fixedbitset-0.4.2
                              rust-flate2-1.1.9
                              rust-flume-0.11.1
                              rust-fnv-1.0.7
                              rust-foldhash-0.1.5
                              rust-foldhash-0.2.0
                              rust-font8x8-0.3.1
                              rust-foreign-types-0.3.2
                              rust-foreign-types-shared-0.1.1
                              rust-form-urlencoded-1.2.2
                              rust-fs-extra-1.3.0
                              rust-funty-2.0.0
                              rust-futures-0.3.32
                              rust-futures-channel-0.3.32
                              rust-futures-core-0.3.32
                              rust-futures-executor-0.3.32
                              rust-futures-intrusive-0.5.0
                              rust-futures-io-0.3.32
                              rust-futures-lite-2.6.1
                              rust-futures-macro-0.3.32
                              rust-futures-sink-0.3.32
                              rust-futures-task-0.3.32
                              rust-futures-util-0.3.32
                              rust-gdk-pixbuf-0.22.0
                              rust-gdk-pixbuf-sys-0.22.0
                              rust-gdk4-0.11.2
                              rust-gdk4-sys-0.11.2
                              rust-generic-array-0.14.7
                              rust-getrandom-0.2.17
                              rust-getrandom-0.3.4
                              rust-getrandom-0.4.2
                              rust-gif-0.14.2
                              rust-gio-0.22.6
                              rust-gio-sys-0.22.0
                              rust-glib-0.22.8
                              rust-glib-macros-0.22.6
                              rust-glib-sys-0.22.6
                              rust-glob-0.3.3
                              rust-globset-0.4.18
                              rust-gobject-sys-0.22.6
                              rust-graphene-rs-0.22.0
                              rust-graphene-sys-0.22.0
                              rust-gsk4-0.11.1
                              rust-gsk4-sys-0.11.1
                              rust-gtk4-0.11.4
                              rust-gtk4-macros-0.11.0
                              rust-gtk4-sys-0.11.3
                              rust-h2-0.4.14
                              rust-half-2.7.1
                              rust-hashbrown-0.15.5
                              rust-hashbrown-0.16.1
                              rust-hashbrown-0.17.1
                              rust-hashlink-0.10.0
                              rust-heck-0.5.0
                              rust-hermit-abi-0.5.2
                              rust-hex-0.4.3
                              rust-hkdf-0.12.4
                              rust-hkdf-0.13.0
                              rust-hmac-0.12.1
                              rust-hmac-0.13.0
                              rust-home-0.5.12
                              rust-hostname-0.4.2
                              rust-html-escape-0.2.15
                              rust-http-1.4.2
                              rust-http-body-1.0.1
                              rust-http-body-util-0.1.3
                              rust-httparse-1.10.1
                              rust-httpdate-1.0.3
                              rust-hybrid-array-0.4.12
                              rust-hyper-1.10.1
                              rust-hyper-rustls-0.27.9
                              rust-hyper-tls-0.6.0
                              rust-hyper-util-0.1.20
                              rust-iana-time-zone-0.1.65
                              rust-iana-time-zone-haiku-0.1.2
                              rust-icu-collections-2.2.0
                              rust-icu-locale-core-2.2.0
                              rust-icu-normalizer-2.2.0
                              rust-icu-normalizer-data-2.2.0
                              rust-icu-properties-2.2.0
                              rust-icu-properties-data-2.2.0
                              rust-icu-provider-2.2.0
                              rust-icy-sixel-0.5.0
                              rust-id-arena-2.3.0
                              rust-ident-case-1.0.1
                              rust-idna-1.1.0
                              rust-idna-adapter-1.2.2
                              rust-if-addrs-0.14.0
                              rust-ignore-0.4.26
                              rust-image-0.25.10
                              rust-image-webp-0.2.4
                              rust-imgref-1.12.2
                              rust-indexmap-2.14.0
                              rust-indoc-2.0.7
                              rust-inout-0.2.2
                              rust-instability-0.3.12
                              rust-interpolate-name-0.2.4
                              rust-ipnet-2.12.0
                              rust-is-docker-0.2.0
                              rust-is-wsl-0.4.0
                              rust-is-terminal-polyfill-1.70.2
                              rust-itertools-0.14.0
                              rust-itertools-0.15.0
                              rust-itoa-1.0.18
                              rust-javascriptcore6-0.6.0
                              rust-javascriptcore6-sys-0.6.0
                              rust-jni-0.21.1
                              rust-jni-0.22.4
                              rust-jni-macros-0.22.4
                              rust-jni-sys-0.3.1
                              rust-jni-sys-0.4.1
                              rust-jni-sys-macros-0.4.1
                              rust-jobserver-0.1.34
                              rust-js-sys-0.3.102
                              rust-kasuari-0.4.12
                              rust-keepawake-0.6.0
                              rust-lab-0.11.0
                              rust-lazy-static-1.5.0
                              rust-leb128fmt-0.1.0
                              rust-lebe-0.5.3
                              rust-libadwaita-0.9.2
                              rust-libadwaita-sys-0.9.2
                              rust-libc-0.2.189
                              rust-libfuzzer-sys-0.4.13
                              rust-libm-0.2.16
                              rust-libredox-0.1.17
                              rust-libsqlite3-sys-0.30.1
                              rust-line-clipping-0.3.7
                              rust-linux-raw-sys-0.4.15
                              rust-linux-raw-sys-0.12.1
                              rust-litemap-0.8.2
                              rust-litrs-1.0.0
                              rust-lock-api-0.4.14
                              rust-log-0.4.32
                              rust-loop9-0.1.5
                              rust-lru-0.18.0
                              rust-lru-slab-0.1.2
                              rust-mac-address-1.1.8
                              rust-mach2-0.5.0
                              rust-matchers-0.2.0
                              rust-matchit-0.8.4
                              rust-maybe-rayon-0.1.1
                              rust-md-5-0.10.6
                              rust-md5-0.8.1
                              rust-mdns-sd-0.17.2
                              rust-mediaplayer-0.4.3
                              rust-mediatype-0.23.0
                              rust-memchr-2.8.2
                              rust-memmem-0.1.1
                              rust-memoffset-0.9.1
                              rust-mime-0.3.17
                              rust-mime-guess-2.0.5
                              rust-minimal-lexical-0.2.1
                              rust-miniz-oxide-0.8.9
                              rust-mio-1.2.1
                              rust-moka-0.12.15
                              rust-moxcms-0.8.1
                              rust-mpris-server-0.10.0
                              rust-native-tls-0.2.18
                              rust-ndk-0.9.0
                              rust-ndk-context-0.1.1
                              rust-ndk-sys-0.6.0+11769913
                              rust-new-debug-unreachable-1.0.6
                              rust-nix-0.29.0
                              rust-no-std-io2-0.9.4
                              rust-nom-7.1.3
                              rust-nom-8.0.0
                              rust-noop-proc-macro-0.3.0
                              rust-nu-ansi-term-0.50.3
                              rust-num-bigint-0.4.6
                              rust-num-bigint-dig-0.8.6
                              rust-num-conv-0.2.2
                              rust-num-derive-0.4.2
                              rust-num-integer-0.1.46
                              rust-num-iter-0.1.45
                              rust-num-rational-0.4.2
                              rust-num-traits-0.2.19
                              rust-num-enum-0.7.6
                              rust-num-enum-derive-0.7.6
                              rust-num-threads-0.1.7
                              rust-objc2-0.6.4
                              rust-objc2-audio-toolbox-0.3.2
                              rust-objc2-avf-audio-0.3.2
                              rust-objc2-core-audio-0.3.2
                              rust-objc2-core-audio-types-0.3.2
                              rust-objc2-core-foundation-0.3.2
                              rust-objc2-encode-4.1.0
                              rust-objc2-foundation-0.3.2
                              rust-objc2-io-kit-0.3.2
                              rust-once-cell-1.21.4
                              rust-once-cell-polyfill-1.70.2
                              rust-open-5.4.0
                              rust-openssl-0.10.81
                              rust-openssl-macros-0.1.1
                              rust-openssl-probe-0.2.1
                              rust-openssl-sys-0.9.117
                              rust-option-ext-0.2.0
                              rust-ordered-float-4.6.0
                              rust-ordered-float-5.3.0
                              rust-ordered-stream-0.2.0
                              rust-outref-0.5.2
                              rust-palette-0.7.6
                              rust-palette-derive-0.7.6
                              rust-pango-0.22.6
                              rust-pango-sys-0.22.0
                              rust-papaya-0.2.4
                              rust-parking-2.2.1
                              rust-parking-lot-0.12.5
                              rust-parking-lot-core-0.9.12
                              rust-paste-1.0.15
                              rust-pastey-0.1.1
                              rust-pathdiff-0.2.3
                              rust-pem-rfc7468-0.7.0
                              rust-percent-encoding-2.3.2
                              rust-pest-2.8.6
                              rust-pest-derive-2.8.6
                              rust-pest-generator-2.8.6
                              rust-pest-meta-2.8.6
                              rust-phf-0.11.3
                              rust-phf-codegen-0.11.3
                              rust-phf-generator-0.11.3
                              rust-phf-macros-0.11.3
                              rust-phf-shared-0.11.3
                              rust-pin-project-lite-0.2.17
                              rust-piper-0.2.5
                              rust-pkcs1-0.7.5
                              rust-pkcs8-0.10.2
                              rust-pkg-config-0.3.33
                              rust-plain-0.2.3
                              rust-png-0.18.1
                              rust-polling-3.11.0
                              rust-portable-atomic-1.13.1
                              rust-potential-utf-0.1.5
                              rust-powerfmt-0.2.0
                              rust-ppv-lite86-0.2.21
                              rust-prettyplease-0.2.37
                              rust-proc-macro-crate-3.5.0
                              rust-proc-macro2-1.0.106
                              rust-profiling-1.0.18
                              rust-profiling-procmacros-1.0.18
                              rust-prost-0.13.5
                              rust-prost-derive-0.13.5
                              rust-psl-types-2.0.11
                              rust-publicsuffix-2.3.0
                              rust-pxfm-0.1.29
                              rust-qoi-0.4.1
                              rust-qonductor-0.1.0-alpha.5
                              rust-quantette-0.5.1
                              rust-quick-error-2.0.1
                              rust-quinn-0.11.9
                              rust-quinn-proto-0.11.14
                              rust-quinn-udp-0.5.14
                              rust-quote-1.0.45
                              rust-r-efi-5.3.0
                              rust-r-efi-6.0.0
                              rust-radium-0.7.0
                              rust-rand-0.8.6
                              rust-rand-0.9.4
                              rust-rand-0.10.2
                              rust-rand-chacha-0.3.1
                              rust-rand-chacha-0.9.0
                              rust-rand-core-0.6.4
                              rust-rand-core-0.9.5
                              rust-rand-core-0.10.1
                              rust-rand-distr-0.6.0
                              rust-rand-xoshiro-0.7.0
                              rust-rangemap-1.7.1
                              rust-ratatui-0.30.2
                              rust-ratatui-core-0.1.2
                              rust-ratatui-crossterm-0.1.2
                              rust-ratatui-image-11.0.6
                              rust-ratatui-macros-0.7.2
                              rust-ratatui-termina-0.1.0
                              rust-ratatui-termwiz-0.1.2
                              rust-ratatui-widgets-0.3.2
                              rust-rav1e-0.8.1
                              rust-ravif-0.13.0
                              rust-rayon-1.12.0
                              rust-rayon-core-1.13.0
                              rust-redox-syscall-0.5.18
                              rust-redox-syscall-0.8.1
                              rust-redox-users-0.5.2
                              rust-ref-cast-1.0.25
                              rust-ref-cast-impl-1.0.25
                              rust-regex-1.13.0
                              rust-regex-automata-0.4.14
                              rust-regex-syntax-0.8.11
                              rust-reqwest-0.12.28
                              rust-reqwest-0.13.4
                              rust-rgb-0.8.53
                              rust-ring-0.17.14
                              rust-rodio-0.22.2
                              rust-rppal-0.22.1
                              rust-rsa-0.9.10
                              rust-rtrb-0.3.4
                              rust-rust-embed-8.12.0
                              rust-rust-embed-impl-8.12.0
                              rust-rust-embed-utils-8.12.0
                              rust-rustc-hash-2.1.2
                              rust-rustc-version-0.4.1
                              rust-rustix-0.38.44
                              rust-rustix-1.1.4
                              rust-rustls-0.23.40
                              rust-rustls-native-certs-0.8.4
                              rust-rustls-pki-types-1.14.1
                              rust-rustls-platform-verifier-0.7.0
                              rust-rustls-platform-verifier-android-0.1.1
                              rust-rustls-webpki-0.103.13
                              rust-rustversion-1.0.22
                              rust-ryu-1.0.23
                              rust-safe-arch-0.9.3
                              rust-same-file-1.0.6
                              rust-schannel-0.1.29
                              rust-scopeguard-1.2.0
                              rust-security-framework-3.7.0
                              rust-security-framework-sys-2.17.0
                              rust-seize-0.5.1
                              rust-self-cell-1.2.2
                              rust-semver-1.0.28
                              rust-serde-1.0.228
                              rust-serde-core-1.0.228
                              rust-serde-derive-1.0.228
                              rust-serde-html-form-0.2.8
                              rust-serde-json-1.0.151
                              rust-serde-path-to-error-0.1.20
                              rust-serde-repr-0.1.20
                              rust-serde-spanned-1.1.1
                              rust-serde-urlencoded-0.7.1
                              rust-sha1-0.10.6
                              rust-sha2-0.10.9
                              rust-sha2-0.11.0
                              rust-sharded-slab-0.1.7
                              rust-shlex-2.0.1
                              rust-signal-hook-0.3.18
                              rust-signal-hook-mio-0.2.5
                              rust-signal-hook-registry-1.4.8
                              rust-signature-2.2.0
                              rust-simd-adler32-0.3.9
                              rust-simd-cesu8-1.1.1
                              rust-simd-helpers-0.1.0
                              rust-simdutf8-0.1.5
                              rust-siphasher-1.0.3
                              rust-skabelon-0.2.3
                              rust-slab-0.4.12
                              rust-smallvec-1.15.2
                              rust-snafu-0.9.2
                              rust-snafu-derive-0.9.2
                              rust-socket-pktinfo-0.3.2
                              rust-socket2-0.6.4
                              rust-soup3-0.9.0
                              rust-soup3-sys-0.9.0
                              rust-spin-0.9.8
                              rust-spki-0.7.3
                              rust-sqlx-0.8.6
                              rust-sqlx-core-0.8.6
                              rust-sqlx-macros-0.8.6
                              rust-sqlx-macros-core-0.8.6
                              rust-sqlx-mysql-0.8.6
                              rust-sqlx-postgres-0.8.6
                              rust-sqlx-sqlite-0.8.6
                              rust-stable-deref-trait-1.2.1
                              rust-static-assertions-1.1.0
                              rust-stream-download-0.24.3
                              rust-stringprep-0.1.5
                              rust-strsim-0.11.1
                              rust-strum-0.28.0
                              rust-strum-macros-0.28.0
                              rust-subtle-2.6.1
                              rust-symphonia-0.5.5
                              rust-symphonia-bundle-flac-0.5.5
                              rust-symphonia-bundle-mp3-0.5.5
                              rust-symphonia-codec-aac-0.5.5
                              rust-symphonia-codec-pcm-0.5.5
                              rust-symphonia-codec-vorbis-0.5.5
                              rust-symphonia-core-0.5.5
                              rust-symphonia-format-isomp4-0.5.5
                              rust-symphonia-format-ogg-0.5.5
                              rust-symphonia-format-riff-0.5.5
                              rust-symphonia-metadata-0.5.5
                              rust-symphonia-utils-xiph-0.5.5
                              rust-syn-1.0.109
                              rust-syn-2.0.117
                              rust-syn-3.0.3
                              rust-sync-wrapper-1.0.2
                              rust-synstructure-0.13.2
                              rust-system-configuration-0.7.0
                              rust-system-configuration-sys-0.6.0
                              rust-system-deps-7.0.8
                              rust-tagptr-0.2.0
                              rust-tap-1.0.1
                              rust-target-lexicon-0.13.5
                              rust-tempfile-3.27.0
                              rust-termina-0.3.3
                              rust-terminfo-0.9.0
                              rust-termios-0.3.3
                              rust-termwiz-0.23.3
                              rust-thiserror-1.0.69
                              rust-thiserror-2.0.18
                              rust-thiserror-impl-1.0.69
                              rust-thiserror-impl-2.0.18
                              rust-thread-local-1.1.9
                              rust-tiff-0.11.3
                              rust-time-0.3.55
                              rust-time-core-0.1.9
                              rust-time-macros-0.2.32
                              rust-tinystr-0.8.3
                              rust-tinyvec-1.11.0
                              rust-tinyvec-macros-0.1.1
                              rust-tokio-1.53.1
                              rust-tokio-macros-2.7.0
                              rust-tokio-native-tls-0.3.1
                              rust-tokio-rustls-0.26.4
                              rust-tokio-stream-0.1.19
                              rust-tokio-tungstenite-0.24.0
                              rust-tokio-util-0.7.18
                              rust-tokio-schedule-0.3.2
                              rust-toml-1.1.2+spec-1.1.0
                              rust-toml-datetime-1.1.1+spec-1.1.0
                              rust-toml-edit-0.25.12+spec-1.1.0
                              rust-toml-parser-1.1.2+spec-1.1.0
                              rust-toml-writer-1.1.1+spec-1.1.0
                              rust-tower-0.5.3
                              rust-tower-http-0.6.11
                              rust-tower-http-0.7.0
                              rust-tower-layer-0.3.3
                              rust-tower-service-0.3.3
                              rust-tracing-0.1.44
                              rust-tracing-attributes-0.1.31
                              rust-tracing-core-0.1.36
                              rust-tracing-log-0.2.0
                              rust-tracing-subscriber-0.3.23
                              rust-trait-variant-0.1.2
                              rust-try-lock-0.2.5
                              rust-tui-big-text-0.8.8
                              rust-tui-input-0.15.3
                              rust-tungstenite-0.24.0
                              rust-typenum-1.20.1
                              rust-ucd-trie-0.1.7
                              rust-uds-windows-1.2.1
                              rust-unicase-2.9.0
                              rust-unicode-bidi-0.3.18
                              rust-unicode-ident-1.0.24
                              rust-unicode-normalization-0.1.25
                              rust-unicode-properties-0.1.4
                              rust-unicode-segmentation-1.13.3
                              rust-unicode-truncate-2.0.1
                              rust-unicode-width-0.2.2
                              rust-unicode-xid-0.2.6
                              rust-untrusted-0.9.0
                              rust-url-2.5.8
                              rust-utf-8-0.7.6
                              rust-utf8-iter-1.0.4
                              rust-utf8parse-0.2.2
                              rust-uuid-1.23.3
                              rust-v-frame-0.3.9
                              rust-valuable-0.1.1
                              rust-vcpkg-0.2.15
                              rust-version-compare-0.2.1
                              rust-version-check-0.9.5
                              rust-vsimd-0.8.0
                              rust-vtparse-0.6.2
                              rust-walkdir-2.5.0
                              rust-want-0.3.1
                              rust-wasi-0.11.1+wasi-snapshot-preview1
                              rust-wasip2-1.0.4+wasi-0.2.12
                              rust-wasip3-0.4.0+wasi-0.3.0-rc-2026-01-06
                              rust-wasite-0.1.0
                              rust-wasm-bindgen-0.2.125
                              rust-wasm-bindgen-futures-0.4.75
                              rust-wasm-bindgen-macro-0.2.125
                              rust-wasm-bindgen-macro-support-0.2.125
                              rust-wasm-bindgen-shared-0.2.125
                              rust-wasm-encoder-0.244.0
                              rust-wasm-metadata-0.244.0
                              rust-wasm-streams-0.4.2
                              rust-wasm-streams-0.5.0
                              rust-wasmparser-0.244.0
                              rust-web-sys-0.3.102
                              rust-web-time-1.1.0
                              rust-webkit6-0.6.1
                              rust-webkit6-sys-0.6.0
                              rust-webpki-root-certs-1.0.7
                              rust-webpki-roots-0.26.11
                              rust-webpki-roots-1.0.7
                              rust-weezl-0.1.12
                              rust-wezterm-bidi-0.2.3
                              rust-wezterm-blob-leases-0.1.1
                              rust-wezterm-color-types-0.3.0
                              rust-wezterm-dynamic-0.2.1
                              rust-wezterm-dynamic-derive-0.1.1
                              rust-wezterm-input-types-0.1.0
                              rust-whoami-1.6.1
                              rust-wide-0.8.3
                              rust-winapi-0.3.9
                              rust-winapi-i686-pc-windows-gnu-0.4.0
                              rust-winapi-util-0.1.11
                              rust-winapi-x86-64-pc-windows-gnu-0.4.0
                              rust-windows-0.58.0
                              rust-windows-0.62.2
                              rust-windows-collections-0.3.2
                              rust-windows-core-0.58.0
                              rust-windows-core-0.62.2
                              rust-windows-future-0.3.2
                              rust-windows-implement-0.58.0
                              rust-windows-implement-0.60.2
                              rust-windows-interface-0.58.0
                              rust-windows-interface-0.59.3
                              rust-windows-link-0.2.1
                              rust-windows-numerics-0.3.1
                              rust-windows-registry-0.6.1
                              rust-windows-result-0.2.0
                              rust-windows-result-0.4.1
                              rust-windows-strings-0.1.0
                              rust-windows-strings-0.5.1
                              rust-windows-sys-0.45.0
                              rust-windows-sys-0.48.0
                              rust-windows-sys-0.52.0
                              rust-windows-sys-0.59.0
                              rust-windows-sys-0.60.2
                              rust-windows-sys-0.61.2
                              rust-windows-targets-0.42.2
                              rust-windows-targets-0.48.5
                              rust-windows-targets-0.52.6
                              rust-windows-targets-0.53.5
                              rust-windows-threading-0.2.1
                              rust-windows-aarch64-gnullvm-0.42.2
                              rust-windows-aarch64-gnullvm-0.48.5
                              rust-windows-aarch64-gnullvm-0.52.6
                              rust-windows-aarch64-gnullvm-0.53.1
                              rust-windows-aarch64-msvc-0.42.2
                              rust-windows-aarch64-msvc-0.48.5
                              rust-windows-aarch64-msvc-0.52.6
                              rust-windows-aarch64-msvc-0.53.1
                              rust-windows-i686-gnu-0.42.2
                              rust-windows-i686-gnu-0.48.5
                              rust-windows-i686-gnu-0.52.6
                              rust-windows-i686-gnu-0.53.1
                              rust-windows-i686-gnullvm-0.52.6
                              rust-windows-i686-gnullvm-0.53.1
                              rust-windows-i686-msvc-0.42.2
                              rust-windows-i686-msvc-0.48.5
                              rust-windows-i686-msvc-0.52.6
                              rust-windows-i686-msvc-0.53.1
                              rust-windows-x86-64-gnu-0.42.2
                              rust-windows-x86-64-gnu-0.48.5
                              rust-windows-x86-64-gnu-0.52.6
                              rust-windows-x86-64-gnu-0.53.1
                              rust-windows-x86-64-gnullvm-0.42.2
                              rust-windows-x86-64-gnullvm-0.48.5
                              rust-windows-x86-64-gnullvm-0.52.6
                              rust-windows-x86-64-gnullvm-0.53.1
                              rust-windows-x86-64-msvc-0.42.2
                              rust-windows-x86-64-msvc-0.48.5
                              rust-windows-x86-64-msvc-0.52.6
                              rust-windows-x86-64-msvc-0.53.1
                              rust-winnow-1.0.3
                              rust-wit-bindgen-0.51.0
                              rust-wit-bindgen-0.57.1
                              rust-wit-bindgen-core-0.51.0
                              rust-wit-bindgen-rust-0.51.0
                              rust-wit-bindgen-rust-macro-0.51.0
                              rust-wit-component-0.244.0
                              rust-wit-parser-0.244.0
                              rust-writeable-0.6.3
                              rust-wyz-0.5.1
                              rust-y4m-0.8.0
                              rust-yoke-0.8.3
                              rust-yoke-derive-0.8.2
                              rust-zbus-5.16.0
                              rust-zbus-macros-5.16.0
                              rust-zbus-names-4.3.2
                              rust-zerocopy-0.8.52
                              rust-zerocopy-derive-0.8.52
                              rust-zerofrom-0.1.8
                              rust-zerofrom-derive-0.1.7
                              rust-zeroize-1.9.0
                              rust-zerotrie-0.2.4
                              rust-zerovec-0.11.6
                              rust-zerovec-derive-0.11.3
                              rust-zmij-1.0.21
                              rust-zune-core-0.5.1
                              rust-zune-inflate-0.2.54
                              rust-zune-jpeg-0.5.15
                              rust-zvariant-5.12.0
                              rust-zvariant-derive-5.12.0
                              rust-zvariant-utils-3.4.0)))
