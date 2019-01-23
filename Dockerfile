FROM rmohr/activemq:5.12.0
RUN sudo hostname "$(hostname | cut -c1-63)"
