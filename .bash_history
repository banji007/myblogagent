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
