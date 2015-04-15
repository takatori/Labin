module.exports = {
    db: {
        production : "mongodb://mongoserv/inout",
        development: "mongodb://localhost/InOutManageService",
        test       : "mongodb://localhost/InOutManageService"
    },
    users: {
        db: {
            production : "http://inserv:3001",
            development: "http://localhost:3001",
            test       : "http://localhost:3001"
        },
        apis: {
            current : "/apis/users/current"
        }
    },
    "fluentd": {		
        "server": {		
            "ip": "192.168.0.23",		
            "port": "24224"		
        },		
        "options": {		
            "timeout": 3.0		
        }
    }
};