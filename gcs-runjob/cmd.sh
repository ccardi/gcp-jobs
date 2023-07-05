PROJECT=pod-fr-retail
PREFIX=job-test/
TOPIC=projects/pod-fr-retail/topics/pod-fr-retail-gcs-runjob
gsutil create bucket ...
gsutil notification create -p job-test/ -t projects/pod-fr-retail/topics/pod-fr-retail-gcs-runjob -f json -e OBJECT_FINALIZE gs://pod-fr-retail-gcs-runjob
gsutil notification list gs://pod-fr-retail-gcs-runjob
gsutil notification delete projects/_/buckets/pod-fr-retail-gcs-runjob/notificationConfigs/3

gsutil cp config.json gs://pod-fr-retail-gcs-runjob