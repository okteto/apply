FROM okteto/okteto:2.29.1

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"] 
