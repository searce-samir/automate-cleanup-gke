#!/bin/bash
#Store the release names alone for a specific tiller.
helm_releases=(`helm ls --short`)
#Store current date
CURRENT_TIME_SECONDS=`date '+%s'`
for RELEASE in ${helm_releases[@]};
do
  LAST_DEPLOYED=`helm status $RELEASE  --output=json | jq -r '.info.last_deployed'`
  LAST_DEPLOYED_SECONDS=`gdate --date "$LAST_DEPLOYED" "+%s"`
  SEC_DIFF=`expr $CURRENT_TIME_SECONDS - $LAST_DEPLOYED_SECONDS`
  DAY_DIFF=`expr $SEC_DIFF / 86400`
  if [ "$DAY_DIFF" -gt 1 ]; then
    if [[ $RELEASE == master-* ]] ;
    then
    echo "$RELEASE is older than a 1 day. but its a master service."	
    else
    echo "$RELEASE is older than a 1 day. Proceeding to delete it."
    #helm delete $RELEASE
    fi
  fi
done
