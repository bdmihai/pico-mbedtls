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
    name: 'mbedtls_x509'
    type: 'lib'

    Depends { name: 'rp' }

    rp.includePaths: [ 
        '../include' 
    ]

    files: [
        'include/**/*.h',
        '*.h',
        'pkcs7.c',
        'x509.c',
        'x509_create.c',
        'x509_crl.c',
        'x509_crt.c',
        'x509_csr.c',
        'x509write_crt.c',
        'x509write_csr.c',
    ]

    Export {
        Depends { name: 'rp' }
        
        rp.includePaths: [ FileInfo.joinPaths(exportingProduct.sourceDirectory, "/../include") ]
        rp.libraryPaths: [ exportingProduct.destinationDirectory ]
    }
}
