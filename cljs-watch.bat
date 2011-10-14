@echo off
setlocal
set BASE_DIR=%~dp0
set CLJS_WATCH_DOT_CLJ=%BASE_DIR%src\cljs_watch\core.clj

set CLJS_LIB=%CLOJURESCRIPT_HOME%\lib
set CLJS_LIB_JARS=%CLOJURESCRIPT_HOME%\lib\*
set CLJS_SRC=%CLOJURESCRIPT_HOME%\src\clj
set CLJS_CLJS=%CLOJURESCRIPT_HOME%\src\cljs
set LOCAL_LIB_JARS=lib\*
set LOCAL_LIB=lib
set LOCAL_MACROS=cljs-macros

java -server -cp "%CLJS_LIB%;%CLJS_LIB_JARS%;%CLJS_SRC%;%CLJS_CLJS%;%LOCAL_LIB%;%LOCAL_LIB_JARS%;%LOCAL_MACROS%" clojure.main %CLJS_WATCH_DOT_CLJ% %1 %2 %3 %4 %5 %6 %7 %8 %9
endlocal
