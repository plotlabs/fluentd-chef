# fluentd chef cookbook

Please follow the [blog](https://medium.com/@saurabhgupta_43828/fluentd-cookbook-for-chefs-a4121d955d9e
) to use this cookbook with your chef-client


Fluentd Cookbook for Chefs
Often you find yourself in a situation, where finding bugs becomes a tedious process and you start looking for some central logging solution. Now, fluentd might be the first choice for such situations, but setting it up is really painful and time taking. Therefore, following is a guide to setup fluentd on your systems using a chef development kit and the cookbook code at the following link:

https://github.com/plotlabs/fluentd-chef

First of all, you need to install the Chef Development Kit from the official website: https://downloads.chef.io/chefdk

Once we are done installing Chef DK and cloning the code from the Github repo, we are good to go for our setup (and by setup, I mean running the following simple command, sit back and relax):

chef-client --local-mode -—runlist “fluentd::default”
This will set up a logging mechanism listening at PORT 8888 of your local system. To test the setup simply run the following cURL command:

curl -X POST -d 'json={"json":"message"}' http://localhost:8888/debug.test
The above command means you are sending an object to your fluentd server which is listening on PORT 8888. You can find this log captured in /var/log/td-agent/td-agent.log.

I hope this was a good read. Happy Coding!
