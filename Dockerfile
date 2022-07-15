FROM python:bullseye
COPY requirements.txt ./
COPY notebook.ipynb ./
RUN pip install -r requirements.txt
RUN jupyter-nbconvert --execute --to html notebook.ipynb 