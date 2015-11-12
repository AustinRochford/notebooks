PROFILE_DIR=/vagrant/profile
SSH=vagrant ssh

AWS_USER=notebooks

.PHONY=creds kill restart run

creds:
	grep -A2 ${AWS_USER} ~/.aws/credentials | sed 's/${AWS_USER}/default/g' > credentials
	${SSH} -c "mkdir -p ~/.aws && ln -sf /vagrant/credentials ~/.aws/credentials"

kill:
	${SSH} -c "tmux kill-session -t server || true"

restart: kill run;

run:
	${SSH} -c "tmux new-session -d -n run -s server 'ipython notebook --profile-dir=${PROFILE_DIR}'"
