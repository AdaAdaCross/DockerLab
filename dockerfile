FROM alpine
COPY lbs_727.sh .
RUN chmod ugo+x lbs_727.sh
CMD ./lbs_727.sh
