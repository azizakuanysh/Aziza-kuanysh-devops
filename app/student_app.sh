#!/bin/sh
STUDENT_NAME="${STUDENT_NAME:-Aziza}"
STUDENT_SURNAME="${STUDENT_SURNAME:-Kuanysh}"
STUDENT_GROUP="${STUDENT_GROUP:-IT2-2310}"
STUDENT_ID="${STUDENT_ID:-38287}"

echo "================================"
echo "DevOps Student Application"
echo "================================"
echo
echo "Name: $STUDENT_NAME"
echo "Surname: $STUDENT_SURNAME"
echo "Group: $STUDENT_GROUP"
echo "Student ID: $STUDENT_ID"
echo
echo "Application is running successfully!"

while true; do
  sleep 30
  echo "$(date) - still running"
done
