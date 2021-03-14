FROM python:3.9.2

ENV PYTHONDONTWRITEBYTECODE=true

WORKDIR /workspace
COPY requirements.txt .
RUN pip install -r requirements.txt && rm requirements.txt

# # Add Tini
# ENV TINI_VERSION v0.19.0
# ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
# RUN chmod +x /tini
# ENTRYPOINT ["/tini", "--"]
# # Run your program under Tini
# CMD ["/your/program", "-and", "-its", "arguments"]
# # or docker run your-image /your/program ...

RUN mkdir -p /root/.jupyter
COPY jupyter_server_config.json /root/.jupyter/

CMD tail -f /dev/null
# CMD ["jupyter", "lab", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]