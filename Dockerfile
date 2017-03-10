# CentOS  based 'Jenkins' container
FROM centos
MAINTAINER chperiya@cisco.com

ENV TERRAFORM_VERSION=0.7.7

# Install required software packages
RUN yum install -y unzip && \
    yum install -y git && \
    yum install -y ntp ntpdate ntp-doc


# Install Terraform package
RUN curl -Ls https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -o terraform.zip && \
    unzip terraform.zip -d /usr/local/bin && \
    rm -f terraform.zip

RUN cd /home/ && \
    git clone https://github.com/chitra24/SampleRepo.git


#expose port
EXPOSE 8080

# entrypoint to start lcs service when container kicks off to run
ENTRYPOINT ["/home/SampleTest.sh"] 


#RUN cd /home/Terraform/Test/

#RUN  yum remove ntpdate && \
 #   ntpdate -s time.nist.gov && \
  #   service ntpdate start

    #iecho -ne "- with `terraform version`\n" >> /root/.built
#ENTRYPOINT ["/home/"]

#CMD ["git clone https://github.com/ramanacs09/Terraform.git" ]
