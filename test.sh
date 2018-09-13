kubectl logs -l kubevirt.io=virt-handler
kubectl get events --all-namespaces

kubectl describe nodes | grep devices.kubevirt.io/tun
