ARG ARCH=
FROM bayrell/alpine_php_fpm:7.3-7${ARCH}

RUN cd ~; \
	apk update; \
	apk add nodejs npm util-linux gcc g++ make; \
	echo n |npm install -g @angular/cli; \
	npm install -g parcel-bundler; \
	echo 'Ok'