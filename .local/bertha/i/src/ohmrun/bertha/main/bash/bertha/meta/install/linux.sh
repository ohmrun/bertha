BERTHA_TMP="${BERTHA_PATH}/.local/bertha/o/tmp/"
NEKO_VERSION_STRING="$1"
NEKO_REMOTE_FILENAME="${NEKO_VERSION_STRING}.tar.gz"
NEKO_TGT=$( direnv fetchurl "https://github.com/HaxeFoundation/neko/releases/download/v2-3-0/${NEKO_REMOTE_FILENAME}" "sha256-Jt2ijQpRQH8mIYupwsNVyOsjzysLYXJ0sA5LkXD+aes=")

#echo $NEKO_TGT;
mv -n "${NEKO_TGT}" "${BERTHA_TMP}/${NEKO_REMOTE_FILENAME}"
tar -xzf "${BERTHA_PATH}/.local/bertha/o/tmp/${NEKO_REMOTE_FILENAME}" --directory "${BERTHA_PATH}/.local/bertha/o/os/linux/prg"

RCLONE_VERSION_STRING="$2"
RCLONE_REMOTE_FILENAME="${RCLONE_VERSION_STRING}.zip"
RCLONE_LINUX_URL="https://downloads.rclone.org/v1.62.2/${RCLONE_REMOTE_FILENAME}"
RCLONE_TGT=$(  direnv fetchurl "https://downloads.rclone.org/v1.62.2/rclone-v1.62.2-linux-amd64.zip" "sha256-bIZ23Fbj0uJjWLW65harPsleJhgc2bhpLhAdzA/JZqE=" )
mv -n "${RCLONE_TGT}" "${BERTHA_TMP}/${RCLONE_REMOTE_FILENAME}"
unzip -n "${BERTHA_TMP}/${RCLONE_REMOTE_FILENAME}" -d "${BERTHA_PATH}/.local/bertha/o/os/linux/prg"
export PATH="${BERTHA_PATH}/.local/bertha/o/os/linux/prg/${RCLONE_VERSION_STRING}:$PATH"