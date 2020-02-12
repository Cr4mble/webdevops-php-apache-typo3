FROM cheveo/php-apache

WORKDIR /app
RUN wget http://fahrzeuge.emilfrey.de/typo3_src-7.6.41.tar.gz -O typo3_src-7.6.41.tar.gz
RUN tar -xzf typo3_src-7.6.41.tar.gz
RUN rm typo3_src-7.6.41.tar.gz

RUN ln -sfn typo3_src-7.6.41 typo3_src
RUN ln -sfn typo3_src/typo3/ typo3
RUN ln -sfn typo3_src/index.php index.php

RUN find . -type d -exec chmod 777 {} +
RUN find . -type f -exec chmod 666 {} +

EXPOSE 80