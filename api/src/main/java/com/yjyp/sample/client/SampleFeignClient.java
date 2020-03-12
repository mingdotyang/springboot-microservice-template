package com.yjyp.sample.client;

import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(name = "sample", url = "http://sample")
public class SampleFeignClient {
}
