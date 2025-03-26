kubectl create ns argocd
kubectl config set-context --current --namespace=argocd
helm install my-argo-cd argo/argo-cd --version 7.8.13

aws eks update-kubeconfig --region ap-south-1 --name development

argocd login a646e4079db704122a0da347ca2de681-2100317542.ap-south-1.elb.amazonaws.com --insecure
argocd cluster add arn:aws:eks:ap-south-1:448049808053:cluster/development