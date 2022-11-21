package com.mall.columnSite;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@MapperScan(value={"com.mall.columnSite.mapper"})
@SpringBootApplication
public class ColumnSiteApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(ColumnSiteApplication.class, args);
	}

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder applicationBuilder) {
		return applicationBuilder.sources(ServletInitializer.class);
	}

}
