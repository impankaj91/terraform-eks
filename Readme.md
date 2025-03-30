aws eks update-kubeconfig --region ap-south-1 --name development

kubectl create ns argocd
kubectl config set-context --current --namespace=argocd

helm repo add argo https://argoproj.github.io/argo-helm
helm install my-argo-cd argo/argo-cd --version 7.8.13



argocd login af0a20444febf4d79857d173fad20a16-108792592.ap-south-1.elb.amazonaws.com --insecure
argocd cluster add arn:aws:eks:ap-south-1:448049808053:cluster/development