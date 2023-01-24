FROM python
WORKDIR /src/
ARG arr=[1,2,3,4,5]
ENV ARRAY ${arr}
RUN pip install numpy
COPY ex1.py .
CMD python ex1.py 