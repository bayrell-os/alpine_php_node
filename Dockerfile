ARG ARCH=
FROM bayrell/alpine_php_fpm:7.3-8${ARCH}

RUN cd ~; \
	apk update; \
	apk add nodejs npm util-linux gcc g++ make sudo; \
	rm -rf /var/cache/apk/*; \
	echo n |npm install -g @angular/cli; \
	npm install -g parcel-bundler; \
	echo 'Ok'
	
ADD files /src/files
RUN cd ~; \
	rm -f /etc/nginx/conf.d/default.conf; \
	cp -rf /src/files/etc/* /etc/; \
	cp -rf /src/files/root/* /root/; \
	rm -rf /src/files; \
	chmod +x /root/run.sh; \
	echo 'Ok'