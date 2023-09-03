FROM python:3.6-slim
COPY ./rec.py /deploy/
COPY ./requirements.txt /deploy/
COPY ./similarity_model.pkl /deploy/
COPY ./catalog.pkl /deploy/
WORKDIR /deploy/
RUN pip install -r requirements.txt
EXPOSE 80
ENTRYPOINT ["python", "rec.py"]
