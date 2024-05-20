echo y| del -r source\apidocs\*

sphinx-apidoc -f -o source/apidocs ../gamut/test

sphinx-autobuild source build
