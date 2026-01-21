import requests
import json

Base_Uri = "https://gorest.co.in/"
auth_token = "60e1e3fcdcba9c9bcee643c937739234340597d69b3963a70d30395c2566b416"


def get_users_list():
    try:
        url = Base_Uri + "public/v2/users"
        print("url : " + url)
        header = {"Authorization": auth_token}
        response = requests.get(url, headers=header)
        # CHECK THE STATUS CODE
        if response.status_code == 200:
            print(f"The status of the GET users list" + str(response.status_code))
            json_data = response.json()
            data_header = response.headers
            print(f"The response of the GET users list" + json.dumps(json_data))
        else:
            print("The GET API failed!")
    except Exception as e:
        print(f"Error: {e}")

# POST Users
def post_create_user():
    try:
        url= Base_Uri + "public/v2/users"
        print ("url" + url)
        header ={"Authorization" : auth_token}
    except Exception as e:
        print(f"Error:{e}")
