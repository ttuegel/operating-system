{-# LANGUAGE CPP #-}
{-# LANGUAGE TemplateHaskell #-}

{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE TypeFamilies #-}

module OS where

import Data.Singletons.TH

$(singletons [d|
    data OS
      = AIX
      | DARWIN
      | DRAGONFLY
      | FREEBSD
      | GHCJS
      | HAIKU
      | HPUX
      | IOS
      | KFREEBSDGNU
      | LINUX_ANDROID
      | LINUX
      | MINGW32
      | NETBSD
      | OPENBSD
      | SOLARIS
      | SOLARIS2
  |])

#if defined(aix_HOST_OS)
type HOST_OS = 'AIX
#elif defined(darwin_HOST_OS)
type HOST_OS = 'DARWIN
#elif defined(dragonfly_HOST_OS)
type HOST_OS = 'DRAGONFLY
#elif defined(freebsd_HOST_OS)
type HOST_OS = 'FREEBSD
#elif defined(ghcjs_HOST_OS)
type HOST_OS = 'GHCJS
#elif defined(haiku_HOST_OS)
type HOST_OS = 'HAIKU
#elif defined(hpux_HOST_OS)
type HOST_OS = 'HPUX
#elif defined(ios_HOST_OS)
type HOST_OS = 'IOS
#elif defined(kfreebsdgnu_HOST_OS)
type HOST_OS = 'KFREEBSDGNU
#elif defined(linux_android_HOST_OS)
type HOST_OS = 'LINUX_ANDROID
#elif defined(linux_HOST_OS)
type HOST_OS = 'LINUX
#elif defined(mingw32_HOST_OS)
type HOST_OS = 'MINGW32
#elif defined(netbsd_HOST_OS)
type HOST_OS = 'NETBSD
#elif defined(openbsd_HOST_OS)
type HOST_OS = 'OPENBSD
#elif defined(solaris_HOST_OS)
type HOST_OS = 'SOLARIS
#elif defined(solaris2_HOST_OS)
type HOST_OS = 'SOLARIS2
#endif

#if defined(aix_TARGET_OS)
type TARGET_OS = 'AIX
#elif defined(darwin_TARGET_OS)
type TARGET_OS = 'DARWIN
#elif defined(dragonfly_TARGET_OS)
type TARGET_OS = 'DRAGONFLY
#elif defined(freebsd_TARGET_OS)
type TARGET_OS = 'FREEBSD
#elif defined(ghcjs_TARGET_OS)
type TARGET_OS = 'GHCJS
#elif defined(haiku_TARGET_OS)
type TARGET_OS = 'HAIKU
#elif defined(hpux_TARGET_OS)
type TARGET_OS = 'HPUX
#elif defined(ios_TARGET_OS)
type TARGET_OS = 'IOS
#elif defined(kfreebsdgnu_TARGET_OS)
type TARGET_OS = 'KFREEBSDGNU
#elif defined(linux_android_TARGET_OS)
type TARGET_OS = 'LINUX_ANDROID
#elif defined(linux_TARGET_OS)
type TARGET_OS = 'LINUX
#elif defined(mingw32_TARGET_OS)
type TARGET_OS = 'MINGW32
#elif defined(netbsd_TARGET_OS)
type TARGET_OS = 'NETBSD
#elif defined(openbsd_TARGET_OS)
type TARGET_OS = 'OPENBSD
#elif defined(solaris_TARGET_OS)
type TARGET_OS = 'SOLARIS
#elif defined(solaris2_TARGET_OS)
type TARGET_OS = 'SOLARIS2
#endif
