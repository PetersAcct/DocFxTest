mkdir $BUILD_SOURCESDIRECTORY/_dl
mkdir $BUILD_SOURCESDIRECTORY/_bin
mkdir $BUILD_SOURCESDIRECTORY/_publish

wget -O $BUILD_SOURCESDIRECTORY/_dl/docfx.zip "https://github.com/dotnet/docfx/releases/download/v2.37/docfx.zip"
unzip $BUILD_SOURCESDIRECTORY/_dl/docfx.zip -d $BUILD_SOURCESDIRECTORY/_bin/docfx

cd $BUILD_SOURCESDIRECTORY/$DOCSFOLDER
mono $BUILD_SOURCESDIRECTORY/_bin/docfx/docfx.exe
cp -R $BUILD_SOURCESDIRECTORY/$DOCSFOLDER/_site/. $BUILD_SOURCESDIRECTORY/_publish/
