## Portfolio Manager and Hedger
Portfolio Manager and Hedger is a financial web app that provides investment advice based on dynamic hedging algorithm, as well as real-time stock news, quotes, charts and watchlist monitoring including recent viewed, most active, gainers and losers. This is the back-end, it requires [Portfolio Manager](https://github.com/rainANDshine/portfolio-manager) to run.

## Technical Aspects
+ Created hedging algorithm to provide investment guidance dynamically based on addition / deletion and long / short of positions
+ Set multiple fetches in interval to pull and update data in real-time from external APIs
+ Crated front-end application using React
+ Built back-end JSON API server with full CRUD functions using Ruby on Rails
+ Implemented Semantic UI React and custom CSS to design front-end

## Latest Stable Branch
Master

## Installation
1. git clone https://github.com/rainANDshine/portfolio-database

2. bundle

3. rails db:migrate db:seed

4. rails s -p 3001 *(currently Port 3001 is what my back-end server uses and where my front-end server fetches through)*

## Credits
Solo full-stack project built by [Shun Yao](https://github.com/rainANDshine)

## Screenshots
<img src="1.png" alt="1">
<img src="2.png" alt="2">
<img src="3.png" alt="3">
<img src="4.png" alt="4">
<img src="5.png" alt="5">

## License
MIT ©
