package com.example.casestady3.service;

import com.example.casestady3.DAO.AccountDAO;
import com.example.casestady3.model.Account;

import java.util.List;

public class AccountService {
    AccountDAO accountDAO = new AccountDAO();

    public Account checklogin(String username, String password) {
        return accountDAO.checklogin(username,password);
    }

    public List<Account> getAllAccount(){
        return accountDAO.getAllAccount();
    }

    public Account findAccountById(int id) {
        return accountDAO.findAccountById(id);
    }

    public void editAccount(Account account) {
        accountDAO.editAccount(account);
    }

    public void deleteAccount(int id) {
        accountDAO.deleteAccount(id);
    }

    public boolean save(Account account) {
        return accountDAO.save(account);
    }
}
