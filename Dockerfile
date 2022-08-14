#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b Luxio-Userbot https://github.com/Xavieraluxio/Luxio-Userbot /home/luxiouserbot/ \
    && chmod 777 /home/luxiouserbot \
    && mkdir /home/luxiouserbot/bin/

COPY ./sample_config.env ./config.env* /home/luxiouserbot/

WORKDIR /home/luxiouserbot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
