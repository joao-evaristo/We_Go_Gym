start:
	bundle install 
	npm install
	rails db:migrate
	rails s -b 0.0.0.0