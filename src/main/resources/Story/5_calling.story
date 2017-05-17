Given an expert

When register with {"email": "kishor+test23@atlogys.com","password": "qwerty12" } as expert1

Then Verify Email

Then login with expert1

Then create a calender as    {
                             "title": "Experchatesting",
                                "start_time": "8:00:00",
                                "end_time": "11:00:00",
                                "timezone": "Asia/Kolkata",
                                "week_days": [
                                  1,2,3,4,5,6,7
                                ]
                            }


Then get the avilable slot of expert1
Given an user

When register with {"email": "kishor+test23@atlogys.com","password": "qwerty12" } as user1

Then Verify Email

Then login with user1

Then register a device as {
                          "device_type": "ios",
                          "device_name": "USer device",
                          "device_sub_type": "sas",
                          "device_id": "sas",
                          "device_token": "sas",
                          "device_os": "sas"
                          }


Given an expert
Then register a device as {
                          "device_type": "ios",
                          "device_name": "Expert device",
                          "device_sub_type": "sas",
                          "device_id": "sas",
                          "device_token": "sas",
                          "device_os": "sas"
                          }


Given an user
Then create a card with fake-masterpass-mastercard-nonce
Then schedule a session as {
                               "title": "a test call",
                               "details": "test",
                               "scheduled_datetime":"2017-05-29T02:40:00Z",
                               "expert_profile":1,
                               "expert":1,
                               "user_device":1,
                               "scheduled_duration": 20,
                               "card":1,
                               "promo_code": ""
                           }

Then check the session status
Then initiate the call

Given an expert
Then accept the call
Then check the session status
Given an user
Then extend an ongoing session by scheduled_duration of 20

Given an expert
Then disconnect the call
Then check the session status
Given an user
Then provide review as {
                           "overall_rating": 1,
                           "knowledge_rating": 1,
                           "communication_rating": 1,
                           "professionalism_rating": 1,
                           "text_review": "dsdsadsd"
                       }

Then check the revenue

Then schedule a session as {
                               "title": "a test call",
                               "details": "test",
                               "scheduled_datetime":"2017-05-29T02:50:00Z",
                               "expert_profile":1,
                               "expert":1,
                               "user_device":1,
                               "scheduled_duration": 20,
                               "card":1,
                               "promo_code": ""
                           }
Then cancel the session

Then get all the past session and verify

Then get all the future session and verify

Then check the session status

Then check the notification