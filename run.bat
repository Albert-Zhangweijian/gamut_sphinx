echo y| del -r source\apidocs\*
echo y| del -r source\apidoc\*

sphinx-apidoc -f -o source/apidocs ../gamut/test

sphinx-apidoc -f -o source/apidoc ../gamut


sphinx-autobuild source build
