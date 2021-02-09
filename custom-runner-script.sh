gitUrl=$1
token=$2
curl -O -L https://github.com/actions/runner/releases/download/v2.272.0/actions-runner-linux-x64-2.272.0.tar.gz;
tar xzf ./actions-runner-linux-x64-2.272.0.tar.gz;
./config.sh --url $gitUrl --token $token --labels ubuntu --name test --work _work --unattended;
nohup ./run.sh > nohup-output.txt &
