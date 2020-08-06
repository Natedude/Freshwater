import freshwater
import sys
import pkgutil
from os.path import dirname
import pprint

def loadModules(pkg):
    pkg._modules = []

    pkgname = pkg.__name__
    pkgpath = dirname(pkg.__file__)

    for m in pkgutil.iter_modules([pkgpath]):
        modulename = pkgname+'.'+m[1]
        __import__(modulename, locals(), globals())
        module = sys.modules[modulename]

        module._package = pkg
        # module._packageName = pkgname

        pkg._modules.append(module)
        if dirname(module.__file__) == pkgpath:
            module._isPackage = False
        else:
            module._isPackage = True
            loadModules(module)


def modName(mod):
    return mod.__name__.rpartition('.')[-1]


def printModules(pkg, indent=0):
    print('\t'*indent, end='')
    print(modName(pkg), end='')
    print(':')
    #print , modName(pkg), ':'
    indent += 1
    for m in pkg._modules:
        if m._isPackage:
            printModules(m, indent)
        else:
            print('\t'*indent, end='')
            print(modName(m))
            #print '\t'*indent, modName(m)


loadModules(freshwater)
pprint.pprint(freshwater._modules)
for m in freshwater._modules:
    print( m._isPackage)
print("----")
printModules(freshwater)
