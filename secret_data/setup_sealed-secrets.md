# sealed-secrets-v0.37.0

# Cluster-side
microk8s kubectl apply -f https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.37.0/controller.yaml

# Client-side
curl -OL "https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.37.0/kubeseal-0.37.0-linux-amd64.tar.gz"
tar -xvzf kubeseal-0.37.0-linux-amd64.tar.gz kubeseal
sudo install -m 755 kubeseal /usr/local/bin/kubeseal


# 暗号化ファイル作成
kubeseal --secret-file "対象ファイル" --format yaml > secrets_data.yaml

# バックアップ
kubectl get secret -n kube-system -l sealedsecrets.bitnami.com/sealed-secrets-key -o yaml > main.key

# 復旧
kubectl apply -f main.key
kubectl delete pod -n kube-system -l name=sealed-secrets-controller

# error: invalid configuration: no configuration has been provided, try setting KUBERNETES_MASTER environment variable
microk8s.kubectl config view --raw > $HOME/.kube/config