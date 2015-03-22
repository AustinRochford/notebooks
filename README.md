This is the Vagrant configuration I use to launch virtual machines that I use as [IPython](http://ipython.org/) notebook servers.

To provision a virtual machine, run `vagrant up`.  To run an IPython notebook server, SSH into the virtual machine (`vagrant ssh`) and run

```bash
ipython notebook --no-browser --ip=0.0.0.0 --notebook-dir=/vagrant/notebooks --profile-dir=/vagrant/profile
```

With the included port forwarding, you can access the notebook server at `localhost:8888`.
