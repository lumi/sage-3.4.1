#!/usr/bin/perl
# Script to answer queries of the form "is this available in Debian"
@use_debian = qw(bzip2 atlas blas clisp cvxopt ecm f2c freetype gap gd gdmodule gmp gnutls gsl ipython lapack libgcrypt libgpg_error libpng matplotlib maxima mercurial moin mpfi mpfr networkx numpy opencdk pari pexpect pycrypto python python_gnutls quaddouble r readline scipy scons setuptools sqlalchemy sqlite sympy termcap twisted weave zlib zodb3 pyprocessing fortran cython sphinx docutils jinja jquery pygments jsmath boehm_gc tinyMCE);
@our_debian = qw(cddlib flint libfplll genus2reduction gfan givaro iml lcalc libm4ri linbox ntl palp singular symmetrica sympow tachyon zn_poly polybori);
@ignore = (@use_debian, @our_debian, qw(ipython1 jmol));
@noignore = qw(jmol scipy_sandbox rubiks eclib flintqs);
@sage = qw(sage sage_scripts elliptic_curves examples doc extcode);

while(<>) {
    $arg = $_;
    foreach (@ignore) {
	if ($arg =~ m/^$_-/) {
	    $arg =~ s/.spkg$//;
	    print "$arg";
	    last;
	}
    }
}
