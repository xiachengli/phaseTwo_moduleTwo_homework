package com.xcl;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.session.data.redis.config.annotation.web.http.EnableRedisHttpSession;

@SpringBootApplication
@EnableCaching
@EnableRedisHttpSession
public class SssApplication {

    public static void main(String[] args) {
        SpringApplication.run(SssApplication.class, args);
    }

}
