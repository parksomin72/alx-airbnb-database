# Database Normalization – Airbnb Clone

**Objective**: Ensure all database entities are normalized to **Third Normal Form (3NF)** to eliminate redundancy and maintain data integrity.

---

## 🔁 Normalization Process

### 1. **First Normal Form (1NF)**
**Rule**:  
- Each table has a primary key.  
- All attributes contain only atomic (indivisible) values.  
- No repeating groups or arrays.

✅ **Satisfied**:  
All attributes in `User`, `Property`, `Booking`, `Payment`, `Review`, and `Message` tables hold atomic values and have primary keys.

---

### 2. **Second Normal Form (2NF)**
**Rule**:  
- Meet all requirements of 1NF.  
- All non-key attributes must depend on the entire primary key (for composite keys).  
- No partial dependencies allowed.

✅ **Satisfied**:  
- All tables use a single-attribute primary key (`UUID`), so partial dependency is not a concern.  
- Each non-key attribute depends entirely on the primary key in its table.

---

### 3. **Third Normal Form (3NF)**
**Rule**:  
- Meet all requirements of 2NF.  
- No transitive dependencies (non-key attributes depending on other non-key attributes).

✅ **Verified for All Tables**:

#### **User**
- Each attribute (e.g., `email`, `role`, etc.) depends directly on `user_id`.

#### **Property**
- `host_id` references `User.user_id`.
- All other fields describe the property directly.

#### **Booking**
- `user_id` and `property_id` are foreign keys.  
- Other fields depend directly on `booking_id`.

#### **Payment**
- `booking_id` is a foreign key.
- `amount`, `payment_method`, `payment_date` depend only on `payment_id`.

#### **Review**
- No derived columns.
- All fields relate directly to `review_id`.

#### **Message**
- `sender_id`, `recipient_id` reference `User`.
- Message content is tied to the `message_id`.

---

## ✅ Summary

| Entity     | 1NF | 2NF | 3NF |
|------------|-----|-----|-----|
| User       | ✅  | ✅  | ✅  |
| Property   | ✅  | ✅  | ✅  |
| Booking    | ✅  | ✅  | ✅  |
| Payment    | ✅  | ✅  | ✅  |
| Review     | ✅  | ✅  | ✅  |
| Message    | ✅  | ✅  | ✅  |

> **Conclusion**: The Airbnb database schema is already normalized to 3NF.
