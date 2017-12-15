package com.example;

import org.springframework.stereotype.Service;

import java.net.InetAddress;
import java.net.UnknownHostException;

@Service
public class AddressServiceImpl implements AddressService {

    public String getServerAddress() throws UnknownHostException {
        return InetAddress.getLocalHost().getHostAddress();
    }
}
