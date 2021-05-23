<h1 align="center">Welcome to myRound 👋</h1>
<p>
    myRound is a stat tracker for your round of golf. Its designed to be light weight and easy to use. Most stat trackers require either to much time to fill out mid round or gives you to much useless infomration. myRound fixes this by having a quick interface and a simple review screen
</p>

## Usage
<p>
Before your round of golf make sure to enter how many holes you are planning on playing. For each hole select the drop down and this will show you an image of a fairway and green. To mark where your drive hit the fairway just tap inside the image. Anything in the middle is a fairway and anything on the sides is the rough. The green works in the same way. You can determine how far each circle is. Just make sure to keep it the same for each hole. Then enter your puts and score. myRound will calculate the puts, score, fairway percentage and green in regulation percentage for you. After you round is over submit the round and view your summary page. You can note the round number and reference it later. 
</p>


>This is the backend API for myRound web application. This backend stores data and renders everything in json. This application communicates with its front end via fetch request. This backend uses postgres as its database. Frontend: https://github.com/turpp/myRound-frontend




# start

In terminal run:
* bundle install
* rails db:create
* rails db:migrate
* rails s

>The above will start get the backend up and running and also start a local server for you

## Author

👤 **Tripp White**

* Github: [@turpp](https://github.com/turpp)
* LinkedIn: @Thomas (Tripp) White www.linkedin.com/in/thomas-tripp-white

## Show your support

Give a ⭐️ if this project helped you!

***

## Contributing

 Bug reports and pull requests are welcome on GitHub at https://github.com/turpp/myRound-frontend. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

 ## License

 The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

* Ruby version
2.6.1