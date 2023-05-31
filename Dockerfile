FROM okteto/okteto:2.16.2

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"] 
