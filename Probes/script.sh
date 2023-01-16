kubectl get po --no-headers | cut -d " " -f 1
for POD in $(kubectl get po --no-headers | cut -d " " -f 1); do
    kubectl exec -it $POD -- rm -rf /var/www/html/index.nginx-debian.html
    sleep 60
done