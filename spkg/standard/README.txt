----------------------------------------------------------------
    Thank you for downloading
         Sage: Open Source Mathematics Software
         http://www.sagemath.org

    Distributed under the terms of the GNU General Public License (GPL).

    AUTHORS: There are well over 100 people who have directly
    contributed to SAGE (see the website for a partial list).

    "Building the car instead of reinventing the wheel"
----------------------------------------------------------------

USE A BINARY:
   1. Just type ./sage in your terminal from the Sage directory.

   2. To use the notebook, type notebook().  Evaluate cells by
      pressing shift-enter.

   3. Get help by joining the sage-support or sage-newbie Google groups

         http://groups.google.com/group/sage-support
         http://groups.google.com/group/sage-newbie

BUILD FROM SOURCE:
   1. Make sure you have compilers, etc. installed:
         LINUX: gcc, g++, make, m4, perl, ranlib, and tar
         OSX:   XCode.
      NOTE: On some operating systems it might be necessary
      to install gas/as, gld/ld, gnm/nm, but on most these
      are automatically installed when you install the 
      programs listed above. 
 
   2. Extract the tarball:
          tar xvf sage-*.tar

   3. Then cd into the sage directory and type make:
          cd sage-*
          make
      That's it!  Everything is automatic and non-interactive.  If it
      doesn't work, please check the list of supported platforms below
      and email sage-support:

           http://groups.google.com/group/sage-support

      Please also consult the FAQ for known issues at

           http://wiki.sagemath.org/faq

SELINUX PROBLEMS:  On Linux if you get this error message: 
  " restore segment prot after reloc: Permission denied "
the problem is probably related to SE Linux:
     http://www.ittvis.com/services/techtip.asp?ttid=3092

GCC/XCODE PROBLEMS:
  WARNING: If "gcc -v" outputs 4.0.0, you 
          *must* upgrade XCode (free from Apple), since that
          version of GCC is very broken. 

----------------------------------------------------------------

OFFICIALLY SUPPORTED PLATFORMS:
Building of SAGE from source is regularly tested on  
(minimal installs of) the following platforms:
       PROCESSOR       OPERATING SYSTEM
       x86             32-bit Linux -- Debian, Ubuntu, RHEL5, Fedora Core, 
                                       CentOS, Suse, Mandriva
       x86_64          64-bit Linux -- Debian
       x86             Apple Mac OS X 10.4.x, 10.5.x
       ppc             Apple Mac OS X 10.4.x
       ia64 itanium2   64-bit Linux    (less well supported)

    Use SAGE on Microsoft Windows via VMware.

UNSUPPORTED, BUT HIGH PRIORITY TO SUPPORT SOON:
       sparc           Solaris 10
       x86_64          Solaris 10
 

IMPLEMENTATION: 
     SAGE has significant components written in the following
     languages: C/C++, Python, Lisp, and Fortran.  Lisp and 
     Python are built as part of SAGE, and Fortran (g95) is
     included (x86 Linux and OS X only), so you do not need 
     them in order to build SAGE.

