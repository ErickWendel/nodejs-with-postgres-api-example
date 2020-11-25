HOST=localhost:3000

echo '\n\n creating Chapolin'
CREATE=$(
curl --silent -X POST \
    --header "Content-Type: application/json" \
    --data-binary '{"name":"Chapolin","power":"Strength"}' \
    $HOST/heroes
)

echo $CREATE | jq

ID=$(echo $CREATE | jq .id)

echo "\n\n requesting chapolin $ID"
curl --silent $HOST/heroes/$ID | jq

echo '\n\n requesting all heroes'
curl --silent $HOST/heroes | jq

echo "\n\n updating chapolin $ID"
curl --silent -X PUT \
    --header "Content-Type: application/json" \
    --data-binary '{"name":"Batman","power":"Rich"}' \
    $HOST/heroes/$ID \
    | jq

echo "\n\n requesting id: $ID"
curl --silent $HOST/heroes/$ID | jq

echo "\n\n removing id: $ID"
curl --silent -X DELETE \
    --header "Content-Type: application/json" \
    $HOST/heroes/$ID \
    | jq

echo '\n\n requesting all heroes'
curl --silent $HOST/heroes | jq
