FROM nfcore/base:dev
LABEL maintainer="zhangdongqin2@126.com"
LABEL authors="zhangdongqin2@126.com" \
    description="Docker image containing all requirements for the smallRNApipe pipeline"

COPY environment.yaml /
RUN conda env create -f /environment.yaml && conda clean -a
ENV PATH /opt/conda/envs/small_rna_conda/bin:$PATH
