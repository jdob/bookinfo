oc project user1-bookinfo && \
oc label rev app.openshift.io/runtime=nodejs --overwrite --all && \
oc label rev app.kubernetes.io/part-of=bookinfo --overwrite --all
