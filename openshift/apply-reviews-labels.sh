oc project user1-bookinfo && \
oc label deployment/reviews-v1 app.openshift.io/runtime=java --overwrite && \
oc label deployment/reviews-v2 app.openshift.io/runtime=java --overwrite && \
oc label deployment/reviews-v3 app.openshift.io/runtime=java --overwrite && \
oc label deployment reviews-v1 app.kubernetes.io/part-of=bookinfo --overwrite && \
oc label deployment reviews-v2 app.kubernetes.io/part-of=bookinfo --overwrite && \
oc label deployment reviews-v3 app.kubernetes.io/part-of=bookinfo --overwrite && \
oc annotate deployment reviews-v2 app.openshift.io/connects-to=ratings && \
oc annotate deployment reviews-v3 app.openshift.io/connects-to=ratings
