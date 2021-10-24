# clone all my repos
# TODO - private repos and ssh
mkdir -p ~/workspace/git/kgeorgiev93/
cd ~/workspace/git/kgeorgiev93
curl -s https://api.github.com/users/kgeorgiev93/repos | grep \"clone_url\" | awk '{print $2}' | sed -e 's/"//g' -e 's/,//g' | xargs -n1 git clone

# hunter
git clone https://github.com/cpp-pm/hunter ~/workspace/git/cpp-pm/hunter
git clone https://github.com/cpp-pm/hunter-testing ~/workspace/git/cpp-pm/hunter-testing
git clone https://github.com/ruslo/polly ~/workspace/git/ruslo/polly/
