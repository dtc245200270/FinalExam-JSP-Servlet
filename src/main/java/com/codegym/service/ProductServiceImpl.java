package com.codegym.service;

import com.codegym.model.Product;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products = new HashMap<>();

    static {
        products.put(1, new Product(1, "iPhone 15 Pro", 999.0, "Titanium, A17 Pro", "Apple"));
        products.put(2, new Product(2, "Galaxy S24 Ultra", 1199.0, "AI Phone, Snapdragon 8 Gen 3", "Samsung"));
        products.put(3, new Product(3, "MacBook Air M3", 1099.0, "Thin, Fast, Liquid Retina", "Apple"));
        products.put(4, new Product(4, "Dell XPS 13", 1250.0, "InfinityEdge display", "Dell"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product> result = new ArrayList<>();
        for (Product product : products.values()) {
            if (product.getName().toLowerCase().contains(name.toLowerCase())) {
                result.add(product);
            }
        }
        return result;
    }
}
