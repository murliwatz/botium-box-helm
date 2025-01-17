
update:
	helm dependency update botium-box-prisma
	helm dependency update botium-box-ce
	helm dependency update botium-box-ce-storage
	helm dependency update botium-box-standalone
	helm dependency update botium-box-advanced
	helm dependency update botium-efs-provisioner
	helm dependency update botium-coach-worker
	helm dependency update ingress-nginx
	helm dependency update botium-box-redis
	helm dependency update botium-box-zap
	helm dependency update botium-wildcard-ingress
	helm dependency update botium-speech-processing

package:
	rm -f botium-box-ce-*.tgz botium-box-prisma-*.tgz botium-box-redis-*.tgz botium-box-zap-*.tgz botium-box-standalone-*.tgz botium-coach-worker-*.tgz botium-efs-provisioner-*.tgz botium-wildcard-ingress-*.tgz ingress-nginx-*.tgz botium-speech-processing-*.tgz
	helm package botium-box-prisma
	helm package botium-box-ce
	helm package botium-box-ce-storage
	helm package botium-box-standalone
	helm package botium-box-advanced
	helm package botium-efs-provisioner
	helm package botium-coach-worker
	helm package ingress-nginx
	helm package botium-box-redis
	helm package botium-box-zap
	helm package botium-wildcard-ingress
	helm package botium-speech-processing
	helm repo index . --url https://github.com/murliwatz/botium-box-helm/raw/master/

publish:
	git add .
	git commit -a -m "publish"
	git push
