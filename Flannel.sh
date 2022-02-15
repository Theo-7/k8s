export POD_SUBNET=10.100.0.0/16
kubectl apply -f https://kuboard.cn/install-script/v1.21.x/calico-operator.yaml
wget https://kuboard.cn/install-script/flannel/flannel-v0.14.0.yaml
sed -i "s#10.244.0.0/16#${POD_SUBNET}#" flannel-v0.14.0.yaml
kubectl apply -f ./flannel-v0.14.0.yaml