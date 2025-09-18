ls -lrt
gcloud config set project qwiklabs-gcp-01-c374b0be5e12
uvx agent-starter-pack create myBlogAgent
uvx agent-starter-pack create myBlogAgent -a adk@blogger-agent
uvx agent-starter-pack create MyBlogAgent -a adk@blogger-agent
uvx agent-starter-pack create myBlogAgent
gh auth login -p https -h github.com -w
gh repo myblogagent
gh repo view myblogagent
gh repo delete myblogagent --yes
gh repo create myblogagent 
gh repo create myblogagent --public
git init -b main 
git remote add origin https://github.com/$(gh api user | jq -r .login)/myblogagent.git
git add -A
git config --global user.email "$(gh api user | jq -r .email)" # Uses your GitHub email
git config --global user.name "$(gh api user | jq -r .name)" # Uses your GitHub username
git commit -m "Initial agent setup"
git push --set-upstream origin main
pwd
cd myblogagent/
ls -lrt
cd frontend/
ls -lrty
ls -lrt
stream run streamlit_app.py 
streamlit run streamlit_app.py 
cd ../..
pwd
ls -lrt
cd myblogagent/
# Avoid CPU throttling for Cloud Run in constrained lab environments
find . -type f -name "*.yaml" -print0 | xargs -0 sed -i '/--no-cpu-throttling/d'
sed -i '/--no-cpu-throttling/d' Makefile
# Adjust load test duration for staging
sed -i 's/-t 30s/-t 10s/g' .cloudbuild/staging.yaml
# Reduce max instances to conserve resources
sed -i 's/max_instance_count = 10/max_instance_count = 4/g' deployment/terraform/service.tf
sed -i 's/max_instance_count = 10/max_instance_count = 4/g' deployment/terraform/dev/service.tf
cd ..
# Avoid CPU throttling for Cloud Run in constrained lab environments
find . -type f -name "*.yaml" -print0 | xargs -0 sed -i '/--no-cpu-throttling/d'
sed -i '/--no-cpu-throttling/d' Makefile
# Adjust load test duration for staging
sed -i 's/-t 30s/-t 10s/g' .cloudbuild/staging.yaml
# Reduce max instances to conserve resources
sed -i 's/max_instance_count = 10/max_instance_count = 4/g' deployment/terraform/service.tf
sed -i 's/max_instance_count = 10/max_instance_count = 4/g' deployment/terraform/dev/service.tf
ls -lrt
ls -alrt
cd myblogagent/
ls -lrt
more Makefile 
sed -i 's/-t 30s/-t 10s/g' .cloudbuild/staging.yaml
ls -alrt
pwd
cd ..
