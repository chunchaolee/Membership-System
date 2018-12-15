# Membership System
> Member system of the website which user can browse products.

## Installation & Setup
#### 1. Clone repository
```
$ git clone https://github.com/chunchaolee/Membership-System.git
```

#### 2. Setup Environment
  - Ruby version: 2.4.4
  - Rails version: 5.2.2
  - MySQL: 5.7.24 Homebrew

#### 3. Setup Database
  - database.yml
  ```
  cp ~/member_system/config/database.example.yml ~/member_system/config/database.yml
  ```
  - Setup `username` and `password` to your `database.yml`.

#### 4. Setup Rails
  - Gem install
  ```
  $ bundle install
  ```

  - Migration
  ```
  $ rails db:migrate
  ```

  - Create fake data (not necessary)
  ```
  rails db:seed:fake_data
  ```

  - Run Rspec for testing
  ```
  $ rspec
  ```

  - Run Server at local
  ```
  $ rails s
  ```


#### if `rails db:seed:fake_data` are executed, you can use following account to login,
  - Admin ACCOUNT: admin@ms.com ; PASSWORD: 123456
  - Premium ACCOUNT: premium@ms.com ; PASSWORD: 123456
  - Normal ACCOUNT: normal@ms.com ; PASSWORD: 123456


## User Story

  - A user can register as a normal user
  - A user can browse products on this website
  - A user can choose to purchase premium membership(can skip payment)
  - A premium member can see products with discount prices
  - A user can be set as admin
  - An admin can create/edit products on this website
  - A product would have product price/name/image
  