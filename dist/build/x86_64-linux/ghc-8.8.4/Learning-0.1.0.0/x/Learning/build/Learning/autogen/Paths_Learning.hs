{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_Learning (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/leron/.cabal/bin"
libdir     = "/home/leron/.cabal/lib/x86_64-linux-ghc-8.8.4/Learning-0.1.0.0-inplace-Learning"
dynlibdir  = "/home/leron/.cabal/lib/x86_64-linux-ghc-8.8.4"
datadir    = "/home/leron/.cabal/share/x86_64-linux-ghc-8.8.4/Learning-0.1.0.0"
libexecdir = "/home/leron/.cabal/libexec/x86_64-linux-ghc-8.8.4/Learning-0.1.0.0"
sysconfdir = "/home/leron/.cabal/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "Learning_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "Learning_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "Learning_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "Learning_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "Learning_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "Learning_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
