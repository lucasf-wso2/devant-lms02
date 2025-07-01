import ballerina/http;

listener http:Listener httpDefaultListener = http:getDefaultListener();

service /hello on httpDefaultListener {
    resource function get greeting() returns error|json|http:InternalServerError {
        do {
            return "hello devant";
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }
}
