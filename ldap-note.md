# Lightweight Directory Access Protocol (LDAP) Note

## 1. Client Side

### 1.1. Install LDAP Packages

```
sudo apt install libnss-ldapd libpam-ldapd ldap-utils nscd nslcd
```

### 1.2. Specify LDAP Server and Configure Authentication

- ldap_url = ldap://ldapserver.example.local
- ldap_search_base = dc=example,dc=local
- Name services to configure
  - [x] passwd
  - [x] group
  - [x] shadow

### 1.3. (If needed) Reconfigure Authentication Settings

```
sudo dpkg-reconfigure nslcd 
sudo dpkg-reconfigure libnss-ldapd
```
