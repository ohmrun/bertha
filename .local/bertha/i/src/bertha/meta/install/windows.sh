NEKO_REMOTE_FILENAME="${NEKO_VERSION_STRING}.zip"
NEKO_TGT=$(direnv fetchurl "https://github.com/HaxeFoundation/neko/releases/download/v2-3-0/${NEKO_REMOTE_FILENAME}" "sha256-0J/fNizS4ydPbIUovnIRZjJgw6UyPOiTt2N8KBiZXws=")
mv -n "${NEKO_TGT}" "${BERTHA_PATH}/tmp/${NEKO_REMOTE_FILENAME}"
#Windows 10 build 17063 or later 
tar -xf "${BERTHA_PATH}/tmp/${NEKO_REMOTE_FILENAME}" --directory "${BERTHA_PATH}/.local/bertha/o/os/windows/prg"