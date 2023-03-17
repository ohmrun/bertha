  NEKO_VERSION_STRING="$1"
  NEKO_REMOTE_FILENAME="${NEKO_VERSION_STRING}.tar.gz"
  NEKO_TGT=$( direnv fetchurl "https://github.com/HaxeFoundation/neko/releases/download/v2-3-0/${NEKO_REMOTE_FILENAME}" "sha256-Jt2ijQpRQH8mIYupwsNVyOsjzysLYXJ0sA5LkXD+aes=")
  #echo $NEKO_TGT;
  mv -n "${NEKO_TGT}" "${BERTHA_PATH}/tmp/${NEKO_REMOTE_FILENAME}"
  tar -xzf "${BERTHA_PATH}/tmp/${NEKO_REMOTE_FILENAME}" --directory "${BERTHA_PATH}/.local/bertha/o/os/linux/prg"