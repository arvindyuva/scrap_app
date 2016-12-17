# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

Rails version: 5.0.0.1

Ruby version: 2.3.1 (i686-linux)

1: Fetch and store H1, H2, H3 and Links from url.
Path: http://localhost:3000/api/v1/scraps
Method: Post
Body:
{
	"url": "http://stackoverflow.com/questions/24179410/render-action-with-parameters-after-form-error"
}
Response:

[
  {
    "main_url": [
      "http://stackoverflow.com/questions/24179410/render-action-with-parameters-after-form-error",
      {
        "links": []
      },
      {
        "h1_data": []
      },
      {
        "h2_data": [
          " 2 Answers ",
          "Your Answer",
          " Not the answer you're looking for? Browse other questions tagged ",
          " or ",
          ". "
        ]
      },
      {
        "h3_data": []
      }
    ]
  }
]



2: Fetch all data.
Path: http://localhost:3000/api/v1/scraps
Method: get

Response:

[
  {
    "main_url_0": [
      "http://www.threescompany.com/",
      {
        "links": [
          "http://www.threescompany.com/favicon.ico"
        ]
      },
      {
        "h1_data": []
      },
      {
        "h2_data": []
      },
      {
        "h3_data": []
      }
    ],
    "main_url_1": [
      "https://aboard-offices.herokuapp.com/",
      {
        "links": []
      },
      {
        "h1_data": [
          "Last Minute Offer! "
        ]
      },
      {
        "h2_data": [
          "THE BEST PROMOTIONS",
          "Last Minute"
        ]
      },
      {
        "h3_data": []
      }
    ],
    "main_url_2": [
      "http://stackoverflow.com/questions/24179410/render-action-with-parameters-after-form-error",
      {
        "links": []
      },
      {
        "h1_data": []
      },
      {
        "h2_data": [
          " 2 Answers ",
          "Your Answer",
          " Not the answer you're looking for? Browse other questions tagged ",
          " or ",
          ". "
        ]
      },
      {
        "h3_data": []
      }
    ],
    "main_url_3": [
      "mjhnhgjnhgj.com",
      {
        "links": []
      },
      {
        "h1_data": []
      },
      {
        "h2_data": []
      },
      {
        "h3_data": []
      }
    ]
  }
]
