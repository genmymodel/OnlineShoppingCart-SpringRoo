// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.genmymodel.shoppingcart.web;

import com.genmymodel.shoppingcart.domain.Account;
import com.genmymodel.shoppingcart.domain.Customer;
import com.genmymodel.shoppingcart.domain.LineItem;
import com.genmymodel.shoppingcart.domain.Order_;
import com.genmymodel.shoppingcart.domain.Payment;
import com.genmymodel.shoppingcart.domain.Product;
import com.genmymodel.shoppingcart.domain.ShoppinCart;
import com.genmymodel.shoppingcart.domain.WebUser;
import com.genmymodel.shoppingcart.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Account, String> ApplicationConversionServiceFactoryBean.getAccountToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.genmymodel.shoppingcart.domain.Account, java.lang.String>() {
            public String convert(Account account) {
                return new StringBuilder().append(account.getId_()).append(' ').append(account.getBillingAddress()).append(' ').append(account.getOpen_()).append(' ').append(account.getIsClosed()).toString();
            }
        };
    }
    
    public Converter<Long, Account> ApplicationConversionServiceFactoryBean.getIdToAccountConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.genmymodel.shoppingcart.domain.Account>() {
            public com.genmymodel.shoppingcart.domain.Account convert(java.lang.Long id) {
                return Account.findAccount(id);
            }
        };
    }
    
    public Converter<String, Account> ApplicationConversionServiceFactoryBean.getStringToAccountConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.genmymodel.shoppingcart.domain.Account>() {
            public com.genmymodel.shoppingcart.domain.Account convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Account.class);
            }
        };
    }
    
    public Converter<Customer, String> ApplicationConversionServiceFactoryBean.getCustomerToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.genmymodel.shoppingcart.domain.Customer, java.lang.String>() {
            public String convert(Customer customer) {
                return new StringBuilder().append(customer.getId_()).append(' ').append(customer.getAddress()).append(' ').append(customer.getPhone()).append(' ').append(customer.getEmail()).toString();
            }
        };
    }
    
    public Converter<Long, Customer> ApplicationConversionServiceFactoryBean.getIdToCustomerConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.genmymodel.shoppingcart.domain.Customer>() {
            public com.genmymodel.shoppingcart.domain.Customer convert(java.lang.Long id) {
                return Customer.findCustomer(id);
            }
        };
    }
    
    public Converter<String, Customer> ApplicationConversionServiceFactoryBean.getStringToCustomerConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.genmymodel.shoppingcart.domain.Customer>() {
            public com.genmymodel.shoppingcart.domain.Customer convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Customer.class);
            }
        };
    }
    
    public Converter<LineItem, String> ApplicationConversionServiceFactoryBean.getLineItemToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.genmymodel.shoppingcart.domain.LineItem, java.lang.String>() {
            public String convert(LineItem lineItem) {
                return new StringBuilder().append(lineItem.getQuantity()).append(' ').append(lineItem.getPrice()).toString();
            }
        };
    }
    
    public Converter<Long, LineItem> ApplicationConversionServiceFactoryBean.getIdToLineItemConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.genmymodel.shoppingcart.domain.LineItem>() {
            public com.genmymodel.shoppingcart.domain.LineItem convert(java.lang.Long id) {
                return LineItem.findLineItem(id);
            }
        };
    }
    
    public Converter<String, LineItem> ApplicationConversionServiceFactoryBean.getStringToLineItemConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.genmymodel.shoppingcart.domain.LineItem>() {
            public com.genmymodel.shoppingcart.domain.LineItem convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), LineItem.class);
            }
        };
    }
    
    public Converter<Order_, String> ApplicationConversionServiceFactoryBean.getOrder_ToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.genmymodel.shoppingcart.domain.Order_, java.lang.String>() {
            public String convert(Order_ order_) {
                return new StringBuilder().append(order_.getNumber_()).append(' ').append(order_.getOrdered()).append(' ').append(order_.getShipped()).append(' ').append(order_.getShipTo()).toString();
            }
        };
    }
    
    public Converter<Long, Order_> ApplicationConversionServiceFactoryBean.getIdToOrder_Converter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.genmymodel.shoppingcart.domain.Order_>() {
            public com.genmymodel.shoppingcart.domain.Order_ convert(java.lang.Long id) {
                return Order_.findOrder_(id);
            }
        };
    }
    
    public Converter<String, Order_> ApplicationConversionServiceFactoryBean.getStringToOrder_Converter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.genmymodel.shoppingcart.domain.Order_>() {
            public com.genmymodel.shoppingcart.domain.Order_ convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Order_.class);
            }
        };
    }
    
    public Converter<Payment, String> ApplicationConversionServiceFactoryBean.getPaymentToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.genmymodel.shoppingcart.domain.Payment, java.lang.String>() {
            public String convert(Payment payment) {
                return new StringBuilder().append(payment.getId_()).append(' ').append(payment.getPaidDate()).append(' ').append(payment.getTotal()).append(' ').append(payment.getDetails()).toString();
            }
        };
    }
    
    public Converter<Long, Payment> ApplicationConversionServiceFactoryBean.getIdToPaymentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.genmymodel.shoppingcart.domain.Payment>() {
            public com.genmymodel.shoppingcart.domain.Payment convert(java.lang.Long id) {
                return Payment.findPayment(id);
            }
        };
    }
    
    public Converter<String, Payment> ApplicationConversionServiceFactoryBean.getStringToPaymentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.genmymodel.shoppingcart.domain.Payment>() {
            public com.genmymodel.shoppingcart.domain.Payment convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Payment.class);
            }
        };
    }
    
    public Converter<Product, String> ApplicationConversionServiceFactoryBean.getProductToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.genmymodel.shoppingcart.domain.Product, java.lang.String>() {
            public String convert(Product product) {
                return new StringBuilder().append(product.getId_()).append(' ').append(product.getName_()).append(' ').append(product.getDescription()).toString();
            }
        };
    }
    
    public Converter<Long, Product> ApplicationConversionServiceFactoryBean.getIdToProductConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.genmymodel.shoppingcart.domain.Product>() {
            public com.genmymodel.shoppingcart.domain.Product convert(java.lang.Long id) {
                return Product.findProduct(id);
            }
        };
    }
    
    public Converter<String, Product> ApplicationConversionServiceFactoryBean.getStringToProductConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.genmymodel.shoppingcart.domain.Product>() {
            public com.genmymodel.shoppingcart.domain.Product convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Product.class);
            }
        };
    }
    
    public Converter<ShoppinCart, String> ApplicationConversionServiceFactoryBean.getShoppinCartToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.genmymodel.shoppingcart.domain.ShoppinCart, java.lang.String>() {
            public String convert(ShoppinCart shoppinCart) {
                return new StringBuilder().append(shoppinCart.getCreationDate()).toString();
            }
        };
    }
    
    public Converter<Long, ShoppinCart> ApplicationConversionServiceFactoryBean.getIdToShoppinCartConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.genmymodel.shoppingcart.domain.ShoppinCart>() {
            public com.genmymodel.shoppingcart.domain.ShoppinCart convert(java.lang.Long id) {
                return ShoppinCart.findShoppinCart(id);
            }
        };
    }
    
    public Converter<String, ShoppinCart> ApplicationConversionServiceFactoryBean.getStringToShoppinCartConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.genmymodel.shoppingcart.domain.ShoppinCart>() {
            public com.genmymodel.shoppingcart.domain.ShoppinCart convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), ShoppinCart.class);
            }
        };
    }
    
    public Converter<WebUser, String> ApplicationConversionServiceFactoryBean.getWebUserToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.genmymodel.shoppingcart.domain.WebUser, java.lang.String>() {
            public String convert(WebUser webUser) {
                return new StringBuilder().append(webUser.getLogin()).append(' ').append(webUser.getPassword_()).toString();
            }
        };
    }
    
    public Converter<Long, WebUser> ApplicationConversionServiceFactoryBean.getIdToWebUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.genmymodel.shoppingcart.domain.WebUser>() {
            public com.genmymodel.shoppingcart.domain.WebUser convert(java.lang.Long id) {
                return WebUser.findWebUser(id);
            }
        };
    }
    
    public Converter<String, WebUser> ApplicationConversionServiceFactoryBean.getStringToWebUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.genmymodel.shoppingcart.domain.WebUser>() {
            public com.genmymodel.shoppingcart.domain.WebUser convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), WebUser.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getAccountToStringConverter());
        registry.addConverter(getIdToAccountConverter());
        registry.addConverter(getStringToAccountConverter());
        registry.addConverter(getCustomerToStringConverter());
        registry.addConverter(getIdToCustomerConverter());
        registry.addConverter(getStringToCustomerConverter());
        registry.addConverter(getLineItemToStringConverter());
        registry.addConverter(getIdToLineItemConverter());
        registry.addConverter(getStringToLineItemConverter());
        registry.addConverter(getOrder_ToStringConverter());
        registry.addConverter(getIdToOrder_Converter());
        registry.addConverter(getStringToOrder_Converter());
        registry.addConverter(getPaymentToStringConverter());
        registry.addConverter(getIdToPaymentConverter());
        registry.addConverter(getStringToPaymentConverter());
        registry.addConverter(getProductToStringConverter());
        registry.addConverter(getIdToProductConverter());
        registry.addConverter(getStringToProductConverter());
        registry.addConverter(getShoppinCartToStringConverter());
        registry.addConverter(getIdToShoppinCartConverter());
        registry.addConverter(getStringToShoppinCartConverter());
        registry.addConverter(getWebUserToStringConverter());
        registry.addConverter(getIdToWebUserConverter());
        registry.addConverter(getStringToWebUserConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
