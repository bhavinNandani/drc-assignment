# README

	Rails 6.0.3.4
	Ruby 2.7.2
	psql 13.1



	Commands to be run while on Production :






	To push the code to live commands :


		to commit the code
			git add .   # if we need to commit only single line than we only pass the file name
			git commit -m "Message goes here"

		to push to live

			git push heroku master

			heroku run rake db:migrate

			heroku ps:scale web=1

			heroku psql

			heroku open

			heroku logs --tail

			heroku run rails console

			heroku run rake db:migrate