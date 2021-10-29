#!/bin/sh

#set -e: ถ้ามีอะไร error ให้ออกเลย ไม่ต้องทำต่อ
set -e
mongoimport --host localhost --username $MONGODB_USERNAME --password $MONGODB_PASSWORD \
  --db $MONGODB_DATABASE --collection ratings --drop --file /docker-entrypoint-initdb.d/ratings_data.json