FROM krasilich/php:7.0-dev

COPY install_with_sampledata.sh /usr/local/bin/install_with_sampledata
COPY setup_composer.sh /usr/local/bin/setup_composer
COPY install_clean.sh /usr/local/bin/install_clean
RUN chmod +x /usr/local/bin/install_with_sampledata /usr/local/bin/install_clean /usr/local/bin/setup_composer 
RUN mkdir -p /magento/pub /magento/bin
RUN touch /magento/bin/magento
RUN rm -rf /var/www/html && ln -s /magento /var/www/html
RUN ln -s /magento/bin/magento /usr/local/bin/magento

VOLUME /magento
WORKDIR /magento