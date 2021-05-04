FROM databricksruntime/python:7.x

COPY ./requirements.txt ./
RUN /databricks/conda/envs/dcs-minimal/bin/pip install -r requirements.txt

COPY ./dist/*.whl ./
RUN /databricks/conda/envs/dcs-minimal/bin/pip install *.whl
