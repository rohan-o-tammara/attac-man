zip -9 -r build/attac-man.love .
cat build/love.exe build/attac-man.love > build/output/attac-man.exe
zip build/attac-man-win.zip build/output/.
echo "Build completed!"
