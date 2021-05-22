FROM python
COPY ./app /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
HEALTHCHECK --interval=5s --timeout=3s CMD curl -f http://localhost:5000 || nc -vz localhost 5000 || exit 1
ENTRYPOINT ["python"]
CMD ["app.py"]