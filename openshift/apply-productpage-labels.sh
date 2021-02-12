oc project user1-bookinfo && \
oc label deployment/productpage app.openshift.io/runtime=python --overwrite && \
oc label deployment/productpage app.kubernetes.io/part-of=bookinfo --overwrite && \
oc annotate deployment/productpage app.openshift.io/connects-to=details
