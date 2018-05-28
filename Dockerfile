FROM joshendriks/walletbase

RUN apt-get update \
    && apt-get -y upgrade \
	&& apt-get -y install libminiupnpc-dev libminiupnpc-dev
	
	
ENV GIT_COIN_URL    https://github.com/anucore/anucore.git
ENV GIT_COIN_NAME   anucore   

RUN	git clone $GIT_COIN_URL $GIT_COIN_NAME \
	&& cd $GIT_COIN_NAME \
	&& chmod +x share/genbuild.sh \
	&& chmod +x src/leveldb/build_detect_platform \
	&& cd src \
	&& make -f	makefile.unix RELEASE=1\
	&& cp AnuCoind /usr/local/bin \
	&& cd / && rm -rf /$GIT_COIN_NAME \
	&& mkdir /data \
	&& mkdir /data/.AnuCoin
	
#Add a config so you can run without providing a AnuCoin.conf through a volume
COPY AnuCoin.conf /data/.AnuCoin/AnuCoin.conf

#rpc and p2p port
EXPOSE 36964 36963

ENV HOME /data

COPY start.sh /start.sh
RUN chmod 777 /start.sh
CMD /start.sh