FROM krasilich/php:7.0-dev

COPY install_with_sampledata.sh /usr/local/bin/install_with_sampledata
COPY setup_composer.sh /usr/local/bin/setup_composer
COPY install_clean.sh /usr/local/bin/install_clean
RUN chmod +x /usr/local/bin/install_with_sampledata /usr/local/bin/install_clean /usr/local/bin/setup_composer 
RUN mkdir -p /var/www/magento/pub /var/www/magento/bin
RUN touch /var/www/magento/bin/magento
RUN chmod +x /var/www/magento/bin/magento
RUN rm -rf /var/www/html && ln -s /var/www/magento /var/www/html
RUN ln -s /var/www/magento/bin/magento /usr/local/bin/magento

VOLUME /var/www/magento
WORKDIR /var/www/magento