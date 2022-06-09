package com.example.demo;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.zaxxer.hikari.HikariDataSource;

import lombok.RequiredArgsConstructor;


@Configuration
@MapperScan(value = "com.example.demo.*")
@EnableTransactionManagement
@RequiredArgsConstructor
public class PsqlDatabaseConfig {

    @Bean
    @ConfigurationProperties(prefix="spring.datasource.hikari")
    public DataSource db1DataSource() {
        return DataSourceBuilder.create()
        .type(HikariDataSource.class)
        .build();
    }

    @Bean
    public SqlSessionFactory db1SqlSessionFactory(ApplicationContext applicationContext)
            throws Exception {
        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
        sqlSessionFactoryBean.setDataSource(db1DataSource());
        sqlSessionFactoryBean.setMapperLocations(
                applicationContext.getResources("classpath:publicMapper/*.xml"));

        return sqlSessionFactoryBean.getObject();
    }

    @Bean
    public SqlSessionTemplate db1SqlSessionTemplate(SqlSessionFactory db1SqlSessionFactory)
            throws Exception {
        return new SqlSessionTemplate(db1SqlSessionFactory);
    }
}
