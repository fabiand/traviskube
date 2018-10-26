kubectl logs -l kubevirt.io=virt-handler --all-containers
kubectl get events --all-namespaces
kubectl get pods --all-namespaces
kubectl describe nodes | tee /dev/stderr | grep devices.kubevirt.io/tun
