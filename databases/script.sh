#!/bin/sh

#set -e: ถ้ามีอะไร error ให้ออกเลย ไม่ต้องทำต่อ
set -e
mongoimport --host localhost --db ratings \
  --collection ratings --drop --file /docker-entrypoint-initdb.d/ratings_data.json