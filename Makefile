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
	${SSH} -c "tmux new-session -d -n run -s server 'jupyter notebook --config=/vagrant/config/ipython_notebook_config.py --no-browser --ip=0.0.0.0'"

run-spark:
	${SSH} -c "tmux new-session -d -n run -s server 'PYSPARK_DRIVER_PYTHON=jupyter PYSPARK_DRIVER_PYTHON_OPTS=\"notebook --config=/vagrant/config/ipython_notebook_config.py --no-browser --ip=0.0.0.0\" /opt/spark-1.6.1-bin-hadoop2.6/bin/pyspark'"
