Vesrion: 1.0.0

## Title: user registration

##### Description

This end point is used to create an account for a user. The only parameter required is the username.

##### End point

***POST*** `http://localhost:3000/sessions`

##### Sample request body

```
{
    "user": {"username": "francis"}
}
```

#### Sample response body

```
{
    "stauts": "created",
    "logged_in": true,
    "user": {
        "id": 1,
        "username": "francis",
        "created_at": "2022-12-02T16:21:10.813Z",
        "updated_at": "2022-12-02T16:21:10.813Z"
    }
}
```

## Title: logout

##### Description

This API is used to logout a user.

##### End point

***DELETE*** `http://localhost:3000/logout`

##### Sample response

```
{
    "status": 200,
    "logged_out": true
}
```

## Title: reserve a bike

##### Description

This end point is used to reserve a bike. The requirements required for this is the user_id, location and bike_id.

##### End point

***POST*** `http://127.0.0.1:3000/reservations`

The user and bike should exist in the Database before effecting a reservation

##### Request body

```
 {
    "reservation": {
        "user": "wayungi",
        "bike":"Honda",
        "location":"Kampala"
    }
}
```

##### Sample output

```
 {
    "reservations": {
        "id": 8,
        "user_id": 2,
        "location": "Kampala",
        "created_at": "2022-12-15T05:41:06.509Z",
        "updated_at": "2022-12-15T05:41:06.509Z",
        "bike_id": 4
    }
}
```

## Title: Get user's reservations

##### Description

This end point is used to get all the reservations is a user login.

##### End point

***GET*** `http://127.0.0.1:3000/reservations/{user_id}`

##### Sample request

`http://127.0.0.1:3000/reservations/2`

##### Sample output

```
{
    "user": {
        "id": 1,
        "username": "francis",
        "created_at": "2022-12-02T16:21:10.813Z",
        "updated_at": "2022-12-02T16:21:10.813Z"
    },
    "bike": {
        "id": 5,
        "name": "Twin Cam",
        "image": "https://picsum.photos/200",
        "description": "Nice bicycle for kids",
        "price": "700000.0",
        "created_at": "2022-12-05T22:38:40.192Z",
        "updated_at": "2022-12-05T22:38:40.192Z"
    }
}
```

## Title: Get bike details

##### Description

This API returns the name, image url, description and price of a particulr bike.

##### End point

***GET***`http://127.0.0.1:3000/bikes/{id}`

##### Sample request

`http://127.0.0.1:3000/bikes/1`

##### Sample response

```
{
 "id": 2,
    "name": "Yamaha",
    "image": "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.bikedekho.com%2Fyamaha%2Fimages&psig=AOvVaw28ZqW14QKCpKYnvShyGJIr&ust=1670362199561000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCIiJvp624_sCFQAAAAAdAAAAABAJ",
    "description": "Sports bike",
    "price": "800000.0",
    "created_at": "2022-12-05T21:34:29.476Z",
    "updated_at": "2022-12-05T21:34:29.476Z"
}
```

## Title: Get All bikes

##### Description

This API returns all the bikes in the databases.

##### End points

***GET*** `http://127.0.0.1:3000/bikes`

##### Sample request

`http://127.0.0.1:3000/bikes`

##### Sample responses

```
[
    {
        "id": 2,
        "name": "Yamaha",
        "image": "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.bikedekho.com%2Fyamaha%2Fimages&psig=AOvVaw28ZqW14QKCpKYnvShyGJIr&ust=1670362199561000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCIiJvp624_sCFQAAAAAdAAAAABAJ",
        "description": "Sports bike",
        "price": "800000.0",
        "created_at": "2022-12-05T21:34:29.476Z",
        "updated_at": "2022-12-05T21:34:29.476Z"
    },
    {
        "id": 4,
        "name": "Honda",
        "image": "https://www.joyebike.com/product/beast/images/banner-img-mobile.png",
        "description": "Suoer sports bike",
        "price": "500000.0",
        "created_at": "2022-12-05T21:36:17.156Z",
        "updated_at": "2022-12-05T21:36:17.156Z"
    }
]
```
