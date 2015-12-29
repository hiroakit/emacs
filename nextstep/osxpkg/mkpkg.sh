PlistBuddy="/usr/libexec/PlistBuddy"
InfoPlist="./Applications/Emacs.app/Contents/Info.plist"
AppVersion=($PlistBuddy -c "Print CFBundleShortVersionString" $InfoPlist)
AppIdentifier=($PlistBuddy -c "Print CFBundleIdentifier" $InfoPlist)
AppPkg=Emacs.pkg

pkgbuild --root ./Applications \
         --component-plist ./pkg.plist \
         --identifier $AppIdentifier \
         --version $AppVersion \
         --install-location Applications $AppPkg
