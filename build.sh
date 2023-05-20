tsc

javascript-obfuscator rpb.user.js -o rpb.user.js \
--options-preset low-obfuscation \
--string-array true \
--string-array-encoding base64 \
--string-array-threshold 1 \
--identifier-names-generator mangled

uglifyjs rpb.user.js --comments all --mangle -o rpb.user.js

cat headers.js rpb.user.js > temp.js && mv temp.js rpb.user.js
