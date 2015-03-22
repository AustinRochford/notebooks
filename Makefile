NOTEBOOK_DIR=/vagrant/notebooks 
PROFILE_DIR=/vagrant/profile
IP=0.0.0.0

run:
	vagrant ssh -c "tmux new-session -d -n run -s server 'ipython notebook --no-browser --ip=${IP} --notebook-dir=${NOTEBOOK_DIR} --profile-dir=${PROFILE_DIR}'"
