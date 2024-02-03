curl -sfL https://get.k3s.io | sh -

mkdir -p ~/.kube
sudo cp /etc/rancher/k3s/k3s.yaml ~/.kube/config
sudo chown $USER:$USER ~/.kube/config

export KUBECONFIG=~/.kube/config

kubectl get nodes

echo "export KUBECONFIG=~/.kube/config" >> ~/.bashrc
