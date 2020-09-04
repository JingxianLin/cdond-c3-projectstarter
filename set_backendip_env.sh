#!/bin/bash
ip=$(curl -H "token: 347407f8-3d4a-4990-98c5-3b96142561b4" --request GET https://api.memstash.io/values/backend )
export default API_URL=$ip