package com.example.backend.controller.customerDAO;

import com.example.backend.model.customer.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/customer")
public class CustomerDAOImpl implements CustomerDAO {

    @Autowired
    private CustomerRepository customerRepository;
    @Autowired
    private AccountRepository accountRepository;
    @Autowired
    private AddressRepository addressRepository;
    @Autowired
    private FullNameRepository fullNameRepository;

    @Override
    public List<Customer> getAllCustomer() {
        return customerRepository.findAll();
    }

    @GetMapping("/allCustomer")
    @Override
    public List<Account> getAllAccount() {
        return accountRepository.findAll();
    }

    @Override
    public Customer getCustomerById(int id) {
        return customerRepository.findById(id).get();
    }

    @PostMapping("/register")
    @Override
    public ResponseEntity register(@RequestBody RegisterDTO registerDTO) {

        Customer customer = new Customer();
        Account account = new Account();
        Address address = new Address();
        FullName fullName = new FullName();

        if (customerRepository.existsByMail(registerDTO.getEmail())) {
            return new ResponseEntity("Da ton tai", HttpStatus.BAD_REQUEST);
        } else if (accountRepository.existsByUsername(registerDTO.getUsername())) {
            return new ResponseEntity("Username da ton tai", HttpStatus.BAD_REQUEST);
        } else {
            customer.setMail(registerDTO.getEmail());
            customer.setPhone(registerDTO.getPhone());
            customer.setGender(registerDTO.getGender());
            customer.setDob(registerDTO.getDob());
            customer.setMemberLevel(0);
            customerRepository.save(customer);

            Customer newCustomer = customerRepository.findByMail(customer.getMail());
            account.setUsername(registerDTO.getUsername());
            account.setPassword(registerDTO.getPassword());
            account.setCustomerID(newCustomer);
            account.setRole("0");
            accountRepository.save(account);

            address.setCity(registerDTO.getAddress());
            address.setCustomerID(newCustomer);
            addressRepository.save(address);

            fullName.setFirstName(registerDTO.getFirstName());
            fullName.setLastName(registerDTO.getLastName());
            fullName.setCustomerID(newCustomer);
            fullNameRepository.save(fullName);
            return ResponseEntity.ok().body(account);
        }


    }

    @GetMapping("/login")
    @Override
    public ResponseEntity login(@RequestParam(name = "username") String username, @RequestParam(name = "password") String password) {

        Account account = accountRepository.findByUsername(username);
        System.out.println(username);
        System.out.println(password);
        System.out.println(account.getPassword());
        if (password.equals(account.getPassword())) {
            return ResponseEntity.ok().body(account);
        } else {
            return new ResponseEntity("Sai mat khau", HttpStatus.BAD_REQUEST);
        }
    }
}
