FROM ethereum/client-go:v1.11.1

COPY genesis.json /root/.ethereum/genesis.json
COPY password.txt /root/.ethereum/password.txt
COPY entrypoint.sh /root/.ethereum/entrypoint.sh

RUN chmod +x /root/.ethereum/entrypoint.sh

ENTRYPOINT ["/root/.ethereum/entrypoint.sh"]
