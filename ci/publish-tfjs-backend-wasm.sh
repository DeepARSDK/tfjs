PUBLISH_PATH="s3://sdk.developer.deepar.ai/js-modules/tfjs-backend-wasm"
cd ../dist/bin/tfjs-backend-wasm/tfjs-backend-wasm_pkg || exit 1
npm pack
tgz_name=$(ls *.tgz)
aws s3 cp ${tgz_name} ${PUBLISH_PATH}/ --acl public-read