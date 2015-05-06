# Sort

Coda 2.5 Plugin to Sort Selected Text

This takes advantage of the [Coda Plugin Kit](https://github.com/panicinc/CodaPluginKit), and fully
copy-pastas the
[`CodaPlugInsController.h`](https://github.com/panicinc/CodaPluginKit/blob/master/Cocoa%20Plug-ins/CodaPlugInsController.h)
in order to communicate with Coda.

To build, open in Xcode, `Product` > `Build For` > `Running`, then check out the contents of your
[Derived Data](https://developer.apple.com/library/ios/recipes/xcode_help-locations_preferences/DerivedData/DerivedData.html)
directory. Copy-paste that `Sort.codaplugin` file into
`~/Library/Application Support/Coda 2/Plug-ins`, and start up Coda.