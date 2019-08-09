FROM python:3.7.3-alpine

COPY microblog /opt/microblog
RUN pip install -r /opt/microblog/requirements.txt; chmod +x /opt/microblog/docker-entrypoint.sh
ENV FLASK_APP=/opt/microblog/app/microblog.py 
ENV MAIL_SERVER=localhost
ENV MAIL_PORT=8025
CMD ["/bin/sh", "/opt/microblog/docker-entrypoint.sh"]