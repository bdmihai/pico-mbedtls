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
    name: 'mbedtls_tls'
    type: 'lib'

    Depends { name: 'rp' }

    rp.includePaths: [ 
        '../include' 
    ]

    files: [
        'include/**/*.h',
        '*.h',
        'debug.c',
        'mps_reader.c',
        'mps_trace.c',
        'net_sockets.c',
        'ssl_cache.c',
        'ssl_ciphersuites.c',
        'ssl_client.c',
        'ssl_cookie.c',
        'ssl_debug_helpers_generated.c',
        'ssl_msg.c',
        'ssl_ticket.c',
        'ssl_tls.c',
        'ssl_tls12_client.c',
        'ssl_tls12_server.c',
        'ssl_tls13_keys.c',
        'ssl_tls13_server.c',
        'ssl_tls13_client.c',
        'ssl_tls13_generic.c'
    ]

    Export {
        Depends { name: 'rp' }
        
        rp.includePaths: [ FileInfo.joinPaths(exportingProduct.sourceDirectory, "/../include") ]
        rp.libraryPaths: [ exportingProduct.destinationDirectory ]
    }
}