MORE DETAILED INSTRUCTIONS TO BUILD FROM SOURCE:
    (See the installation guide for more details.)
    1. Make sure you have about 1GB free disk space.
    2. Linux: Install gcc, g++, m4, ranlib, and make.  
              The build should work fine on SUSE, FC, Ubuntu, etc.  If
              it doesn't, we want to know!
       OS X:  Make sure you have XCode version >= 2.4, i.e., gcc -v
              should output build >= 5363.   If you don't, go to
              http://developer.apple.com/ sign up, and download the 
              free XCode package.  Only OS X >= 10.4 is supported. 
       Windows: Download and install VMware, install linux into it, etc. 
    3. Extract the sage source tarball, cd into a directory
       with no spaces in it.  If you have a machine with n processors, 
       say 4, type 
             export MAKE="make -j4"
       To start the build type
             make
    4. Wait about 1 to 8 hours, depending on your computer.
       SOME ACTUAL REAL BUILD TIMES (for SAGE-2.7.1):
          * 1.8Ghz Linux Opteron 64-bit 16-core SMP machine: 67 minutes 
          * G5: 102 minutes
          * Core 2 Duo: 67 minutes
          * Core Duo: 75 minutes
          * 1.5 Ghz G4 (rev 1.2): 167 minutes
    5. Type ./sage to try it out. 
    6. OPTIONAL: Start sage and run the command 
          install_scripts("/usr/local/bin/")   # change /usr/local/bin/
       Type "install_scripts?" in SAGE for more details about
       what this command does.
    7. OPTIONAL: Type "make test" to test all examples in the 
       documentation (over 25000 lines of input!) -- this takes from 
       15 minutes to an hour.   Eail the section of test.log that 
       contains errors to sage-support@googlegroups.com:
              http://groups.google.com/group/sage-support
    8. OPTIONAL: Documentation: If you want to (try to) build the
       documentation, change into SAGE_ROOT/devel/doc and type "./rebuild"
       This requires having latex and latex2html installed, and there
       are some issues with the \url macro.  Note that the docs
       come *pre-built* with SAGE, and are in SAGE_ROOT/doc/.
    9. OPTIONAL: GAP -- It is highly recommended that you install the 
       optional GAP databases by typing
                            ./sage -optional
       then installing (with ./sage -i) the package whose name
       begins with database_gap.   This will download the package 
       from sage.math.washington.edu and install it.    While you're
       at it you might install other databases of interest to you. 
   10. OPTIONAL: It is highly recommended that you have both latex
       and the imagemagick tools (e.g., the "convert" command) installed
       since the animate command uses it (but nothing else does). 

SUPPORTED COMPILERS:
    * SAGE builds with GCC 3.4.x and GCC >= 4.1.x.  
    * SAGE will not build with gcc <= 3.3.x!
    * WARNING: Don't build with GCC 4.0.0, which is "buggy as a
      Florida swamp in August".
    * I don't know if SAGE has ever been built with a non-GCC compiler.   
    * SOLARIS is *not* yet supported (though we are actively working on
      a port and Sage mostly compiles on Solaris).
    
RUNNING SAGE:
    1. Try running sage:
          ./sage
    2. Try running an example SAGE script:
          ./sage example.sage

RELOCATION (OS X and Windows):
   You *should* be able to move the sage-x.y.z directory anywhere you
   want.  If you copy the sage script or put a symlink to it, you
   should modify the script to reflect this (as instructed in the top
   of the script).  It is best if the path to SAGE does not have any
   spaces in it.

   If you find it doesn't work correctly after you moved the directory,  
   email sage-support (http://groups.google.com/group/sage-support).

REDISTRIBUTION:
   Your local SAGE install is exactly the same as any "developer" 
   install.   You can make changes to documentation, source,
   etc., and very easily package up the complete results for 
   redistribution just like we do.

   1. You can make your own source tarball (sage-x.y.z.tar) of SAGE by
      typing "sage -sdist x.y.z", where the version is whatever you
      want.  The result is placed in SAGE_ROOT/dist.

  2.  You can make a binary distribution with the packages you've
      installed included by typing "sage -bdist x.y.z".  The 
      result is placed in the SAGE_ROOT/dist directory.


CHANGES TO INCLUDED SOFTWARE: 
    All software included with SAGE is copyright by the respective
    authors and released under an open source license that is GPLv3
    compatible (most code is "GPL v2 or later" or BSD licensed).  
    See the file COPYING.txt for more details.

    After building SAGE, see the directories

          SAGE_ROOT/spkg/build/package-name/
  
    for a file SAGE.txt that details all changes made to the given
    package for inclusion with SAGE.  The inclusion of such a file
    detailing changes is specifically required by some of the packages
    included with SAGE (e.g., for GAP).
    (These directories are deleted when you type "make clean".)


