build:
	# full path to avoid crontab pb : 'bundle: Command not found'
	#/usr/local/bin/bundle exec jekyll build
	bundle exec jekyll build

push:
	rsync -avrz --update --delete-excluded _site/* /var/www/techmayhem-blog/

deploy: build push

serve:
	bundle exec jekyll serve --drafts --watch -H 0.0.0.0 --port 4001
