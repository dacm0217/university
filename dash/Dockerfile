FROM python
WORKDIR /archivosdash
COPY ./archivosdash/requerimientos.txt  requerimientos.txt
RUN ["pip3","install","-r","./requerimientos.txt"]
CMD ["python3","./main.py"]
EXPOSE 8050