This is the Vagrant configuration I use to launch virtual machines that I use as [IPython](http://ipython.org/) notebook servers.

To provision a virtual machine, run `vagrant up && make creds`.  This assumes you have a `[notebooks]` section in your AWS credentials file that his read/write access to S3.  To run an IPython notebook server, run `make run`.  To run an IPython notebook server using [`pyspark`](https://spark.apache.org/docs/0.9.0/python-programming-guide.html) use `make run-spark`.

With the included port forwarding, you can access the notebook server at `localhost:8888`.

This code is distributed under the [MIT License](http://opensource.org/licenses/MIT).
