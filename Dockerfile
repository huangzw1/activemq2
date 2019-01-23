FROM rmohr/activemq:5.12.0
RUN sudo hostname "$(hostname | cut -c1-63)"
RUN sed -e "s/^\\(127\\.0\\.0\\.1.*\\)/\\1 $(hostname | cut -c1-63)/" /etc/hosts | sudo tee /etc/hosts
