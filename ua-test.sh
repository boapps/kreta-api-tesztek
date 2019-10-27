

# User credentials:
username="" # your e-Kréta username
password="" # password
school="" # school-code, begining of the url

header="Kreta.Ellenorzo/2.9.4.2019101401 (Android; G8341 0.0)"
header2="Kreta.Ellenorzo"
header3="Kreta.Ellenorzo/2.9.4.2019101401"

bearer_json=$(curl -H "User-Agent: $header" --data "institute_code=$school&userName=$username&password=$password&grant_type=password&client_id=919e0c1c-76a2-4646-a2fb-7085bbbf3c56" https://$school.e-kreta.hu/idp/api/v1/Token -H "Content-Type: application/x-www-form-urlencoded; charset=utf-8")

token=$(echo $bearer_json | jq ."access_token")

echo "got token: $token"

echo "trying without header:"
time curl -s -o /dev/null -w "code: %{http_code}" -H "Authorization: Bearer ${token:1:-1}" https://$school.e-kreta.hu/mapi/api/v1/Student

echo "using header: $header"
time curl -s -o /dev/null -w "code: %{http_code}" -H "Authorization: Bearer ${token:1:-1}" -H "User-Agent: $header" https://$school.e-kreta.hu/mapi/api/v1/Student

echo "using header: $header2"
time curl -s -o /dev/null -w "code: %{http_code}" -H "Authorization: Bearer ${token:1:-1}" -H "User-Agent: $header2" https://$school.e-kreta.hu/mapi/api/v1/Student

echo "using header: $header3"
time curl -s -o /dev/null -w "code: %{http_code}" -H "Authorization: Bearer ${token:1:-1}" -H "User-Agent: $header3" https://$school.e-kreta.hu/mapi/api/v1/Student
