FROM ambakshi/amazon-linux:latest

RUN yum install -y python27-pip python27-devel libcffi-devel libffi-devel libyaml-devel gcc openssl-devel git zip

VOLUME /letslambda

WORKDIR /letslambda

RUN pip install virtualenv

CMD /letslambda/build.sh
