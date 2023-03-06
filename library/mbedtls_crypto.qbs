/*_____________________________________________________________________________
 │                                                                            |
 │ COPYRIGHT (C) 2023 Mihai Baneu                                             |
 │                                                                            |
 | Permission is hereby  granted,  free of charge,  to any person obtaining a |
 | copy of this software and associated documentation files (the "Software"), |
 | to deal in the Software without restriction,  including without limitation |
 | the rights to  use, copy, modify, merge, publish, distribute,  sublicense, |
 | and/or sell copies  of  the Software, and to permit  persons to  whom  the |
 | Software is furnished to do so, subject to the following conditions:       |
 |                                                                            |
 | The above  copyright notice  and this permission notice  shall be included |
 | in all copies or substantial portions of the Software.                     |
 |                                                                            |
 | THE SOFTWARE IS PROVIDED  "AS IS",  WITHOUT WARRANTY OF ANY KIND,  EXPRESS |
 | OR   IMPLIED,   INCLUDING   BUT   NOT   LIMITED   TO   THE  WARRANTIES  OF |
 | MERCHANTABILITY,  FITNESS FOR  A  PARTICULAR  PURPOSE AND NONINFRINGEMENT. |
 | IN NO  EVENT SHALL  THE AUTHORS  OR  COPYRIGHT  HOLDERS  BE LIABLE FOR ANY |
 | CLAIM, DAMAGES OR OTHER LIABILITY,  WHETHER IN AN ACTION OF CONTRACT, TORT |
 | OR OTHERWISE, ARISING FROM,  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR  |
 | THE USE OR OTHER DEALINGS IN THE SOFTWARE.                                 |
 |____________________________________________________________________________|
 |                                                                            |
 |  Author: Mihai Baneu                           Last modified: 27.Feb.2023  |
 |                                                                            |
 |___________________________________________________________________________*/

Product {
    name: 'mbedtls_crypto'
    type: 'lib'

    Depends { name: 'rp' }

    rp.includePaths: [ 
        '../include' 
    ]

    files: [
        'include/**/*.h',
        '*.h',
        'aes.c',
        'aesni.c',
        'aria.c',
        'asn1parse.c',
        'asn1write.c',
        'base64.c',
        'bignum.c',
        'bignum_core.c',
        'bignum_mod.c',
        'bignum_mod_raw.c',
        'camellia.c',
        'ccm.c',
        'chacha20.c',
        'chachapoly.c',
        'cipher.c',
        'cipher_wrap.c',
        'constant_time.c',
        'cmac.c',
        'ctr_drbg.c',
        'des.c',
        'dhm.c',
        'ecdh.c',
        'ecdsa.c',
        'ecjpake.c',
        'ecp.c',
        'ecp_curves.c',
        'entropy.c',
        'entropy_poll.c',
        'error.c',
        'gcm.c',
        'hash_info.c',
        'hkdf.c',
        'hmac_drbg.c',
        'lmots.c',
        'lms.c',
        'md.c',
        'md5.c',
        'memory_buffer_alloc.c',
        'nist_kw.c',
        'oid.c',
        'padlock.c',
        'pem.c',
        'pk.c',
        'pk_wrap.c',
        'pkcs12.c',
        'pkcs5.c',
        'pkparse.c',
        'pkwrite.c',
        'platform.c',
        'platform_util.c',
        'poly1305.c',
        'psa_crypto.c',
        'psa_crypto_aead.c',
        'psa_crypto_cipher.c',
        'psa_crypto_client.c',
        'psa_crypto_driver_wrappers.c',
        'psa_crypto_ecp.c',
        'psa_crypto_hash.c',
        'psa_crypto_mac.c',
        'psa_crypto_pake.c',
        'psa_crypto_rsa.c',
        'psa_crypto_se.c',
        'psa_crypto_slot_management.c',
        'psa_crypto_storage.c',
        'psa_its_file.c',
        'ripemd160.c',
        'rsa.c',
        'rsa_alt_helpers.c',
        'sha1.c',
        'sha256.c',
        'sha512.c',
        'threading.c',
        'timing.c',
        'version.c',
        'version_features.c'
    ]

    Export {
        Depends { name: 'rp' }
        
        rp.includePaths: [ FileInfo.joinPaths(exportingProduct.sourceDirectory, "/../include") ]
        rp.libraryPaths: [ exportingProduct.destinationDirectory ]
    }
}
