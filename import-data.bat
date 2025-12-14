@echo off
echo Importing data into MySQL container...

docker exec -i revticket-mysql mysql -uroot -p12345 < mysql-init\01-init-databases.sql

echo MySQL data imported successfully!
echo.
echo Sample data includes:
echo - 3 users (admin@revtickets.com, user@test.com, john@example.com)
echo - 6 events (movies, sports, concerts)
echo - 5 venues
echo - 8 shows
echo.
echo Password for all users: password
pause
