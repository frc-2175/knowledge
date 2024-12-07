rm -r quartz/content
mkdir quartz/content

cp -r content/* quartz/content

cd quartz

# npm ci

npx quartz build --serve

rm -r ../public

cp -r public ../public
