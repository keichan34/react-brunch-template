build:
	brunch build --production

fingerprint:
	./scripts/do_fingerprints.rb

compress:
	gzip -9kf public/*.{js,css}

upload:
	rsync -avz -e ssh ./public/ username@some_server.example:/deploy_to_here

deploy: build fingerprint compress upload
