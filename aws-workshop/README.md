# AWS Steps

# 1 
1.) Go to AWS console home 

2.) Click on All Services

3.) Under storage select S3\

4.) Then right click on create bucket

5.) Enter the bucket name and click create bucket

# 2
1.) Go to AWS console home 

2.) then click on service from there click All Services

3.) then under compute select lambda

4.) then in the right click on create function

5.) enter the bucket name and click create function

6.) On Create function page click on Author From scratch

7.) enter Fucntion name and select the runtime

8.) then click on Create function

9.) click on lambda function 

10.) Then under code source write your code and click on test 

11.) then a popup window will open Configure test event then enter Event name and save

12.) To give lambda function the access of s3 bucket

13.) give permission AWSLambdaExecute and AWSLambdaBasicExecutionRole-66bc6ca3-25e6-4a2d-87a8-e71c854b36b7


# 3
1.) click on function overview

2.) click on add trigger

3.) from select source name select API gatway 

4.) select Create a new API

5.) select API type REST API

6.) from security select open

7.) then click add 

8.) API link will be generated and click on it.

9.) then logs will be stored in the s3 bucket

