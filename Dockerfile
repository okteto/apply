FROM okteto/okteto:1.10.5 as cli

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"] 
