# silver-palm-tree

# Start the project:
```bash
bundle
rails assets:precompile
rspec                   # Сheck app's workability
rails server            # DONE! Please check styles/js
```

# Start the project with Docker:
```bash
sudo docker compose -f docker-compose.dev.yml up --build
```
In the new terminal:
```bash
sudo docker compose -f docker-compose.dev.yml exec web bash
rails db:migrate
rails db:seed
rails assets:precompile
```
