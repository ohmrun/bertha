NEKO_VERSION_STRING="neko-2.3.0-osx64";
  NEKO_REMOTE_FILENAME="${NEKO_VERSION_STRING}.tar.gz"
  NEKO_TGT=$(direnv fetchurl "https://github.com/HaxeFoundation/neko/releases/download/v2-3-0/${NEKO_REMOTE_FILENAME}" "sha256-CEhTnD+Mbdz2IQmfycUme9yB2sm1AJqegqq04ZZRPh0=")
  mv -n "${NEKO_TGT}" "${BERTHA_PATH}/tmp/${NEKO_REMOTE_FILENAME}"
  tar -xzf "${BERTHA_PATH}/tmp/${NEKO_REMOTE_FILENAME}" --directory "${BERTHA_PATH}/.local/bertha/i/os/darwin/prg"
  PATH_add "${BERTHA_PATH}/.local/bertha/o/os/darwin/prg/${NEKO_VERSION_STRING}"