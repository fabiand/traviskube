function get_handler_pods {
  kubectl get pods -n kubevirt -l kubevirt.io=virt-handler --no-headers
}

function get_handler_logs {
  for pod in $(get_handler_pods); do
    kubectl logs -n kubevirt $pod
  done
}

get_handler_logs
kubectl get events --all-namespaces
kubectl get pods --all-namespaces
kubectl describe nodes | tee /dev/stderr | grep devices.kubevirt.io/tun
