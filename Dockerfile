FROM python:3.12
RUN useradd flask
WORKDIR /home/flask
ADD . .
RUN pip install -r requirements.txt
RUN chmod a+x app.py test.py && chown -R flask:flask ./
ENV FLASK_APP app.py
EXPOSE 5000
USER flask
CMD ["python", "app.py"]