ARCH=amd64
PLATFORM=$(uname -s)_$ARCH
curl -sLO "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_$PLATFORM.tar.gz"
tar -xzf eksctl_$PLATFORM.tar.gz -C /tmp && rm eksctl_$PLATFORM.tar.gz
sudo mv /tmp/eksctl /usr/local/bin


curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

echo "***************************************************"
echo "********* CHAPTER 1 - STARTED AT $(date) **********"
echo "***************************************************"
echo "--- This could take around 20 minutes"

# Create the Kubernetes Cluster
    eksctl create cluster -f Infrastructure/eksctl/01-initial-cluster/cluster.yaml

echo "*************************************************************"
echo "********* READY TO CHAPTER 2! - FINISHED AT $(date) *********"
echo "*************************************************************"
