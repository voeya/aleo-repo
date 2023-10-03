aleo smart contract



-----------------------------

cd $HOME

mkdir demo_deploy_Leo_app && cd demo_deploy_Leo_app

WALLETADDRESS=""



leo new "${APPNAME}"

PATHTOAPP=$(realpath -q $APPNAME)

cd $PATHTOAPP && cd ..

PRIVATEKEY=""

RECORD=""

snarkos developer deploy "${APPNAME}.aleo" --private-key "${PRIVATEKEY}" --query "https://vm.aleo.org/api" --path "./${APPNAME}/build/" --broadcast "https://vm.aleo.org/api/testnet3/transaction/broadcast" --fee 600000 --record "${RECORD}"



