oc project user1-bookinfo && \
oc label deployment/details app.openshift.io/runtime=ruby --overwrite && \
oc label deployment details app.kubernetes.io/part-of=bookinfo --overwrite
