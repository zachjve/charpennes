for i in {1..100}
do
   curl -H "Host: balancer.hackycorp.com" http://hackycorp.com
   curl -H "Host: balancer.hackycorp.com" http://hackycorp.com
   curl -H "Host: balancer.hackycorp.com" http://hackycorp.com
   curl -H "Host: balancer.hackycorp.com" http://hackycorp.com
   curl -H "Host: balancer.hackycorp.com" http://hackycorp.com
done
