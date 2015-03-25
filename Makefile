PROFILE_DIR=/vagrant/profile

run:
	vagrant ssh -c "tmux new-session -d -n run -s server 'ipython notebook --profile-dir=${PROFILE_DIR}'"
