FROM okteto/okteto:2.28.1

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"] 
