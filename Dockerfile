FROM ec2-35-180-113-35.eu-west-3.compute.amazonaws.com:5000/whanos-javascript

RUN npm install -g typescript@4.4.3

RUN tsc

RUN find . -name "*.ts" -type f -not -path "./node_modules/*" -delete
