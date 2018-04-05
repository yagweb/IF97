import platform
import sys
from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext

extension_name = "_if97"

def build_hbio(is_iapws_units = False):
    sources = ["_if97.pyx"]
    library_dirs = []
    libraries = []
        
    if platform.system() == "Windows":
        define_macros = [('WINDOWS', None)]
        extra_compile_args = []
        runtime_library_dirs = None
        extra_link_args = None
    else:
        define_macros = []
        extra_compile_args = ['-std=c++11']
        #linux dll dependent dlls' search folder not include the dll
        runtime_library_dirs = ['.']
        extra_link_args = None # ['-Wl,-rpath=.'] 
    
    # This compiler flag causes input/output units on the Thermodynamic Properties in IF97.h
    # to take pressure units of [MPa] and Energy units of [kJ] for comparison with IAPWS
    # table values.  If not set, the default behavior of IF97.h is to use straight SI units
    # with pressure in [Pa] and enthalpy in [J].
    if is_iapws_units:
        define_macros.append(('IAPWS_UNITS', None))
        
    ext_modules = [
        Extension(
            extension_name, 
            sources = sources,
            define_macros = define_macros,
            extra_compile_args = extra_compile_args,
            extra_link_args = extra_link_args,
            runtime_library_dirs = runtime_library_dirs,
            include_dirs = ["../../"],
            library_dirs = library_dirs,
            libraries = libraries,
            language = "c++"
        )
    ]
    
    setup(
        name = extension_name,
        cmdclass = {'build_ext': build_ext},
        ext_modules = ext_modules
    ) 

def build():
    sys.argv.append('build_ext')
    sys.argv.append('-i')
    if platform.system() == "Windows":
        sys.argv.append('--compiler=msvc')

    build_hbio()
    
if __name__ == '__main__':
    build()