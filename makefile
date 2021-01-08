build:
	# full path to avoid crontab pb : 'bundle: Command not found'
	#/usr/local/bin/bundle exec jekyll build
	bundle exec jekyll build

push_local:
	rsync -avrz --update --delete-excluded _site/* /var/www/techmayhem-blog/

deploy_local: build push_local

serve:
	bundle exec jekyll serve --drafts --watch -H 0.0.0.0
